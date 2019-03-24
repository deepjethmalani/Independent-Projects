<%@ Page   Title="Your Transaction History"   MasterPageFile="~/Site.Master"  Language="C#" AutoEventWireup="true" CodeBehind="YourTransactionHistory.aspx.cs" Inherits="SunTranFirst.YourTransactionHistory" %>
 
<asp:Content ID="TransactionHistoryContentID" ContentPlaceHolderID="TransactionHistoryContent" runat="server">

    <div class="jumbotron">
          
        <h6 style="font-family:Roboto; height: 53px;margin-left:40%;" >   <img alt="SunTran"  style="Height:110%; Width:24%;" src="/Photos/SunTranLogo.png" /> </h6> 
    
  <asp:ImageButton style = "margin-left:45%;"  AlternateText="Go Back" ID = "backarrowbtn"  OnClick ="backarrowbtn_Click" runat = "server" ImageUrl = "/Photos/Back.png"  Height="12%" Width="5%"/><br />
        <asp:Label ID="transactionhistorycustomer" runat="server"  style="font-family:Roboto;font-size:large; font-weight:bold;margin-left:34%; color: #000000;"></asp:Label>
       
         
              <h1 style="font-family:Roboto;font-size:large;margin-left:16%;width:100%;">CARD TRANSACTIONS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TICKET TRANSACTIONS</h1>
     <asp:Label runat="server" style="font-family:Roboto;font-size:large;font-weight:bold;margin-left:5%;" id="nocarddataid"></asp:Label>
        <asp:GridView  OnPageIndexChanging="CardTransactionsGrid_PageIndexChanging"   HeaderStyle-BackColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="10px" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="True" EditRowStyle-BackColor="Gray"  AllowPaging="True" AllowSorting="True"    BackColor="White" ForeColor="Black" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="10px"   PageSize="3" Width="550px"   RowStyle-Height="35px"  GridLines="None"  style="float:left;margin-left:-3%;Font-family:Roboto" ID="cardtransactionsgrid" runat="server"></asp:GridView> 
  
<asp:GridView  OnPageIndexChanging="TicketTransactionsGrid_PageIndexChanging"  HeaderStyle-BackColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="10px" HeaderStyle-Font-Bold="True"  HeaderStyle-ForeColor="White" EditRowStyle-BackColor="Gray"  AllowPaging="True" AllowSorting="True"    BackColor="White" ForeColor="Black" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="10px"   PageSize="3" Width="520px"   RowStyle-Height="35px" GridLines="None"   style="float:right;Font-family:Roboto" ID="tickettransactionsgrid" runat="server"></asp:GridView> 
   
        <asp:Label runat="server" style="font-family:Roboto;font-size:large;font-weight:bold;margin-left:53%;" id="noticketdataid"></asp:Label>
        <br /><br />

 
</div>
   
   
     </asp:Content>