using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class SalesReport : System.Web.UI.Page
    {
        //protected void btndownload_Click(object sender, EventArgs e)
        //{

        //    Response.Clear();

        //    Response.AddHeader("content-disposition", "attachment; filename = SalesReport2018.xls");

        //    Response.ContentType = "application/vnd.xls";

        //    System.IO.StringWriter stringWrite = new System.IO.StringWriter();

        //  TextWriter htmlWrite =  stringWrite;
        //  Response.Write(htmlWrite.ToString());

        //    Response.End();


        //}
        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDashboard.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
            {

                OracleConnection con = new OracleConnection();
                con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";


                con.Open();
                //OracleCommand cmd = new OracleCommand(@"SELECT TY AS "'TYPE OF SALE'", CARD_CT AS "'QUANTITY SOLD'", CARD_REV AS "'ACTUAL SALES'", monthlysalestarget AS "'TARGET SALES'" FROM SALESTEAM JOIN(select D1.T1 AS TY,sum(fareamount) AS CARD_REV, count(tripid) as CARD_CT     from(select 'Card' T1 from dual)D1, CARDS  group by D1.T1    UNION select D2.T2 As TY, sum(fareamount) AS TICK_REV, SUM(qty) as TICKETS_CT     from(select 'Ticket' T2 from dual)D2, TICKETS     group by D2.T2  UNION     select D1.T3 AS TY, sum(adprice * AD_DURATION)AS AD_REV, count(adid) AS AD_CT    from(select 'Ad' T3 from dual)D1, ADVERTISEMENT     group by D1.T3)Sales_Report ON Sales_Report.TY = salesteam.salestype", con);
                OracleCommand cmd = new OracleCommand(@"Select * from CalculateSalesReport", con);
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                // SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    salesreportgridview.DataSource = dt;

                    salesreportgridview.DataBind();


                }

                con.Close();
            }
        }
    }
 