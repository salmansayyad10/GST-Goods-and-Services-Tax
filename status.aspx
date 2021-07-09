<%@ page language="C#" autoeventwireup="true" inherits="status, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   
   <title>Goods & Services Tax (GST) | Status</title>
<!--#include file="head.inc"-->



  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="status.aspx">Application Status</a></li>
        </ul>
        <h2>Application Status</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
       
       
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->


  
      <section class="section1">
        <div class="container clearfix">
          <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <h4 class="title">My Application</h4>
              <div id="message" class="alert-danger"> <asp:Label id="label1" runat="server"></asp:Label></div>
          
    <form id="form1" class="contact-form" runat="server">

    
            <div class="form-group">
    
    <asp:TextBox ID="username" runat="server"  class="form-control" placeholder="Username/Email ID" type="email" required="" title="Enter Your Email ID" oninvalid="this.setCustomValidity('Please Enter valid email')"></asp:TextBox>
              <div class="validate"></div>
            </div>
    <div class="form-group">
            
    <asp:TextBox ID="sid" runat="server" class="form-control" placeholder="SNO"  type="text"></asp:TextBox>
      <div class="validate"></div>
            </div>
    
            <div class="form-send">    
        <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" onclick="Button1_Click" Text="Submit" />
    
    </div>
          
            

    </form>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-6">
          <h4 class="title">Contact Details</h4>
          <p class="text-justify">Please type  Username/Email ID in the " Username/Email ID" box. Please type  SNO in the " SNO" box.
          Click on "Submit" button.</p>
         <p class="text-justify"> The contents of this website shall not be distributed, modified, transmitted, used, reused, made derivative works of, reported for public or commercial purposes, including, text, images, audio, and video or otherwise, without the prior written permission of GST</p>
          <ul class="contact_details">
            <li><i class="fa fa-envelope-o"></i> gst@gst.com</li>
            <li><i class="fa fa-phone-square"></i> +91 7276736488</li>
            <li><i class="fa fa-home"></i> MIT college, Aurangabad-431003, Maharashtra, India</li>
          </ul>
          <!-- contact_details -->
        </div>


      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
 <!--#include file="footer.inc"-->
</body>
</html>
