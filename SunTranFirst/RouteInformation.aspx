<%@ Page Title="Route Information" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RouteInformation.aspx.cs" Inherits="SunTranFirst.RouteInformation" %>
 

<asp:Content ID="RouteInformationContentID" ContentPlaceHolderID="RouteInformationContent" runat="server">

    <div class="jumbotron">
          
        <h6 style="font-family:Calibri; height: 53px;margin-left:42%;" >   <img alt="SunTran"  style="Height:110%; Width:24%;" src="/Photos/SunTranLogo.png" /> </h6>
     <h2 style="font-family:Calibri;font-size:medium; margin-left:39%;"/>
 
         <asp:GridView   EditRowStyle-BackColor="Gray" PageSize="5" Width="1000px"   RowStyle-Height="35px"  GridLines="None" style="Font-family:Roboto;align-items:center;margin-left:-57%;" ID="routeinfogrid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="10px"   DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" ForeColor="Black" DataKeyNames="ROUTE NUMBER">
             <Columns>
                 <asp:BoundField DataField="ROUTE NAME" HeaderText="ROUTE NAME" SortExpression="ROUTE NAME" />
                 <asp:BoundField DataField="ROUTE NUMBER" HeaderText="ROUTE NUMBER" SortExpression="ROUTE NUMBER" ReadOnly="True" />
                 <asp:BoundField DataField="ARRIVAL STOP"  HeaderText="ARRIVAL STOP" SortExpression="ARRIVAL STOP" />
                 <asp:BoundField DataField="DESTINATION STOP" HeaderText="DESTINATION STOP" SortExpression="DESTINATION STOP" />
                 <asp:BoundField DataField="START TIME" HeaderText="START TIME" SortExpression="START TIME" />
                 <asp:BoundField DataField="END TIME" HeaderText="END TIME" SortExpression="END TIME" />
             </Columns>

<EditRowStyle BackColor="Gray"></EditRowStyle>

             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
       <HeaderStyle BorderColor="Black"  BorderWidth="20px" BackColor="Black" BorderStyle="Solid"  Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

<RowStyle Height="50px"   ></RowStyle>

             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SunTran %>" ProviderName="<%$ ConnectionStrings:SunTran.ProviderName %>" SelectCommand="SELECT s.ROUTENAME AS &quot;ROUTE NAME&quot;, r.ROUTENUM AS &quot;ROUTE NUMBER&quot;, s.ARRIVAL AS &quot;ARRIVAL STOP&quot;, s.DESTINATION AS &quot;DESTINATION STOP&quot;, r.STARTTIME AS &quot;START TIME&quot;, r.ENDTIME AS &quot;END TIME&quot; FROM ROUTE_INSTANCES r, STANDARD_ROUTES s WHERE r.ROUTEID = s.ROUTEID ORDER BY &quot;ROUTE NAME&quot;, &quot;ROUTE NUMBER&quot;"></asp:SqlDataSource>
         <br /> 

           <asp:ImageButton style="margin-left:100%;" ID="backarrowbtn"  AlternateText="Go Back" OnClick="backarrowbtn_Click" runat="server" ImageUrl="~/Photos/Back.png" Height="50px" Width="50px" />   
 
         </div>
    </asp:Content>