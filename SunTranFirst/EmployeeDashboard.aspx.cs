using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {

        protected void salesreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalesReport");
        }
        
        protected void erouteinfoid_Click(object sender, EventArgs e)
        {
            Response.Redirect("ERouteInformation");
        }
        
        protected void custempdashboardid_Click(object sender, EventArgs e)
        {
            Response.Redirect("ECustomerInformation");
        }
        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}