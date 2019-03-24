<%--<%@ Page Title="Purchase Complete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseComplete.aspx.cs" Inherits="SunTranFirst.PurchaseComplete" %>
 
<asp:Content ID="CustomerLoginContent" ContentPlaceHolderID="CustomerLoginContent" runat="server">

    <div class="jumbotron">
          
        <h6 style="font-family:Roboto; height: 53px;margin-left:40%;" >   <img alt="" src="/Photos/SunTranLogo.png" /> </h6>
     <h2 style="font-family:Roboto;font-size:x-large; margin-left:40%;">
                 </h2>


        </div></asp:Content>--%>

<%@ Page Title="Purchase Complete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseComplete.aspx.cs" Inherits="SunTranFirst.PurchaseComplete" %>
 
<asp:Content ID="PurchaseCompleteID" ContentPlaceHolderID="PurchaseCompleteContent" runat="server">

    <div class="jumbotron">
         
 
        <h6 style="font-family:Roboto; height: 53px;margin-left:40%;" >   <img alt=""  style="Height:110%; Width:24%;" src="/Photos/SunTranLogo.png" />   
            </h6>
       <br /><br />  <asp:Image  style="height:50%; width:20%;font-family:Roboto; margin-left:38%;"  ID="TransactionSuccessfulID" runat="server" ImageUrl="/Photos/TransactionSuccessful.png"/> 
        <br /><br />
        <h2 ID="purchasecompleteh2" runat="server"  style="font-family:Roboto;font-size:x-large; margin-left:4%;font-weight:bold;">
                 </h2><br />   <asp:ImageButton style="margin-left:101%;" ID="homebtn" runat="server" OnClick="homebtn_Click" ImageUrl="~/Photos/HomeButtonFinal.png" Height="9%" Width="4%" />  </div>


         
     
</asp:Content>