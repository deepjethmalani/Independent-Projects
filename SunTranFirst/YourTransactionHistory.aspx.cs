using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class YourTransactionHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            transactionhistorycustomer.Text = "Here is your transaction history, " + Session["UserName"].ToString() + ".";
            populatetickettransactions();
            populatecardtransactions();
        }
        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SunTranCustomer.aspx");
        }
        protected void TicketTransactionsGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            tickettransactionsgrid.PageIndex = e.NewPageIndex;
            tickettransactionsgrid.DataBind();
        }
        protected void CardTransactionsGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            cardtransactionsgrid.PageIndex = e.NewPageIndex;
            cardtransactionsgrid.DataBind();
        }

        public void populatetickettransactions() {

            string custid = Session["CustomerID"].ToString();
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            //            OracleCommand cmd = new OracleCommand(@"select tickettype, fareamount, issuedate, validtill,
            //qty from tickets where custid='"+ custid + "'", con);
            //OracleCommand cmd = new OracleCommand(@"select tickettype, fareamount, issuedate, validtill, qty from tickets where custid='C00001'", con);
 OracleCommand cmd = new OracleCommand(@"select tripid, tickettype, fareamount, issuedate, qty from tickets where custid='"+custid+"' ORDER BY issuedate desc", con);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                tickettransactionsgrid.DataSource = dt;

                tickettransactionsgrid.DataBind();


            }
            else { noticketdataid.Text = "You don't have any ticket transactions at the moment"; }

           

            con.Close();
        }
        public void populatecardtransactions() {
            string custid = Session["CustomerID"].ToString();
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            //            OracleCommand cmd = new OracleCommand(@"select tickettype, fareamount, issuedate, validtill,
            //qty from tickets where custid='"+ custid + "'", con);
            //            OracleCommand cmd = new OracleCommand(@"
            //select cardtype, fareamount, issuedate, validtill from cards where custid='C00002'", con);
            OracleCommand cmd = new OracleCommand(@"
select tripid, cardtype, fareamount, issuedate, validtill from cards where custid='"+custid+"' ORDER BY tripid", con);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                cardtransactionsgrid.DataSource = dt;
                cardtransactionsgrid.DataBind();


            }
            else { nocarddataid.Text = "You don't have any card transactions at the moment"; }

            con.Close();
        }

    }
}