﻿<%@ Page   Title="Route Information"  MasterPageFile="~/Site.Master"   Language="C#" AutoEventWireup="true" CodeBehind="ERouteInformation.aspx.cs" Inherits="SunTranFirst.ERouteInformation" %>
 
<asp:Content ID="ERouteInformationContentID" ContentPlaceHolderID="ERouteInformationContent" runat="server">

    <div class="jumbotron">
          
        <h6 style="font-family:Roboto; height:40px;margin-left:40%;" >
            
            <img alt="SunTran" src="/Photos/SunTranLogo.png" style="Height:140%; Width:23%;" /> </h6>   <asp:ImageButton style = "margin-left:45%;" ID = "backarrowbtn"  AlternateText="Go Back"  OnClick ="backarrowbtn_Click" runat = "server" ImageUrl = "/Photos/Back.png"  Height="13%" Width="5%"/>

        <br />
      <asp:Label ID="routeinfolbl" runat="server"  style="font-family:Roboto;font-size:medium; font-weight:bolder;margin-left:40%; color: #000000;">ROUTE INFORMATION</asp:Label>
          <br />   <br />
        <asp:GridView ID="routeinformationgridview" runat="server"  AutoGenerateEditButton="True" AutoGenerateDeleteButton="True"  style="Font-family:Roboto;margin-left:-2%;" AllowPaging="True" AllowSorting="True"   GridLines="None"  BorderStyle="None" BorderWidth="10px"   PageSize="6" Width="1100px"   RowStyle-Height="35px"    HeaderStyle-BorderWidth="4px"  EditRowStyle-BackColor="Gray"      BackColor="White" ForeColor="Black" HeaderStyle-BackColor="Black" HeaderStyle-BorderColor="Black"   HeaderStyle-Font-Bold="True"  HeaderStyle-ForeColor="White" BorderColor="#CCCCCC" AutoGenerateColumns="False" DataKeyNames="ROUTEID" DataSourceID="ERouteInfoDS" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="ROUTEID" HeaderText="ROUTEID" ReadOnly="True" SortExpression="ROUTEID" />
                <asp:BoundField DataField="ROUTENAME" HeaderText="ROUTENAME" SortExpression="ROUTENAME" />
                <asp:BoundField DataField="ARRIVAL" HeaderText="ARRIVAL" SortExpression="ARRIVAL" />
                <asp:BoundField DataField="DESTINATION" HeaderText="DESTINATION" SortExpression="DESTINATION" />
                <asp:BoundField DataField="FAREAMOUNT" HeaderText="FAREAMOUNT" SortExpression="FAREAMOUNT" />
            </Columns>

<EditRowStyle BackColor="Gray"></EditRowStyle>

<HeaderStyle BackColor="Black" BorderColor="Black" BorderWidth="4px" Font-Bold="True" ForeColor="White"></HeaderStyle>

<RowStyle Height="35px"></RowStyle>
        </asp:GridView>

         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>

         <asp:SqlDataSource ID="ERouteInfoDS" runat="server" ConnectionString="<%$ ConnectionStrings:SunTran %>" ProviderName="<%$ ConnectionStrings:SunTran.ProviderName %>" SelectCommand="SELECT * FROM &quot;STANDARD_ROUTES&quot;" DeleteCommand="DELETE FROM &quot;STANDARD_ROUTES&quot; WHERE &quot;ROUTEID&quot; = :ROUTEID" InsertCommand="INSERT INTO &quot;STANDARD_ROUTES&quot; (&quot;ROUTEID&quot;, &quot;ROUTENAME&quot;, &quot;ARRIVAL&quot;, &quot;DESTINATION&quot;, &quot;FAREAMOUNT&quot;) VALUES (:ROUTEID, :ROUTENAME, :ARRIVAL, :DESTINATION, :FAREAMOUNT)" UpdateCommand="UPDATE &quot;STANDARD_ROUTES&quot; SET &quot;ROUTENAME&quot; = :ROUTENAME, &quot;ARRIVAL&quot; = :ARRIVAL, &quot;DESTINATION&quot; = :DESTINATION, &quot;FAREAMOUNT&quot; = :FAREAMOUNT WHERE &quot;ROUTEID&quot; = :ROUTEID">
             <DeleteParameters>
                 <asp:Parameter Name="ROUTEID" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="ROUTEID" Type="String" />
                 <asp:Parameter Name="ROUTENAME" Type="String" />
                 <asp:Parameter Name="ARRIVAL" Type="String" />
                 <asp:Parameter Name="DESTINATION" Type="String" />
                 <asp:Parameter Name="FAREAMOUNT" Type="Decimal" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="ROUTENAME" Type="String" />
                 <asp:Parameter Name="ARRIVAL" Type="String" />
                 <asp:Parameter Name="DESTINATION" Type="String" />
                 <asp:Parameter Name="FAREAMOUNT" Type="Decimal" />
                 <asp:Parameter Name="ROUTEID" Type="String" />
             </UpdateParameters>
        </asp:SqlDataSource>

      
  <br /></div></asp:Content>