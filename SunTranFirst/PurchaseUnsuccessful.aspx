<%@ Page  Title="Sorry! Your Transaction is unsuccessful" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="PurchaseUnsuccessful.aspx.cs" Inherits="SunTranFirst.PurchaseUnsuccessful" %>
 

<asp:Content ID="BookCardorTicketContentID" ContentPlaceHolderID="BookCardorTicketContent" runat="server">

    <div class="jumbotron">
          
        <h1 style="font-family:Roboto; margin-left:40%;" >   <img alt=""   style="Height:110%; Width:24%;" src="/Photos/SunTranLogo.png" /> </h1>
    <br /><br />
        <img style="height:40%; width:20%;margin-left:38.5%;" alt="" src="/Photos/SadCatF.png" /> 
        
        <h2 style="font-family:Roboto;font-size:x-large;color:red; margin-left:10%;">
         Unfortunately, you already own one card and are unable to buy another at this point.
     
     </h2><br /><br /><br /> 
        <asp:ImageButton style="margin-left:101%;" ID="homebtn" runat="server" OnClick="homebtn_Click" ImageUrl="~/Photos/HomeButtonFinal.png" Height="10%" Width="5%" />  </div>

         </asp:Content>