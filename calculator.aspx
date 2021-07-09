<%@ page language="C#" autoeventwireup="true" inherits="calculator, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   
   <title>Goods & Services Tax (GST) | Calculate GST</title>
<!--#include file="head.inc"-->
  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="calculator.aspx">Calculate GST</a></li>
        </ul>
        <h2>GST Calculator</h2>
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
          <h4 class="title">Calculate GST</h4>
          <div id="message"></div>




        <form id="form2" class="contact-form" runat="server">

            <div class="form-group">

        <asp:TextBox ID="name" class="form-control" runat="server" placeholder="Name" pattern="{5,50}"  title="Enter Your Name" ></asp:TextBox>
        <div class="validate"></div>
            </div>

             <div class="form-group">
        <asp:TextBox ID="email" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
        <div class="validate"></div>
            </div>
             <div class="form-group">
        <asp:DropDownList ID="per" runat="server" class="form-control" required="" title="GST Percentage">
            <asp:ListItem Value="5">5%</asp:ListItem>
            <asp:ListItem Value="12">12%</asp:ListItem>
            <asp:ListItem Value="18">18%</asp:ListItem>
            <asp:ListItem Value="28">28%</asp:ListItem>
        </asp:DropDownList>

        <div class="validate"></div>
            </div>
             <div class="form-group">
        <asp:TextBox ID="amount" class="form-control" runat="server" placeholder="Amount" pattern="[0-9]{1,15}" required="" title="Enter Amount" oninvalid="this.setCustomValidity('Please Enter Valid Amount')"></asp:TextBox>

        <div class="validate"></div>
            </div>
            <div class="form-send">    
   
        <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" onclick="Button1_Click" Text="Calculate" />
        
    
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
