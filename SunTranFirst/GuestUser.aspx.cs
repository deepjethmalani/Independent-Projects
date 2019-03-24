using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class GuestUser : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Table aspguestusertable;
 

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
//            OracleConnection con = new OracleConnection();
//            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

//            con.Open();
//            string guestusername = ((TextBox)guestuserwizard.FindControl("UserName")).Text;
//            string guestpassword = ((TextBox)guestuserwizard.FindControl("Password")).Text;
//            string guestsecurityquestion = ((TextBox)guestuserwizard.FindControl("Question")).Text;
//            string guestsecurityanswer = ((TextBox)guestuserwizard.FindControl("Answer")).Text;
//            string guestemail = ((TextBox)guestuserwizard.FindControl("Email")).Text;
            
//            OracleCommand cmd = new OracleCommand(@" 

//Insert into ExistingCustomers
//VALUES ('','" + guestusername + "'," + guestpassword + ",'" + guestemail + "','" + guestsecurityquestion + "','"+ guestsecurityanswer + "'", con);
//            int rowsAffected = cmd.ExecuteNonQuery();
//            if (rowsAffected == 1)
//            {
//                lblmessage.Text = "Thank you, " + guestusername + "! Your account has been created.";
//                //Success notification
//            }
//            else
//            {
//                lblmessage.Text = "Please try again later.";
//                //Error notification
//            }
//            con.Close();
        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }
       
       
        protected void GuestUser_Click(object sender, ImageClickEventArgs e)
        {
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";
                       
            con.Open();
            // Table guestusernametable = (Table)aspguestusertable.FindControl("UserName");
            //string guestusername = guestusernametable.ToString();

            // Table tableguestpassword = (Table)aspguestusertable.FindControl("Password");
            // string guestpassword = tableguestpassword.ToString();
            // Table tableguestsecurityquestion = (Table)tab.FindControl("Question");
            // string guestsecurityquestion = tableguestsecurityquestion.ToString();

            // Table tableguestsecurityanswer = (Table)tab.FindControl("Answer");
            // string guestsecurityanswer = tableguestsecurityanswer.ToString();


            // Table tableguestemail = (Table)tab.FindControl("Email");
            // string guestemail = tableguestemail.ToString();

           
            //string guestusername = ((TextBox)aspguestusertable.FindControl("UserName")).Text;
            //string guestpassword = ((TextBox)aspguestusertable.FindControl("Password")).Text;
            //int guestage = Convert.ToInt32((TextBox)aspguestusertable.FindControl("Age"));
            //string guestsecurityquestion = ((TextBox)aspguestusertable.FindControl("Question")).Text;
            //string guestsecurityanswer = ((TextBox)aspguestusertable.FindControl("Answer")).Text;
            //string guestemail = ((TextBox)aspguestusertable.FindControl("Email")).Text;

            //OracleCommand cmd = new OracleCommand(@" 

            ////Insert into ExistingCustomers
            ////VALUES ('','" + guestusername + "'," + guestpassword + ",'" + guestemail + "'," + guestage + ",'" + guestsecurityquestion + "','" + guestsecurityanswer + "'", con);
            //int rowsAffected = cmd.ExecuteNonQuery();
            //if (rowsAffected == 1)
            //{
            //    lblmessage.Text = "Thank you, " + guestusername + "! Your account has been created.";
            //    Success notification
            //}
            //else
            //{
            //    lblmessage.Text = "Please try again later.";
            //    Error notification
            //}
            //con.Close();
        }
    }
}