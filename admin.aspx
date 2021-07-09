<%@ page language="C#" autoeventwireup="true" inherits="admin, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

  <meta charset="utf-8">
  <title>Goods & Services Tax (GST) | Admin</title>
<!--#include file="head.inc"-->
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="admin.aspx">Admin</a></li>
        </ul>
        <h2>Admin</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->


    <section class="section1">
    <div class="container clearfix">
         <div class="col-lg-3 col-md-3 col-sm-12">
         </div>
              <div class="col-lg-6 col-md-6 col-sm-12">
              <blockquote>
                          <div id="message" class="alert-danger"> <asp:Label id="label1" runat="server"></asp:Label></div>


    <form id="form1" runat="server">
    <div class="form-group">
    <h3 style="text-align:center;">Admin</h3>
              <div class="input-group">
              

      <span class="input-group-addon"><i class="fa fa-user"></i></span>  
   
    <asp:TextBox ID="username" required="" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
     </div>  </div>

        <div class="form-group">
              <div class="input-group">            
       <span class="input-group-addon"><i class="fa fa-lock"></i></span>
           <asp:TextBox ID="password" required="" class="form-control" runat="server" type="password" placeholder="Password"></asp:TextBox></div></div>
                <div class="form-group" style="text-align:center;">
     <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" Text="Log In" onclick="Button1_Click" />
        </div>

    </form>
    </blockquote>

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
    
 <!--#include file="footer.inc"-->
</body>
</html>