<%@ Page  Title="Employee Dashboard" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="SunTranFirst.EmployeeDashboard" %>
 

<asp:Content ID="CustomerLoginContent" ContentPlaceHolderID="CustomerLoginContent" runat="server">

    <div class="jumbotron">
          
        <h6 style="font-family:Roboto; height: 53px;margin-left:40%;" >   <img alt=""   style="Height:110%; Width:24%;" src="/Photos/SunTranLogo.png" /> </h6>
     <h3 style="font-family:Roboto;font-size:x-large; margin-left:36%;">
           EMPLOYEE DASHBOARD </h3>
      <%--  <h1 style="font-family:Roboto;font-size:large; margin-left:24%;">
            YOU CAN NOW VIEW SALES REPORT & CUSTOMER INFORMATION  </h1>--%>
         

         <asp:ImageButton  AlternateText="Sales Report" style="margin-left:3%;" ID="salesreportid" OnClick="salesreport_Click" runat="server" ImageUrl="~/Photos/SalesReportIcon.png" Height="60%" Width="25%" />   
   <asp:ImageButton  AlternateText="Customer Information" style="margin-left:10%;" OnClick="custempdashboardid_Click" ID="custempdashboardid" runat="server" ImageUrl="~/Photos/CustomerInformationIcon.png" Height="58%" Width="23%" />   
  <asp:ImageButton   AlternateText="Route Information" style="margin-left:10%;" OnClick="erouteinfoid_Click" ID="erouteinfoid" runat="server" ImageUrl="~/Photos/ERouteInfoIcon.png" Height="58%" Width="23%" />   
 <br />
       <h3 style="font-family:Roboto;font-size:medium;font-weight:bold;margin-left:10%;">
           SALES REPORT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; CUSTOMER INFORMATION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ROUTE INFORMATION&nbsp;&nbsp;&nbsp; </h3>
         <%--  <h3 style="font-family:Roboto;font-size:medium;font-weight:bold;"></h3>
           <h3 style="font-family:Roboto;font-size:medium;font-weight:bold;"></h3>--%>
      
          <asp:ImageButton style="margin-left:101.5%;" ID="backarrowid" OnClick="backarrowbtn_Click" runat="server" ImageUrl="~/Photos/Back.png" Height="46px" Width="46px" />   
 

        </div></asp:Content>