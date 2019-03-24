using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OracleClient; 

namespace SunTranFirst
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
          

        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
             
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";
           
            con.Open();
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";
            //con.Open();
            //TextBox useridt = (TextBox)Container.FindControl("usernametxtbx");
            //    protected global::System.Web.UI.WebControls.TextBox UserName;
            //protected global::System.Web.UI.WebControls.TextBox Password;
            //TextBox UsernameTextbox = Page.FindControl("UserName") as TextBox;
            //TextBox PasswordTextbox = Page.FindControl("Password") as TextBox;
            string userid = ((TextBox)existinguser.FindControl("UserName")).Text;
            string password = ((TextBox)existinguser.FindControl("Password")).Text;
            string customerid;


            //string userid = "A";
            //string password = "00000000";



            //OracleCommand cmd = new OracleCommand(@"SELECT EC_ID, EC_NAME, EC_PASSWORD FROM EXISTINGCUSTOMERS where EC_NAME='" + userid + "' and EC_password='" + password + "'", con);
            OracleCommand cmd = new OracleCommand(@"SELECT CUSTID, FIRSTNAME, PASSWORD FROM CUSTOMERS where FIRSTNAME='" + userid + "' and PASSWORD='" + password + "'", con);



            //SqlCommand cmd = new SqlCommand("SELECT EC_NAME, EC_PASSWORD FROM EXISTINGCUSTOMERS where EC_NAME="
            //    + userid + "'and password='" + password + "'", con);
            OracleDataAdapter da = new OracleDataAdapter(cmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            OracleDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                customerid = reader.GetString(0);
                HttpContext.Current.Session["CustomerID"] = customerid;
            }

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                HttpContext.Current.Session["UserName"] = userid;
           
                Response.Redirect("SunTranCustomer.aspx");
                //Session["username"] = userid;
                 

            }
            else
            {

            }
            con.Close();
        }
        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        protected void ds1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}