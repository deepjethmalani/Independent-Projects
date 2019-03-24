<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SunTranFirst._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
          <h6 style="font-family:Roboto;margin-left:-4%; height:53px;font-weight:bold;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Welcome to<img alt="SunTran"  style="Height:110%; Width:15%;" src="/Photos/SunTranLogo.png" /></span></h6>
        <br />
        <h2 style="font-family:Roboto;font-size:large; margin-left:35%;">Click on the bus to view your actions</h2>
       
        <br />
 <script lang="javascript"
            type='text/javascript'>
     function showdiv() {
         if (document.getElementById) {
             document.getElementById('logindiv').style.visibility = 'visible';
         }
     }

//     $("suntranbtnimage").click(function(){
//    $("div").animate({opacity: '0.5','});
//});
        </script> 
        <asp:ImageButton style="margin-left:43%;" ID="suntranbtnimage" AlternateText="SunTran Bus" runat="server" ImageUrl="~/Photos/about_fleet_3100.png"  OnClientClick="javascript:showdiv();return false;" Height="50px" Width="106px"  />   
           
       <br />
        <br /> 

    <div id="logindiv" style="margin-left:380px;visibility:hidden;">
         <h2 id="areyou" style="font-family:Roboto;font-size:large; margin-left:-1%;">Are you a customer or an employee?</h2>
       
        <%--<asp:Login ID="Login1" runat="server"></asp:Login>--%>
           <asp:ImageButton  OnClick="Customer_Click" AlternateText="Customer" style="margin-left:-3%;height:40%;width:21%;" ID="Customer" runat="server" ImageUrl="~/Photos/Customer.png"   />   
           <asp:ImageButton  OnClick="Employee_Click"  AlternateText="Employee" style="margin-left:3%;height:42.5%;width:22.5%;" ID="Employee" runat="server" ImageUrl="~/Photos/Employee.png"  />   
           
          
    </div>
        
                &nbsp;</div>

    <br />
    <br />
    <br />

     <div class="row">
        <div class="col-md-4">
        
                </div></div>
    <%--<div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

</asp:Content>
