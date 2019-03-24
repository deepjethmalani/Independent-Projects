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
    public partial class BookCardOrTicket : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                ticketdiv.Visible = false;
                durationddn.Visible = false;
                buynow.Visible = false;
                categoryddn.Visible = false;
                categlbl.Visible = false;
            }
            if (IsPostBack)
            {
                durationddn.Visible = true;

            }
            //categorydropdwn();

             
        }
    
        protected void backarrowbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SunTranCustomer.aspx");
        }

        public string ticketfareamount;
        public string cardfareamount;



        protected void durationddn_SelectedIndexChanged(object sender, EventArgs e)
        {

            string duration = durationddn.SelectedItem.Text;
            Session["Duration"] = duration.ToString();
            if (Session["Cardorticket"].ToString() == "Card")
            {
                if (duration == "1-Day") { cardfareamount = "10"; }
                else if (duration == "3-Day") { cardfareamount = "15"; }
                else if (duration == "30-Day") { cardfareamount = "50"; }
                else if (duration == "90-Day") { cardfareamount = "130"; }
                stdfareamount.Text = "YOUR STANDARD FARE AMOUNT: $" + cardfareamount;
                //finalamountid.Text = "YOUR FINAL AMOUNT: $" + cardfareamount.ToString();
                ticketdiv.Visible = false;

                OracleConnection con = new OracleConnection();
                con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

                con.Open();
                OracleCommand cmd = new OracleCommand(@"SELECT CATEGORYNAME FROM CATEGORY", con);

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                // SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                categoryddn.DataSource = dt;
                categoryddn.DataTextField = "CATEGORYNAME";

                categoryddn.DataBind();

                con.Close();
                categoryddn.Items.Insert(0, new ListItem("Choose Category", "0"));

                if (IsPostBack)
                {
                    categoryddn.SelectedIndex = 0;
                    categoryddn.Visible = true;
                    categlbl.Visible = true;
                    stdfareamount.Visible = true;
                    finalamountid.Visible = false;
                    buynow.Visible = false;
                }
                Session["cardfareamount"] = cardfareamount;
            }
            else if (Session["Cardorticket"].ToString() == "Ticket")
            {
                if (duration == "1-Day") { ticketfareamount = "8"; }
                else if (duration == "3-Day") { ticketfareamount = "13"; }
                else if (duration == "30-Day") { ticketfareamount = "35"; }
                else if (duration == "90-Day") { ticketfareamount = "90"; }
                stdfareamount.Text = "YOUR STANDARD FARE AMOUNT: $" + ticketfareamount;
                if (IsPostBack)
                {
                    ticketdiv.Visible = true;
                    categoryddn.Visible = false;
                    categlbl.Visible = false;
                    stdfareamount.Visible = true;
                    finalamountid.Visible = false;
                    buynow.Visible = false;
                }
            }

            else if (durationddn.SelectedIndex == 0)
            {
                ticketdiv.Visible = false;
                categoryddn.Visible = false;
                categlbl.Visible = false;
                stdfareamount.Visible = false;
                finalamountid.Visible = false;
                buynow.Visible = false;
            }
            Session["ticketfareamount"] = ticketfareamount;

        }
        protected void cardorticketddn_SelectedIndexChanged(object sender, EventArgs e)
        {

            string cardorticket = cardorticketddn.SelectedItem.Text;
            Session["Cardorticket"] = cardorticket.ToString();
            if (cardorticket == "Card")
            {
                if (IsPostBack == true)
                {
                    durationddn.Visible = true;
                    durationddn.SelectedIndex = 0;
                    stdfareamount.Visible = false;
                    ticketdiv.Visible = false;
                    finalamountid.Visible = false;
                    buynow.Visible = false;


                }
                stdfareamount.Text = "";
            }
            else if (cardorticket == "Ticket")
            {
                durationddn.Visible = true;
                if (IsPostBack == true)
                {
                    durationddn.Visible = true;
                    durationddn.SelectedIndex = 0;
                    stdfareamount.Visible = false;
                    ticketdiv.Visible = false;
                    finalamountid.Visible = false;
                    buynow.Visible = false;
                    categlbl.Visible = false;
                    categoryddn.Visible = false;
                    //ticketdiv.Visible = false;
                }
                stdfareamount.Text = "";
            }
            else if (cardorticketddn.SelectedIndex == 0)
            {
                ticketdiv.Visible = false;
                categoryddn.Visible = false;
                categlbl.Visible = false;
                stdfareamount.Visible = false;
                finalamountid.Visible = false;
                buynow.Visible = false;
                durationddn.Visible = false;
            }


        }


        public void checkcardflag()
        {
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            OracleCommand cmd = new OracleCommand(@"SELECT Flag FROM Customers where CUSTID='" + Session["CustomerID"].ToString() + "'", con);
            string flag;
            OracleDataReader cmdreader = cmd.ExecuteReader();
            while (cmdreader.Read())
            {
                flag = cmdreader.GetString(0);
                Session["Flag"] = flag;
            }
            con.Close();

        }

        protected void buynow_Click(object sender, ImageClickEventArgs e)
        {


            if (Session["Cardorticket"].ToString() == "Ticket")
            {
                string insertcardorticket = Session["Cardorticket"].ToString();
                string insertduration = Session["Duration"].ToString();
                string insertticketamount = Session["TicketFinalAmount"].ToString();
                string insertcustid = Session["CustomerID"].ToString();
                int insertquantity = Convert.ToInt32(Session["FinalTicketQuantity"]);
                OracleConnection con = new OracleConnection();
                con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

                con.Open();
                OracleCommand cmd = new OracleCommand(@" 

            INSERT INTO TICKETS VALUES('','" + insertduration + "'," + insertticketamount + ",'" + insertcustid + "','',''," + insertquantity + ")", con);
                //OracleDataAdapter da = new OracleDataAdapter(cmd);

                OracleCommand cmdcommit = new OracleCommand(@"commit;", con);

                //OracleDataAdapter dacommit = new OracleDataAdapter(cmdcommit);

                int rowsUpdated = cmd.ExecuteNonQuery();
                if (rowsUpdated != 0) { Response.Redirect("PurchaseComplete"); }


                con.Close();
                //email
                //MailMessage mailMessage = new MailMessage();
                //mailMessage.From = new MailAddress(@"youremail@SunTran.com");

                //SmtpClient smtp = new SmtpClient();
                ////mailMessage.To.Add("deep.jethmalani@capgemini.com , sunil.kuperkar@capgemini.com, ayush.srivastava@capgemini.com, niranjan.shenoy@capgemini.com, praveen.pamu@capgemini.com, priyanka.sargar@capgemini.com, sagar.nachare@capgemini.com");
                ////mailMessage.To.Add("deep.jethmalani@capgemini.com");
                //mailMessage.To.Add("deepjethmalani@email.arizona.com");
                //smtp.Host = "smtp.gmail.com";
                ////"smtp.mail.yahoo.com";
                ////int portNumber = 587;
                //smtp.Port = 587;
                //mailMessage.IsBodyHtml = true;
                //mailMessage.Subject = "SunTran - Your ticket";

                //mailMessage.Body = "Hello, I'm just writing this to say Hi!";

                //NetworkCredential netCred = new NetworkCredential("deepjethmalani@gmail.com", "");

                ////SmtpClient client = new SmtpClient();
                //SmtpClient smtpobj = new SmtpClient("smtp.live.com", 587);
                //smtpobj.EnableSsl = true;
                //smtpobj.Credentials = netCred;
                //smtpobj.Send(mailMessage);
                ////client.Credentials = new System.Net.NetworkCredential("deepjethmalani@gmail.com", " ");
                ////client.Port = 587;
                ////client.Host = "smtp.gmail.com";
                ////client.EnableSsl = true;

                ////client.Send(mailMessage);





                //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

                //smtp.Send(mailMessage);








                //string smtpAddress = "smtp.mail.yahoo.com";
                //int portNumber = 587;
                //bool enableSSL = true;

                //string emailFrom = "youremail@SunTran.com";
                //string password = "abcdefg";
                //string emailTo = "deepjethmalani@email.arizona.com";
                //string subject = "Hello";
                //string body = "Hello, I'm just writing this to say Hi!";

                //using (MailMessage mail = new MailMessage())
                //{
                //    mail.From = new MailAddress(emailFrom);
                //    mail.To.Add(emailTo);
                //    mail.Subject = subject;
                //    mail.Body = body;
                //    mail.IsBodyHtml = true;
                //    // Can set to false, if you are sending pure text.


                //    using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                //    { 
                //        smtp.EnableSsl = enableSSL;
                //        smtp.Send(mail);
                //    }
                //}


            }

            else if (Session["Cardorticket"].ToString() == "Card")
            {
                checkcardflag();
                if (Session["Flag"].ToString() == "0")
                {
                    string insertcardorticket = Session["Cardorticket"].ToString();
                    string insertduration = Session["Duration"].ToString();
                    string insertcardamount = Session["CardFinalAmount"].ToString();
                    string insertcategoryid = Session["CategoryID"].ToString();
                    string insertcustid = Session["CustomerID"].ToString();
                    string insertflag = Session["Flag"].ToString();
                    string insertchangedflag = "1";
                    OracleConnection con = new OracleConnection();
                    con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

                    con.Open();
                    OracleCommand cmd = new OracleCommand(@" 
INSERT INTO Cards
VALUES('','" + insertduration + "'," + insertcardamount + ",'" + insertcategoryid + "','" + insertcustid + "','','')", con);
                    //OracleDataAdapter da = new OracleDataAdapter(cmd);

                    OracleCommand cmdcommit = new OracleCommand(@"commit;", con);

                    OracleCommand cmdinsertflag = new OracleCommand(@"Update customers set flag=" + insertchangedflag + " where custid='" + insertcustid + "'", con);
                    //OracleDataAdapter da = new OracleDataAdapter(cmd);

                    //OracleDataAdapter dacommit = new OracleDataAdapter(cmdcommit);
                    int insertflagrowsupdated = cmdinsertflag.ExecuteNonQuery();
                    int rowsUpdated = cmd.ExecuteNonQuery();
                    if (rowsUpdated != 0 && insertflagrowsupdated != 0)
                    {
                        Response.Redirect("PurchaseComplete");
                    }


                    con.Close();
                }
                else if (Session["Flag"].ToString() == "1") { Response.Redirect("PurchaseUnsuccessful"); }

            }
        }
        protected void qtyddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            finalamountid.Visible = true;
            buynow.Visible = true;
            calculatefareticket();


        }
        //public void calculatefarecard()
        //{
        //     if (Session["Cardorticket"].ToString() == "Card")
        //    {
        //        stdfareamount.Text = "YOUR FINAL AMOUNT WITH DISCOUNT: $" + cardfareamount;
        //        Session["CardFinalAmount"] = cardfareamount;
        //        //finalamountid.Text = "YOUR FINAL AMOUNT: $" + Session["cardfareamount"].ToString();
        //    }

        //}
        public void calculatefareticket()
        {
            if (Session["Cardorticket"].ToString() == "Ticket")
            {
                if (IsPostBack)
                {
                    int selectedqty = Convert.ToInt32(qtyddl.SelectedItem.Text);
                    int ticketfinalamount = Convert.ToInt32(Session["ticketfareamount"]) * selectedqty;
                    finalamountid.Text = "YOUR FINAL AMOUNT FOR " + selectedqty.ToString() + " TICKET(s):     $" + ticketfinalamount.ToString();
                    buynow.Visible = true;
                    Session["TicketFinalAmount"] = ticketfinalamount;
                    Session["FinalTicketQuantity"] = selectedqty;
                }
            }
            //else if (Session["Cardorticket"].ToString() == "Card")
            //{
            //    stdfareamount.Text = "YOUR STANDARD FARE AMOUNT: $" + cardfareamount;
            //    Session["CardFinalAmount"] = cardfareamount;
            //    //finalamountid.Text = "YOUR FINAL AMOUNT: $" + Session["cardfareamount"].ToString();
            //}



        }
        protected void categoryddn_SelectedIndexChanged(object sender, EventArgs e)
        {

            string category = categoryddn.SelectedItem.Text;
            OracleConnection con = new OracleConnection();
            con.ConnectionString = "Data Source=orcl;User Id=aadbase;Password=GvI.@HYnP;Integrated Security = no;";

            con.Open();
            OracleCommand cmd = new OracleCommand(@"SELECT Discount FROM Category where CategoryNAME='" + category + "'", con);


            OracleCommand catidcmd = new OracleCommand(@"SELECT CategoryID FROM Category where CategoryNAME='" + category + "'", con);

            //OracleDataAdapter da = new OracleDataAdapter(cmd);
            //OracleDataAdapter catidda = new OracleDataAdapter(catidcmd);
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            double discount;
            string categoryid;
            OracleDataReader cmdreader = cmd.ExecuteReader();
            while (cmdreader.Read())
            {
                discount = cmdreader.GetDouble(0);
                Session["catdiscount"] = discount;
            }
            OracleDataReader catidreader = catidcmd.ExecuteReader();
            while (catidreader.Read())
            {
                categoryid = catidreader.GetString(0);
                Session["CategoryID"] = categoryid;
            }

            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //int discount = Convert.ToInt32(da);
            //Session["Discount"] = discount;
            //DataTable catiddt = new DataTable();
            //catidda.Fill(catiddt);
            //string categoryid = Convert.ToString(catidda);
            //Session["CategoryID"] = categoryid;

            cmdreader.Dispose();
            catidreader.Dispose();
            con.Close();

            int finalcardfare = Convert.ToInt32(Session["cardfareamount"]);
            double finaldiscount = (Convert.ToDouble(Session["catdiscount"]));

            double cardfinalamount = finalcardfare - (finaldiscount * finalcardfare);

            //int cardfinalamount = Convert.ToInt32(Session["cardfareamount"]) - (Convert.ToInt32(Session["Discount"]) * Convert.ToInt32(Session["cardfareamount"]));
            finalamountid.Visible = true;
            finalamountid.Text = "YOUR FINAL AMOUNT W/ DISCOUNT: $" + cardfinalamount.ToString();
            buynow.Visible = true;

            Session["CardFinalAmount"] = cardfinalamount;


            //if (category == "Student")
            //{
            //discountlbl.Text = "Congratulations! Your Discount of " + (discount * 100) + "% will be applied";
            //}
        }
    }

}
 
     
