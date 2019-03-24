<%@ Page   Title="Guest User" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="GuestUser.aspx.cs" Inherits="SunTranFirst.GuestUser" %>
 

<asp:Content ID="GuestUserContentID" ContentPlaceHolderID="GuestUserContentID" runat="server">
 
    <div ID="tab" runat="server" class="jumbotron">

         <h6 ID="headingid" runat="server" style="font-family:Calibri; height: 53px;margin-left:40%;" >   <img alt="" style="Height:100%; Width:12%;" src="/Photos/SunTranLogo.png" /> </h6>
        <br /><br /> 
     <!--   <asp:CreateUserWizard ID="guestuserwizard" runat="server" 
            style="margin-left:30%;font-size:20px;"
         
            BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnCreatedUser="CreateUserWizard1_CreatedUser">
            <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
            <CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            <ContentTemplate >       -->  
    
                        <asp:table ID="aspguestusertable"   runat="server"   style="visibility:visible;margin-left:30%;font-size:20px;">
              <asp:TableRow>            <%--  <tr>--%>
                              <asp:TableCell   align="center" colspan="2" style="height: 22px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-size:large">Sign Up for Your New Account<%--</td>--%>
                            </asp:TableCell>
                             </asp:TableRow>   <%--</tr>--%>
                            
                         <asp:TableRow  >  
                                 
                                  <asp:TableCell align="right">
                                   <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                 </asp:TableCell> 
                               <asp:TableCell >
                                    <asp:TextBox ID="UserName" runat="server" OnTextChanged="UserName_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." >*</asp:RequiredFieldValidator>
                    <%--         ValidationGroup="CreateUserWizard1"--%>
                                </asp:TableCell> 
                               
                             </asp:TableRow>
                           
                           <asp:TableRow >  
                                 <asp:TableCell  align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." >*</asp:RequiredFieldValidator>
                             </asp:TableCell>
                           </asp:TableRow>
                          <asp:TableRow>  
                                <asp:TableCell  align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                              </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."  >*</asp:RequiredFieldValidator>
                             </asp:TableCell>
                             </asp:TableRow>
                             <asp:TableRow>  
                                 <asp:TableCell  align="right">
                                    <asp:Label ID="agelbl" runat="server" AssociatedControlID="Age">Age:</asp:Label>
                              </asp:TableCell>
                                 <asp:TableCell>
                                    <asp:TextBox ID="Age" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AgeRequired" runat="server" ControlToValidate="Age" ErrorMessage="Age is required." ToolTip="Age is required."  >*</asp:RequiredFieldValidator>
                              </asp:TableCell>
                             </asp:TableRow>
                            
                           <asp:TableRow>  
                                 <asp:TableCell ID="emailcell"  align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                              </asp:TableCell>
                                 <asp:TableCell>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server"  ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required."  >*</asp:RequiredFieldValidator>
                              </asp:TableCell>
                             </asp:TableRow>
                          <asp:TableRow>  
                                  <asp:TableCell align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                             </asp:TableCell>
                                 <asp:TableCell>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required."  >*</asp:RequiredFieldValidator>
                            </asp:TableCell>
                             </asp:TableRow>
                        <asp:TableRow>  
                                <asp:TableCell  align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                               </asp:TableCell>
                                 <asp:TableCell>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required."  >*</asp:RequiredFieldValidator>
                              </asp:TableCell>
                            </asp:TableRow>
                         <asp:TableRow>  
                                <asp:TableCell  align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ></asp:CompareValidator>
                                  </asp:TableCell>
                             </asp:TableRow>
                           <asp:TableRow>  
                                 <asp:TableCell  align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                  </asp:TableCell>
                           </asp:TableRow>  
                        </asp:table>     
            
                 <!--      </ContentTemplate>
                </asp:CreateUserWizardStep>
             <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" />
        </asp:CreateUserWizard> --> 
        <br />
      
          <asp:ImageButton  OnClick="GuestUser_Click" style="margin-left:50%;height:40px;width:250px;" ID="Customer" runat="server" ImageUrl="~/Photos/Submit.png"   />   
         
        <br />
         <asp:Label style="margin-left:48%;" ID="lblmessage" runat="server" Text=""></asp:Label>
    </div>
       
    </asp:Content>
<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>
