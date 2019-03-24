<%@ Page Title="Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SunTranCustomer.aspx.cs" Inherits="SunTranFirst.WebForm1" %>

    <asp:Content ID="CustomerActionsContent" ContentPlaceHolderID="CustomerActionsContent" runat="server">

        <div class="jumbotron" style="color: #FFFFFF">
       <h6 style="font-family:Calibri; height: 53px;margin-left:40%;" >   <img alt=""   style="Height:110%; Width:24%;"  src="/Photos/SunTranLogo.png" /> </h6>
      <br />
        <%--<h2 id="wwyou"  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-size:large; margin-left:35%; color: #000000;"></h2>--%>
       <asp:Label ID="loyaltylvllbl" runat="server"  style="font-family:Roboto;font-size:large; margin-left:39%;font-weight:bold;"></asp:Label>
    
            <br />
   <asp:Label ID="wwyou" runat="server"  style="font-family:Roboto;font-size:large; margin-left:32%; color: #000000;"></asp:Label>
    
        <br />
<%-- <script lang="javascript"
            type='text/javascript'>
     function showdiv() {
         if (document.getElementById) {
             document.getElementById('logindiv').style.visibility = 'visible';
         }
     }
 
        </script> --%>   
      <asp:ImageButton style="margin-left:0%;"   AlternateText="Book Card or Ticket" ID="booktripimg" runat="server" ImageUrl="~/Photos/BookCardOrTicket.png" Height="200px" Width="540px" OnClick="booktripimg_Click"  />   
           
      
        <asp:ImageButton  style="margin-left:0%;"  AlternateText="Your Transaction History" ID="yourtransactionhistoryid" runat="server" ImageUrl="~/Photos/TransactionHistoryFinal.png" Height="200px" Width="270px" OnClick="yourtransactionhistory_Click"  />   
 
        <asp:ImageButton style="margin-left:0%;" ID="faqid"  AlternateText="FAQ" runat="server" OnClick="faq_Click" ImageUrl="~/Photos/FaqFinal.png" Height="200px" Width="250px" />   
  <asp:ImageButton style="margin-left:5%;" ID="routeimgbtn"  AlternateText="Route Information" runat="server" ImageUrl="/Photos/RouteDeets.png" Height="190px" Width="150px" OnClick="routeimgbtn_Click" />   
  
        
 
            <br />
         <br />
         <br />
          <br />
           
         <asp:ImageButton style="margin-left:100%;" ID="backarrow"  AlternateText="Go Back" runat="server" OnClick="backarrow_Click" ImageUrl="~/Photos/Logout.png" Height="50px" Width="50px" />   
 
        <%--<asp:Button style="margin-left:95%;background-color:dodgerblue; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:small;" ID="GoBack" runat="server" Text="BACK" Height="40px" Width="91px" />--%>

  <%--  <div id="logindiv" style="margin-left:380px;visibility:hidden;">
       <%--  <h2 style="font-family:Calibri;font-size:large; margin-left:0%;">Are you a customer or an employee?</h2>
       
        <%--<asp:Login ID="Login1" runat="server"></asp:Login>--%>
           <%--<asp:ImageButton  OnClick="Customer_Click" style="margin-left:-3%;height:40%;width:21%;" ID="Customer" runat="server" ImageUrl="~/Customer.png"   />   
           <asp:ImageButton  OnClick="Customer_Click" style="margin-left:3%;height:42.5%;width:22.5%;" ID="Employee" runat="server" ImageUrl="~/Employee.png"  />   
          
          
    </div>--%>
        
             </div>
 
        </asp:Content>
 