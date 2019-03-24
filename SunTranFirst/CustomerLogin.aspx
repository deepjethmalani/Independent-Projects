<%@ Page Title="Customer Login" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CustomerLogin.aspx.cs" Inherits="SunTranFirst.CustomerLogin" %>
   
 

<asp:Content EnableViewState="true" ID="CustomerLoginContent" ContentPlaceHolderID="CustomerLoginContent" runat="server">
 <script type="text/javascript">

    $(document).keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });

</script>
    <div id="jumbo" runat="server" class="jumbotron">
          
         <h6 runat="server" style="font-family:Calibri; height:53px; margin-left:40%;" >   <img alt="SunTran"  style="Height:110%; Width:24%;" src="/Photos/SunTranLogo.png" /> </h6>
       <asp:ImageButton style = "margin-left:45%;" ID = "backarrowbtn"   AlternateText="Go Back" OnClick ="backarrowbtn_Click" runat = "server" ImageUrl = "/Photos/Back.png"  Height="13%" Width="5%"/>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
         
      <%--      
        <asp:Label  ID="guestuserlbl" runat="server" Text="Guest User? Click here to register" ForeColor="Black">
        
        </asp:Label>--%>
   
          <%-- <asp:HyperLink ID="register" runat="server" Text="here"/>--%>
        <%--   <div style="margin-left:729px; width: 489px; height: 248px; margin-top: 0px; margin-bottom: 0px;">--%>
      <br /> 
        <asp:Login  style="margin-left:27%;display:inline-table;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" 
            ID="existinguser" runat="server" Height="237px" OnAuthenticate="Login1_Authenticate" Width="450px" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
         <InstructionTextStyle runat="server" Font-Italic="True" ForeColor="Black" />
         <LayoutTemplate runat="server">
             <table runat="server"  style="border-collapse:collapse;">
                 <tr>
                     <td>
                         <table runat="server" style="height:214px;width:441px;padding:0">
                             <tr>
                               <%--  <td runat="server" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:large;" align="center" colspan="2">Please enter your username and password to login<br /><br /> 
                                     <asp:SqlDataSource ID="ds1" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:SunTran %>" 
                                         ProviderName="<%$ ConnectionStrings:SunTran.ProviderName %>"
                                         SelectCommand="SELECT EC_NAME, EC_PASSWORD FROM EXISTINGCUSTOMERS" OnSelecting="ds1_Selecting"></asp:SqlDataSource>
                                     
                                 </td>--%>
                                
                             </tr>
                             <tr align="center"  > 
                                 <td runat="server" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;" class="auto-style2"><strong>Username</strong>: </td>
                                 <td   class="auto-style2">
                                     
                                     <asp:TextBox runat="server" ID="UserName" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;"  Height="30px" Width="218px"
                                        OnTextChanged="UserName_TextChanged"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr align="center"  >
                                 <td style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;" align="center">
                                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                 </td>
                                 <td >
                                     <asp:TextBox ID="Password" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;"  runat="server" TextMode="Password" Height="30px" Width="218px"   OnTextChanged="Password_TextChanged"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td  align="center" colspan="2">
                                     <asp:CheckBox  ID="RememberMe" runat="server" Text="Remember me next time." />
                                 </td>
                             </tr>
                             <tr>
                                 <td style="text-align:center" colspan="2" >
                                     <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                 </td>
                             </tr>
                             <tr>
                                 <td style="text-align:center" colspan="2">
                                     <asp:Button OnClientClick="Submit"  BackColor="#ffffff" ID="LoginButton" runat="server" CommandName="Login" Height="40px" Text="LOGIN" ValidationGroup="Login1" Width="118px" OnClick="LoginButton_Click" />
                                 </td>
                             </tr>
                         </table>
                     </td>
                 </tr>
             </table>
         </LayoutTemplate>
         <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
         <TextBoxStyle Font-Size="0.8em" />
         <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
     </asp:Login> 
 <br />
       
     <asp:Label style="margin-left:41.5%;" runat="server" Text="Guest User? Click "></asp:Label><asp:HyperLink ID="HyperLink1" runat="server">here</asp:HyperLink>
    
        
    
    

         <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ds1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns>
                 <asp:BoundField DataField="EC_NAME" HeaderText="EC_NAME" SortExpression="EC_NAME" />
                 <asp:BoundField DataField="EC_PASSWORD" HeaderText="EC_PASSWORD" SortExpression="EC_PASSWORD" />
             </Columns>
         </asp:GridView>--%>
    
        
    
 

         <br />
         
 

    </div>
    
</asp:Content>
 