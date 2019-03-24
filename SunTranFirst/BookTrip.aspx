<%@ Page Title="BookTrip" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="BookTrip.aspx.cs" Inherits="SunTranFirst.BookTrip" %>
 

<asp:Content ID="CustomerLoginContent" ContentPlaceHolderID="CustomerLoginContent" runat="server">

    <div class="jumbotron">
           
        <h6 style="font-family:Roboto; height: 53px;margin-left:40%;" >   <img alt="" style="Height:100%; Width:12%;" src="/Photos/SunTranLogo.png" /> </h6>
     <h2 style="font-family:Roboto;font-size:large; margin-left:39%;">
                 Book your next trip now!</h2>
        <div style="margin-left:30%;font-family:Roboto;font-size:small;font-weight:bold;">
         
            <asp:Label  style="margin-left:15%;" ID="tickettype" runat="server"  Text="CHOOSE PURCHASE TYPE"></asp:Label>
        <br />  <br />
            <asp:DropDownList  style="margin-left:10%;"  CausesValidation="true"  ID="cardorticketdropdown" runat="server" OnSelectedIndexChanged="cardorticketdropdown_SelectedIndexChanged">
                 <asp:ListItem Text="Select type" Value="" />
                <asp:ListItem Text="Card" Value="1"></asp:ListItem>
               <asp:ListItem Text="Ticket" Value="2"></asp:ListItem>


                       </asp:DropDownList>  <asp:DropDownList  style="margin-left:3%;"  CausesValidation="true"  ID="durationddid" runat="server" OnSelectedIndexChanged="cardorticketdropdown_SelectedIndexChanged">
                 <asp:ListItem Text="Select duration" Value="" />
                <asp:ListItem Text="1-Day" Value="1"></asp:ListItem>
               <asp:ListItem Text="3-Day" Value="2"></asp:ListItem>
  <asp:ListItem Text="30-Day" Value="3"></asp:ListItem>
                            <asp:ListItem Text="90-Day" Value="4"></asp:ListItem>

                       </asp:DropDownList> <%--  <asp:RequiredFieldValidator
             ID="cardorticketdropdownvalidator"
             runat="server"
             ControlToValidate="cardorticketdropdown"
             InitialValue="Select Type"
             ErrorMessage="* Please select type."
             ForeColor="Red"
          
             > </asp:RequiredFieldValidator>--%>
            <br /> <br /> 
             <asp:Label  style="margin-left:17%;" ID="Label1" runat="server"  Text="CHOOSE YOUR ROUTE"></asp:Label>
           <br />  <br />
  <asp:DropDownList   ID="routenamedropdown"   AutoPostBack="true" style="margin-left:16%;" runat="server" OnSelectedIndexChanged="routenamedropdown_SelectedIndexChanged">
             
      <asp:ListItem Text="Select Route" Value="" />
           
                       </asp:DropDownList>  <%--<asp:RequiredFieldValidator
             ID="routenamedropdownvalidator"
             runat="server"
             ControlToValidate="routenamedropdown"
             InitialValue="Select Route"
             ErrorMessage="* Please select a route."
             ForeColor="Red"
          
             > </asp:RequiredFieldValidator>--%>
            <%-- <asp:DropDownList ID="routeenddropdown"  style="margin-left:20%;" runat="server" OnSelectedIndexChanged="routeenddropdown_SelectedIndexChanged">
               
           
                       </asp:DropDownList> --%>
           <%--<asp:Label  style="margin-left:16%;" ID="Label2" runat="server"  Text="CHOOSE YOUR CATEGORY"></asp:Label>
           <br />
  <asp:DropDownList ID="categorydropdown"  style="margin-left:20%;" runat="server"  OnSelectedIndexChanged="categorydropdown_SelectedIndexChanged">
               
           
                       </asp:DropDownList> --%>
           
   <%--<asp:ImageButton  OnClick="Customer_Click" style="margin-left:-3%;height:40%;width:21%;" ID="Customer" runat="server" ImageUrl="~/Photos/ "   />   
   <asp:ImageButton  OnClick="Customer_Click" style="margin-left:3%;height:42.5%;width:22.5%;" ID="Employee" runat="server" ImageUrl="~/Photos/  "  />   
           --%>
             
               <br />  <br />
          </div> <script lang="javascript"
            type='text/javascript'>
     //function showdiv() {
     //    if (document.getElementById) {
     //        document.getElementById('carddiv').style.visibility = 'visible';
     //    }
     //}

//     $("suntranbtnimage").click(function(){
//    $("div").animate({opacity: '0.5','});
//});
        </script>
   <%-- <asp:DropDownList ID="categorydropdown" style="margin-left:100%" runat="server" OnSelectedIndexChanged="categorydropdown_SelectedIndexChanged">
               
           
                       </asp:DropDownList> --%>
        <%--<div id="carddiv" runat="server" style="margin-left:40%;visibility:hidden;font-family:Roboto;font-size:small;font-weight:bold;">
            <asp:Label  style="margin-left:19%;" ID="yourdiscounttext" runat="server"  Text="YOUR DISCOUNT" ></asp:Label> <br />
        <asp:Label  style="margin-left:19%;" ID="discountlbl" runat="server"  ></asp:Label> --%>
<%--              <asp:Label ID="fareamountlbl" runat="server" ></asp:Label>--%>
               

              <%--<asp:Label ID="categorylbl" runat="server" Text="Choose Category: "></asp:Label>--%>
        <%--<asp:DropDownList ID="categorydropdown" runat="server" OnSelectedIndexChanged="categorydropdown_SelectedIndexChanged">
               
           
                       </asp:DropDownList>--%>
         
            
          
<%--    </div>--%>
            <div id="ticketdiv" runat="server" style="font-family:Roboto;font-size:small;font-weight:bold;margin-left:38%;visibility:none;">
       <%--  <asp:Label ID="testlbl" runat="server" Text="test"></asp:Label>
<br /><br />--%>
           <asp:Label style="margin-left:0%;" ID="stdfareamount" runat="server"></asp:Label>
       <br />    <br /> <asp:Label ID="qty" style="margin-left:2%;"  runat="server" Text="How many tickets would you like?"></asp:Label><br /><br />
                <asp:DropDownList ID="qtyddl"  CausesValidation="true" AutoPostBack="true" style="font-family:Roboto;font-size:small;font-weight:bold;margin-left:14%;"  runat="server" OnSelectedIndexChanged="qtyddl_SelectedIndexChanged">
              <asp:ListItem Text="0" Value="" />
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
               <asp:ListItem Text="2" Value="2"></asp:ListItem>
 <asp:ListItem Text="3" Value="3"></asp:ListItem>
 <asp:ListItem Text="4" Value="4"></asp:ListItem>
<asp:ListItem Text="5" Value="5"></asp:ListItem>


                 
                       </asp:DropDownList> <%--  <asp:RequiredFieldValidator
             ID="qtyddlvalidator"
             runat="server"
             ControlToValidate="qtyddl"
             InitialValue="0"
             ErrorMessage="* Please select quantity."
             ForeColor="Red"
          
             >          
                           </asp:RequiredFieldValidator> --%><br />    <br />   </div>
        <div style="margin-left:35%;">   
             <%-- <asp:Label ID="withdiscount" runat="server" Text="Discount = "></asp:Label>--%> 
     <asp:Label ID="ticketdivfinalamount" style="margin-left:9%;font-family:Roboto;font-size:small;font-weight:bold;" runat="server" ></asp:Label>
        
               
             
      
    </div>   <div style="margin-left:29%;align-content:left;">
        <asp:ImageButton  style="margin-left:20%;height:20%;width:15%;" ID="buynow" runat="server" ImageUrl="~/Photos/BuyNow.png" OnClick="buynow_Click"  />   
  <%--<asp:ImageButton style="align-items:left;margin-left:100%;" ID="backarrow" runat="server" ImageUrl="~/Photos/Back.png" Height="50px" Width="50px" />--%>   
 
    
        </div> 
    </div>
   
</asp:Content>