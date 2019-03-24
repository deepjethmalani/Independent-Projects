<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SunTranFirst.WebForm2" %>

<!DOCTYPE html>
 
  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <style type="text/css">
        .auto-style1 {
            height: 41px;
        }
        .auto-style2 {
            height: 40px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
 <div style="color:black" class="loginpgjumbotron">
     <img style="margin-left:5%;height:10%; width:10%;" alt="SunTranLogo"  src="SunTranLogo.png" />
   <hr />
     <asp:Login style="margin-left:35%; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" ID="Login1" runat="server" Height="237px" OnAuthenticate="Login1_Authenticate" Width="450px" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
         <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
         <LayoutTemplate>
             <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                 <tr>
                     <td>
                         <table  style="height:214px;width:441px;padding:0">
                             <tr>
                                 <td  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:large;" align="center" colspan="2">Please enter your username and password to login<br /><br /> </td>
                                
                             </tr>
                             <tr align="center"  > 
                                 <td style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;" class="auto-style2">Username: </td>
                                 <td   class="auto-style2">
                                     <asp:TextBox style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;" ID="UserName" runat="server" Height="30px" Width="218px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr align="center"  >
                                 <td style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;" align="center">
                                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                 </td>
                                 <td >
                                     <asp:TextBox style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:medium;" ID="Password" runat="server" TextMode="Password" Height="30px" Width="218px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td  align="center" colspan="2">
                                     <asp:CheckBox  ID="RememberMe" runat="server" Text="Remember me next time." />
                                 </td>
                             </tr>
                             <tr>
                                 <td style="text-align:center" colspan="2" style="color:Red;">
                                     <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                 </td>
                             </tr>
                             <tr>
                                 <td style="text-align:center" colspan="2">
                                     <asp:Button    BackColor="#ffffff" ID="LoginButton" runat="server" CommandName="Login" Height="40px" Text="LOGIN" ValidationGroup="Login1" Width="118px" />
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
 
   <div class="container body-content">
          
            <footer>
                <p style="text-align:center;font-size:80%;font-family:Calibri;">&copy; <%: DateTime.Now.Year %> - SunTran & All About DBASE</p>
            </footer>
        </div>
 
 </div>
 
    </form>
</body>
 
</html>
    