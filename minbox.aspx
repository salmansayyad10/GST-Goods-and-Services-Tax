<%@ page language="C#" autoeventwireup="true" inherits="minbox, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    
  <meta charset="utf-8">
  <title>Goods & Services Tax (GST) | Inbox/Message</title>
<!--#include file="head2.inc"-->
    <form id="form1" runat="server">
   <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
       <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="inbox.aspx">Inbox</a></li>
        </ul>
        <h2>Inbox/Message</h2>
      </div>
      </div>
  </section>
  <!-- end post-wrapper-top -->


  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-10 col-md-10 col-sm-12 clearfix text-justify">


    <blockquote>
   
<p><b style="margin-right:25px;">Date :</b><u><asp:Label ID="Label1" runat="server"></asp:Label></u></p>
<p><b style="margin-right:5px;">    Subject : </b><asp:Label ID="Label2" runat="server" ></asp:Label></p>
    <asp:Label ID="Label4" runat="server"></asp:Label>      
      </blockquote>
      
      <blockquote>
      <b> <u>Message : </u></b>
   <p style="margin-left:80px;">  <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </p>
       </blockquote>
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->




    </form>

 <!--#include file="footer.inc"-->
</body>
</html>