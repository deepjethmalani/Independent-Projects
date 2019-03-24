using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunTranFirst
{
    public partial class BookTrip : System.Web.UI.Page
    {
        public string selectedroute;

        public int fareamount;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                routedropdown();
            }
            //categorydropdwn();



        }
        //public void categorydropdwn()
        //{
        //    OracleConnection con = new OracleConnection();
        //    con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

        //    con.Open();





        //    OracleCommand cmd = new OracleCommand(@"SELECT Categoryname FROM Category", con);

        //    OracleDataAdapter da = new OracleDataAdapter(cmd);
        //    // SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    categorydropdown.DataSource = dt;
        //    categorydropdown.DataTextField = "Categoryname";

        //    categorydropdown.DataBind();

        //    con.Close();
        //}
        public void routedropdown()
        {
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            OracleCommand cmd = new OracleCommand(@"SELECT ROUTENAME FROM standard_routes", con);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //routenamedropdown.Items.Add(new ListItem("Select Route", ""));
            routenamedropdown.DataSource = dt;
            routenamedropdown.DataTextField = "ROUTENAME";

            routenamedropdown.DataBind();
          


            con.Close();
        }
        protected void qtyddl_SelectedIndexChanged(object sender, EventArgs e)
        {
             
            calculatefareticket();
           

        }
        //protected void categorydropdown_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //string chosencategory = categorydropdown.SelectedItem.Text;
        //    //string chosencategory = categorydropdown.SelectedItem.Text;
        //    OracleConnection con = new OracleConnection();
        //    con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

        //    con.Open();
        //    OracleCommand cmd = new OracleCommand(@"SELECT Discount FROM Category where Category='"+ chosencategory + "'", con);

        //    OracleDataAdapter da = new OracleDataAdapter(cmd);
        //    // SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    int discount = Convert.ToInt32(da);

        //    con.Close();
        //    //if (category == "Student")
        //    //{
        //        //discountlbl.Text = "Congratulations! Your Discount of " + (discount * 100) + "% will be applied";
        //    //}
        //}
        public void calculatefareticket() 

        {
//            string selectedroute = routenamedropdown.SelectedItem.Text;
//            //testlbl.Text = selectedroute;
//            OracleConnection con = new OracleConnection();
//            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

//            con.Open();
//            OracleCommand cmd = new OracleCommand(@"SELECT
//select fareamount from standard_routes where routename='" + selectedroute + "'", con);

//            OracleDataAdapter da = new OracleDataAdapter(cmd);
//            // SqlDataAdapter da = new SqlDataAdapter(cmd);
//            DataTable dt = new DataTable();
//            da.Fill(dt);
//            //routenamedropdown.DataSource = dt;
//            //routenamedropdown.DataTextField = "ROUTENAME";

//            //routenamedropdown.DataBind();
            
            int selectedqty = Convert.ToInt32(qtyddl.SelectedItem.Text);


            //con.Close();


            //string qty = da.ToString();

            int finalamount = Convert.ToInt32(Session["fareamount"])*selectedqty;
            ticketdivfinalamount.Text = "YOUR FINAL AMOUNT: $" + finalamount;
        

        }
        protected void routenamedropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

            //string cardorticket = cardorticketdropdown.SelectedItem.Text;
            //if (cardorticket != "CARD" || cardorticket != "TICKET")
            //{
               
            //}
            //string cardorticketValue = cardorticketdropdown.SelectedItem.Value;

            string selectedroute = routenamedropdown.SelectedItem.Text;
            //testlbl.Text = selectedroute;
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            string cmdstr = @"SELECT fareamount from standard_routes where routename='" + selectedroute + "'";
            ////OracleCommand cmd = new OracleCommand(@"SELECT
            //select fareamount from standard_routes where routename='" + selectedroute + "'", con);
            OracleCommand cmd = new OracleCommand(cmdstr, con);
            //OracleDataAdapter da = new OracleDataAdapter(cmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //routenamedropdown.DataSource = dt;
            //routenamedropdown.DataTextField = "ROUTENAME";

            //routenamedropdown.DataBind();

            //OracleDataReader dr = dbManager.ExecuteDataReader(sqlQuery);
            ////dr.Read();
            ////fareamount = Convert.ToInt32(dr[1].ToString());

             OracleDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                fareamount = reader.GetInt32(0);
            }
            stdfareamount.Text = "YOUR STANDARD FARE AMOUNT: $" + fareamount;
            Session["fareamount"] = fareamount;
            //////fareamount = dr.GetInt32(0);
            //fareamount = Convert.ToInt32(dr["fareamount"]);
            ////fareamount = Convert.ToInt32(cmd.ExecuteScalar());
            //testlbl.Text = fareamount.ToString();
            reader.Dispose();
            cmd.Dispose();
            con.Close();
            //con.Close();
             
        }
        protected void routeenddropdown_SelectedIndexChanged(object sender, EventArgs e) { }
            
        protected void cardorticketdropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
           
           // string cardorticket = cardorticketdropdown.SelectedItem.Text;
            //string cardorticketValue = cardorticketdropdown.SelectedItem.Value;

            //if (cardorticketdropdown.SelectedItem.Equals("Card"))
            //{
            //    carddiv.Visible = true;


            //}
            //else 
            //{ ticketdiv.Visible = true;
               

            //}
        }

        protected void buynow_Click(object sender, ImageClickEventArgs e)
        {
            string selectedroute = durationddid.SelectedItem.Text;
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            OracleCommand cmd = new OracleCommand(@" 

            Insert into Tickets VALUES ('','"+selectedroute+ "',", con);
            OracleDataAdapter da = new OracleDataAdapter(cmd);





            con.Close();
            //MailMessage msg = new MailMessage();
            //msg.From = new MailAddress("SunTran@gmail.com");
            //msg.To.Add(TextBox1.Text);
            //msg.Subject = TextBox2.Text;

            //SmtpClient smt = new SmtpClient();
            //smt.Host = "smtp.gmail.com";
            //System.Net.NetworkCredential ntwd = new NetworkCredential();
            //ntwd.UserName = "nilusilu3@gmail.com"; //Your Email ID  
            //ntwd.Password = ""; // Your Password  
            //smt.UseDefaultCredentials = true;
            //smt.Credentials = ntwd;
            //smt.Port = 587;
            //smt.EnableSsl = true;
            //smt.Send(msg);
            //lbmsg.Text = "Email Sent Successfully";
            //lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
            Response.Redirect("PurchaseComplete");
        }
    }
}