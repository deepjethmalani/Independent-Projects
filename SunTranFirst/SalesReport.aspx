<%@ Page    Title="Sales Report"  MasterPageFile="~/Site.Master"  Language="C#" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="SunTranFirst.SalesReport" %>

<asp:Content ID="TransactionHistoryContentID" ContentPlaceHolderID="TransactionHistoryContent" runat="server">
 
    <div class="jumbotron">
          
        <h6 style="font-family:Roboto; height: 40px;margin-left:40%;" >   <img alt="SunTran" style="Height:140%; Width:23%;"  src="/Photos/SunTranLogo.png" /> </h6>
    <asp:ImageButton style="margin-left:45%;"  AlternateText="Go Back" ID="backarrowid" OnClick="backarrowbtn_Click" runat="server"  ImageUrl="~/Photos/Back.png" Height="50px" Width="50px" />   
 <br />
        <asp:Label ID="salesreportlbl" runat="server"  style="font-family:Roboto;font-size:medium; font-weight:bolder;margin-left:42%; color: #000000;">SALES REPORT</asp:Label>
       <div style="margin-left:40%;">
          <br />

        <asp:GridView ID="salesreportgridview"  runat="server" HeaderStyle-BackColor="Black" HeaderStyle-BorderColor="Black"   HeaderStyle-Font-Bold="True"  HeaderStyle-ForeColor="White" BorderColor="#CCCCCC"  HeaderStyle-BorderWidth="4px"  EditRowStyle-BackColor="Gray"      BackColor="White" ForeColor="Black" BorderStyle="None" BorderWidth="10px"   PageSize="8" Width="1100px"   RowStyle-Height="20px"   GridLines="None" style="Font-family:Roboto;margin-left:-70%;" AllowPaging="True" AllowSorting="True" >
          
         </asp:GridView>
       
           <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
         <%--  <asp:Button ID="btndownload" OnClick="btndownload_Click" runat="server" Text="Button" />--%>
           <br />
           <asp:Chart ID="salesrepchart"  AlternateText="Sales Graph"  style="margin-left:0%;" Height="190px" Width="180px" runat="server" DataSourceID="SalesChartSource">
               <Series>
                   <asp:Series Name="Series1"   XValueMember="Type of Sale" YValueMembers="Actual Sale"></asp:Series>
               </Series>
               <ChartAreas>
                   
                   <asp:ChartArea  Name="ChartArea1">
                      <AxisX Title="Type of Sale"></AxisX>
                       <AxisY Title="Actual Sale"></AxisY>
                   </asp:ChartArea>
               </ChartAreas>   
          
           </asp:Chart>
           <asp:SqlDataSource ID="SalesChartSource" runat="server" ConnectionString="<%$ ConnectionStrings:SunTran %>" ProviderName="<%$ ConnectionStrings:SunTran.ProviderName %>" SelectCommand="SELECT ACTUALSALE AS &quot;Actual Sale&quot;, TYPEOFSALE AS &quot;Type of Sale&quot; FROM CALCULATESALESREPORT"></asp:SqlDataSource>


       
</div>
        </div>   </asp:Content>