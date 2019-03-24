using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void suntranbtnimage_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Customer_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
        protected void Employee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EmployeeDashboard.aspx");
        }
    }
}