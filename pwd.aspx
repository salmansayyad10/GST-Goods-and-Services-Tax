<%@ page language="C#" autoeventwireup="true" inherits="pwd, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title>Goods & Services Tax (GST) | Password</title>
<!--#include file="head2.inc"-->

<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home.aspx">Home</a></li>
          <li><a href="settings.aspx">Settings</a></li>
          <li><a href="pwd.aspx">Password</a></li>
         
        </ul>
        <h2>Password</h2>
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
   <b>Password</b>  
  <u style=text-transform:capitalize;"><asp:Label ID="Label2" runat="server"></asp:Label></u>
          
      <div id="message" class="alert-info">   <asp:Label ID="Label1" runat="server"></asp:Label></div>
         
         <div class="form-group">
        <asp:TextBox ID="t1" type="password" runat="server" class="form-control" placeholder="Password" pattern="{5,15}" required="" title="Enter Your Password" oninvalid="this.setCustomValidity('Please Enter Valid Password')"></asp:TextBox>
       <div class="validate"></div>
            </div>
    <div class="form-group">
        <asp:TextBox ID="t2" runat="server" type="password" class="form-control" placeholder="New Password" pattern="{5,15}" required="" title="Enter Your New Password" oninvalid="this.setCustomValidity('Please Enter Valid New Password')"></asp:TextBox>
<div class="validate"></div>
            </div>



<div class="form-group">
        <asp:TextBox ID="t3" type="password" runat="server" class="form-control" placeholder="Retype New Password" pattern="{5,15}" required="" title="Enter Your Password" oninvalid="this.setCustomValidity('Please Enter Valid Password')"></asp:TextBox>
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

</html>
