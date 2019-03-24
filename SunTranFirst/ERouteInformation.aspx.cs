using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class ERouteInformation : System.Web.UI.Page
    {
        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDashboard.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}