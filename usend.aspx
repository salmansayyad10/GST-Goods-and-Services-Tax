<%@ page language="C#" autoeventwireup="true" inherits="usend, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

  <meta charset="utf-8">
  <title>Goods & Services Tax (GST) | Admin</title>
<!--#include file="head3.inc"-->
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="sourcehpeiSUxdXbHuMIjTvwSg6Y7ACQqgstoqgstgslpsyab30i131j0j0i131j0j0i131j0l2j0i131l2j02136240929000003729030j3j0j101gwswizv3FdqJu8Wwed0ahUKEwjxtsTqjZTkAhWI6Y8KHaC0A5gQ4dUDCAUuact5.aspx">Home</a></li>
          <li><a href="usend.aspx">Message</a></li>
        </ul>
        <h2>Message</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->


    <section class="section1">
    <div class="container clearfix">
                       <div class="col-lg-2 col-md-2 col-sm-12">
         
    </div>                   <div class="col-lg-8 col-md-8 col-sm-12">
              <blockquote>


    <form id="form1" runat="server">
              
  
    
    <h3 style="text-align:center;">Message</h3>
    <div id="Div1" class="alert-danger"> <asp:Label id="Label1" runat="server"></asp:Label></div>
    <br />
    <div class="form-group">
              

      
        <asp:TextBox ID="email" type="email" required="" class="form-control" runat="server" placeholder="User's Email ID"></asp:TextBox>
    
        <asp:TextBox ID="subject" runat="server" required="" class="form-control" pattern="[a-zA-Z]{1,50}" placeholder="Subject"></asp:TextBox>
       
        <asp:TextBox ID="message" TextMode="MultiLine" class="form-control"  placeholder="Your Messge" runat="server" Height="190px"></asp:TextBox>
        <div class="form-group" style="text-align:center;">
      <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" onclick="Button1_Click" Text="Send"  />
      </div>
    </blockquote>
    </form>
    <div class="col-lg-2 col-md-2 col-sm-12">
         
    </div>
      
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
    
 <!--#include file="footer.inc"-->
</body>
</html>