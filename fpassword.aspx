<%@ page language="C#" autoeventwireup="true" inherits="fpassword, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   
    
   <title>Goods & Services Tax (GST) | Forgot Password</title>
<!--#include file="head.inc"-->
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="fpassword.aspx">Forgot Password</a></li>
        </ul>
        <h2>Forgot Password</h2>
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
          <h4 class="title">Forgot Password</h4>
          <div id="message"> <div id="Div1" class="alert-info"> <asp:Label id="label1" runat="server"></asp:Label></div></div>


          <form id="form1" class="contact-form" runat="server">

               <div class="form-group">
    <asp:TextBox ID="email" runat="server" placeholder="Username/Email ID" class="form-control" required=""></asp:TextBox>
     <div class="validate"></div>
            </div>
                <div class="form-group">
    
        <asp:DropDownList ID="que" runat="server" required="" class="form-control" title="Select One Question">
            <asp:ListItem>In what town was your first job?</asp:ListItem>
            <asp:ListItem>What is your favorite team?</asp:ListItem>
            <asp:ListItem>What is your favorite movie?</asp:ListItem>
            <asp:ListItem>What was the name of the hospital where you were born?</asp:ListItem>
            <asp:ListItem>In what town was your first job?</asp:ListItem>
        </asp:DropDownList>
     <div class="validate"></div>
            </div>

                <div class="form-group">
            <asp:TextBox ID="ans" required="" class="form-control" title="Your Answare" Placeholder="Your Answare"  runat="server"></asp:TextBox>
                      <div class="validate"></div>
            </div>

                      <div class="form-group">
             <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" onclick="Button1_Click" Text="Submit" />
<div class="validate"></div>
            </div>
            
                    
          
        
    
  </div>

        <div class="col-lg-6 col-md-6 col-sm-6">
          <h4 class="title">Privacy Policy</h4>
          <p class="text-justify">GST Portal shall not in any manner be used for any unauthorized activity (ies). The GST Portal shall be used only for purposes as authorised by GST Law/GST portal policy.</p>
          <p class="text-justify">Confidential Information and personally identifiable information of any taxpayer shall not be disclosed. For any unauthorised disclosure which is not attributable to GST, GST shall not be held responsible.</p>
          <p class="text-justify">While using the GST Portal the user shall comply with all applicable laws, provide up to date, and correct and accurate information as may be required. The Services provided on the GST Portal shall be accessed only through the interfaces expressly authorised by GST or on the GST Portal.</p>
          
          
          
          <!-- contact_details -->
        </div>









        
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

