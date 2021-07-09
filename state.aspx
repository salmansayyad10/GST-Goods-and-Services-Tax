<%@ page language="C#" autoeventwireup="true" inherits="state, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title>Goods & Services Tax (GST) | State</title>
<!--#include file="head2.inc"-->

<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home.aspx">Home</a></li>
          <li><a href="settings.aspx">Settings</a></li>
          <li><a href="state.aspx">State Name</a></li>
         
        </ul>
        <h2>State Name</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
         </div>
    </div>
  </section>
   <section class="section1">
    <div class="container clearfix">
     <div class="content col-lg-2 col-md-2 col-sm-2  col-xs-12 clearfix text-justify">
     </div>

      <div class="content col-lg-8 col-md-8 col-sm-8  col-xs-12 clearfix text-justify">
       
    
        <blockquote>
    
   <form id="form1" class="contact-form" runat="server">  
   <b>State Name :</b>  
  <u style=text-transform:capitalize;"><asp:Label ID="Label2" runat="server"></asp:Label></u>
          
      <div id="message" class="alert-info">   <asp:Label ID="Label1" runat="server"></asp:Label></div>
         

    <div class="form-group">


        


    <asp:DropDownList ID="t2"  runat="server" required="required" class="form-control" title="Select State">
        <asp:ListItem value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
        <asp:ListItem value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
        <asp:ListItem value="Assam">Assam</asp:ListItem>
        <asp:ListItem value="Bihar">Bihar</asp:ListItem>
        <asp:ListItem value="Chhattisgarh">Chhattisgarh</asp:ListItem>
        <asp:ListItem value="Goa">Goa</asp:ListItem>
        <asp:ListItem value="Gujarat">Gujarat</asp:ListItem>
        <asp:ListItem value="Haryana">Haryana</asp:ListItem>
        <asp:ListItem value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
        <asp:ListItem value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
        <asp:ListItem value="Jharkhand">Jharkhand</asp:ListItem>
        <asp:ListItem value="Karnataka">Karnataka</asp:ListItem>
        <asp:ListItem value="Kerala">Kerala</asp:ListItem>
        <asp:ListItem value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
        <asp:ListItem value="Maharashtra">Maharashtra</asp:ListItem>
        <asp:ListItem value="Manipur">Manipur</asp:ListItem>
        <asp:ListItem value="Meghalaya">Meghalaya</asp:ListItem>
        <asp:ListItem value="Mizoram">Mizoram</asp:ListItem>
        <asp:ListItem value="Nagaland">Nagaland</asp:ListItem>
        <asp:ListItem value="Orissa">Orissa</asp:ListItem>
        <asp:ListItem value="Punjab">Punjab</asp:ListItem>
        <asp:ListItem value="Rajasthan">Rajasthan</asp:ListItem>
        <asp:ListItem value="Sikkim">Sikkim</asp:ListItem>
        <asp:ListItem value="Tamil Nadu">Tamil Nadu</asp:ListItem>
        <asp:ListItem value="Tripura">Tripura</asp:ListItem>
        <asp:ListItem value="Union Territories">Union Territories</asp:ListItem>
        <asp:ListItem value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
        <asp:ListItem value="Uttaranchal">Uttaranchal</asp:ListItem>
        <asp:ListItem value="West Bengal">West Bengal</asp:ListItem>

    </asp:DropDownList>




<div class="validate"></div>
            </div>



<div class="form-group">
        <asp:TextBox ID="t3" runat="server" class="form-control" placeholder="Password" pattern="{5,15}" required="" title="Enter Your Password" oninvalid="this.setCustomValidity('Please Enter Valid Password')"></asp:TextBox>
       <div class="validate"></div>
            </div>

       <div class="form-send">  
        <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-large btn-primary" onclick="Button1_Click" /></div>
            </blockquote>
    
    </form>

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->


 <!--#include file="footer.inc"-->
</body>
</html>
