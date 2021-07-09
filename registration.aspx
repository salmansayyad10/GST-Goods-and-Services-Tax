<%@ page language="C#" autoeventwireup="true" inherits="registration, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title>Goods & Services Tax (GST) | Signup</title>

<!--#include file="head.inc"-->
  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="index.aspx">Register</a></li>
        </ul>
        <h2>REGISTER</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->

  <section class="section1">
    <div class="container">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="col-lg-5 col-md-5 col-sm-12">
          <h4 class="title">
                    	<span>Join Us</span>
                    </h4>
          <p class="text-justify">If you do not agree to terms of this User Agreement you are requested not to use the GST Portal. By accessing GST Portal it is deemed that you have given your consent to this User Agreement and shall be bound by the terms of this User Agreement.</p>
          <p class="text-justify"><a href="terms.aspx" target="_blank">Click Here</a> to read our Terms and Conditions</p>
          <h4 class="title">
                    	<span>Benefits</span>
                    </h4>
          <ul class="check">
            
            <li>Pay GST</li>
             <li>Track Your Application</li>
              <li>Calculate GST</li>
               <li>Fast</li>
                <li>Secured</li>
                 <li>Easy To Use</li>
          
                      </ul>
        </div>

        <!-- end login -->

         <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title">
                    	<span>Registration Form</span>
                    </h4>

    <form id="form1" runat="server">
  
<div id="message" class="alert-danger"> <asp:Label id="label1" runat="server"></asp:Label></div>
         
       
        <asp:TextBox ID="fname" pattern="[A-Za-z]{3,20}" class="form-control" runat="server" placeholder="First Name" required="" title="Your First Name" ></asp:TextBox>
        <asp:TextBox ID="mname" pattern="[A-Za-z]{3,20}" class="form-control" runat="server" placeholder="Middle Name"  required="" title="Your Middle Name"></asp:TextBox>
        <asp:TextBox ID="lname" pattern="[A-Za-z]{3,20}" runat="server" class="form-control" placeholder="Last Name"  required="" title="Your Last Name" ></asp:TextBox>
        
        <asp:TextBox ID="mno" pattern="[0-9]{10}" runat="server" class="form-control" placeholder="Mobile Number" required="" title="Your Mobile Number" ></asp:TextBox>
        
        <asp:TextBox ID="email" runat="server" class="form-control" type="email" placeholder="Email ID" required="" title=" Your Email ID"></asp:TextBox>
        
        <asp:TextBox ID="dob" runat="server" class="form-control" type="date" min="01/01/1900" max="20/08/2000" placeholder="Date Of Birth" required="" title="Birth Date" ></asp:TextBox>
    <asp:RadioButtonList ID="g"  runat="server" required="required" title="Gender">
    <asp:ListItem value="male" Text="Male" />
        <asp:ListItem value="female" Text="Female" />
       </asp:RadioButtonList>
        <asp:TextBox ID="ano" pattern="[0-9]{12}" runat="server" class="form-control" placeholder="Adhar Card Number" required="" title="Enter Your Addhar Card Number"></asp:TextBox>
        <asp:TextBox ID="pno" pattern="[A-Z0-9]{10}" runat="server" class="form-control" placeholder="PAN Card Number" required="" title="Enter Your PAN Card Number" ></asp:TextBox>
        <asp:TextBox ID="hno" pattern="{1,50}" runat="server" class="form-control" placeholder="Home/Plot Number" required="" title="Home/Plot Number" ></asp:TextBox>
        <asp:TextBox ID="street" pattern="{1,50}" runat="server" class="form-control" placeholder="Street,Block Number/Name" required="" title="Street/Block Number OR Name" ></asp:TextBox>
        <asp:TextBox ID="area" pattern="{1,50}" runat="server" class="form-control" placeholder="Area Number/Name" required=""  title="Area Number/Name" ></asp:TextBox>
        <asp:TextBox ID="city" pattern="[A-Z]{5,50}" runat="server" class="form-control" placeholder="City" required=""  title="Your City Name" ></asp:TextBox>
    <asp:DropDownList ID="state" runat="server" class="form-control" required="required" title="Select State">
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
    <asp:TextBox ID="password" pattern="[a-zA-Z0-9]{8,50}" runat="server" class="form-control" type="password" placeholder="Password"  required="required"  title="Your Password" ></asp:TextBox>
        <asp:TextBox ID="password2"  runat="server" class="form-control" type="password" placeholder="Retype Password" required="required"  title="Retype Password" ></asp:TextBox>
        <asp:DropDownList ID="que" runat="server" required="required" class="form-control" title="Select One Question">
            <asp:ListItem>In what town was your first job?</asp:ListItem>
            <asp:ListItem>What is your favorite team?</asp:ListItem>
            <asp:ListItem>What is your favorite movie?</asp:ListItem>
            <asp:ListItem>What was the name of the hospital where you were born?</asp:ListItem>
            <asp:ListItem>In what town was your first job?</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="answer" pattern="{1,60}" runat="server" placeholder="Answer" class="form-control" required=""  title="Your Answer" ></asp:TextBox>
  
        <asp:Button ID="regis" runat="server" onclick="Button1_Click" class="btn btn-large btn-primary" Text="Create An Account" />
        
    </form>
       </div>
        <!-- end register -->
        
               
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
 <!--#include file="footer.inc"-->
</body>
</html>
