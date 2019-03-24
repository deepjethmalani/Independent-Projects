using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class PurchaseComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            purchasecompleteh2.InnerText = "CONGRATULATIONS " + Session["UserName"].ToString().ToUpper() + "! YOU HAVE SUCCESSFULLY COMPLETED YOUR PURCHASE.";
            //purchasecompleteh2.InnerText = "CONGRATULATIONS YOU HAVE SUCCESSFULLY BOOKED YOUR TICKET.";

        }
        protected void homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SunTranCustomer.aspx");
        }       
    }
}