using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class PurchaseUnsuccessful : System.Web.UI.Page
    {
        protected void homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SunTranCustomer.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}