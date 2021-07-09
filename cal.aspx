<%@ page language="C#" autoeventwireup="true" inherits="cal, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title>Goods & Services Tax (GST) | Calculate GST</title>
<!--#include file="head2.inc"-->
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home.aspx">Home</a></li>
          <li><a href="cal.aspx">Pay GST</a></li>
         
        </ul>
        <h2>Calculate GST</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
         </div>
    </div>
  </section>

      <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <h4 class="title">Calculate GST & Pay</h4>
          <div id="message"></div>



    <form id="form1" runat="server">

        <div class="form-group">
        <asp:TextBox ID="name" class="form-control" runat="server" placeholder="Business/Company/Factory/Office Name" pattern="{3,100}" required="" title="Enter Your Business/Company/Factory/Office Name" oninvalid="this.setCustomValidity('Please Enter Business/Company/Factory/Office Name')"></asp:TextBox>
        <div class="validate"></div>
            </div>
            <div class="form-group">
        <asp:DropDownList ID="per" class="form-control" runat="server" placeholder="GST Percentage" required="" title="Select Percentage" oninvalid="this.setCustomValidity('Please Enter Valid Password')">
            <asp:ListItem Value="5">5%</asp:ListItem>
            <asp:ListItem Value="12">12%</asp:ListItem>
            <asp:ListItem Value="18">18%</asp:ListItem>
            <asp:ListItem Value="28">28%</asp:ListItem>
        </asp:DropDownList>
<div class="validate">For Help <a href="mygst1.aspx" target="_blank"><u>Click Here</u></a> OR <a href="http://localhost:1059/gst/img/gst.pdf" target="_blank"><u>Download PDF</u></a></div>
            </div>
   
       <div class="form-group">
        <asp:TextBox ID="amount" class="form-control" runat="server" required=""></asp:TextBox>
<div class="validate"></div>
            </div>
      
<div class="form-send">
        <asp:Button ID="Button1" class="btn btn-large btn-primary" runat="server" onclick="Button1_Click" Text="Calculate" />
         
      
        <asp:Button ID="Button2" class="btn btn-large btn-primary" runat="server" onclick="Button2_Click" Text="Payment" />
 </div>
</form>
 </div>

        <div class="col-lg-6 col-md-6 col-sm-6">
          <h4 class="title">Result</h4>
           <div id="Div1" class="alert-info"> <asp:Label id="label1" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label2" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label3" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label4" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label5" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label6" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label7" runat="server"></asp:Label></div>
          <div id="Div1" class="alert-info"> <asp:Label id="label8" runat="server"></asp:Label></div>
          
          
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
