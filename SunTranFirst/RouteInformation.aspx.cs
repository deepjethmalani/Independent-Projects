using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class RouteInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void backarrowbtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SunTranCustomer.aspx");
        }

    }
}