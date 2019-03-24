using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
namespace SunTranFirst
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string custid = Session["CustomerID"].ToString();
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open(); OracleCommand cmd = new OracleCommand(@"select loyal_tier from loyalty where custid='"+custid+"'", con);

            //SqlConnection con 
            OracleDataAdapter da = new OracleDataAdapter(cmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            OracleDataReader reader = cmd.ExecuteReader();
            string loyaltier;
            while (reader.Read())
            {
              loyaltier = reader.GetString(0);
                Session["Loyaltier"] = loyaltier;
            }
            if (Session["Loyaltier"] != null)
            {
                if (Session["Loyaltier"].ToString() == "Gold")
                {
                    loyaltylvllbl.Text = "You are a Gold member!";
                    loyaltylvllbl.ForeColor = Color.Gold;
                }
                else if (Session["Loyaltier"].ToString() == "Bronze")
                {
                    loyaltylvllbl.Text = "You are a Bronze member!";
                    loyaltylvllbl.ForeColor = Color.Brown;
                }
                else if (Session["Loyaltier"].ToString() == "Silver")
                {
                    loyaltylvllbl.Text = "You are a Silver member!";
                    loyaltylvllbl.ForeColor = Color.Silver;
                }
                else
                {
                    loyaltylvllbl.Text = "";
                }
            }
            wwyou.Text = "Hello " + Session["UserName"].ToString() + "! What would you like to do today?";
            //wwyou.Text = "Hello   What would you like to do today?";


        }
        protected void yourtransactionhistory_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("YourTransactionHistory");
        }
        
        protected void faq_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://suntran.com/PDF/smart%20card/SunGO%20FAQ%20revised.pdf");
        }  
        
        protected void backarrow_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
        protected void booktripimg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("BookCardorTicket.aspx");
        }

        protected void routeimgbtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RouteInformation.aspx");
        }
    }
}