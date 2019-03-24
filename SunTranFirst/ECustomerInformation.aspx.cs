using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class ECustomerInformation : System.Web.UI.Page
    {
        protected void custinfgw_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int custid = (int)e.Keys["CUSTID"];

            // Delete here the database record for the selected patientID
            DataBind();
            
        }
        //protected void custinfgw_RowDeleting(object sender, GridViewEditEventArgs e)
        //{

        //}
        //protected void custinfgw_RowUpdating(object sender, GridViewEditEventArgs e)
        //{

        //}
        //protected void custinfgw_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    customerinformationgv.EditIndex = e.NewEditIndex;
        //    DataBind();
        //}
        //protected void custinfgw_RowCEdit(object sender, GridViewEditEventArgs e)
        //{
        //    customerinformationgv.EditIndex = -1;
        //    DataBind();
        //}

        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDashboard.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}