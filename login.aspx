<%@ page language="C#" autoeventwireup="true" inherits="login, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   <title>Goods & Services Tax (GST) | Login</title>
<!--#include file="head.inc"-->  
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="login.aspx">Login</a></li>
        </ul>
        <h2>LOGIN</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->





  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title">
                    	<span>Welcome Back!</span>
                    </h4>
          <p class="text-justify">We gather certain information about the User, such as Internet protocol (IP) address, domain name,  the date and time of the visit and the pages visited, and if you reached this website from another website, the address of that referring website.</p>
          <p>We make no attempt to link these addresses with the identity of individuals visiting our site unless an attempt to damage the site has been detected.</p>
          <p class="withpadding">Still not registered? 			<asp:HyperLink runat="server" NavigateUrl="~/registration.aspx">Click Here</asp:HyperLink> to register now.</p>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
         
          <h4 class="title">
                    	<span>Login</span>

                    </h4> 
                  <div id="message" class="alert-danger"> <asp:Label id="label1" runat="server"></asp:Label></div>
                   
               <form id="form1" runat="server">
            <div class="form-group">
              <div class="input-group">




            <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <asp:TextBox ID="username" class="form-control" runat="server" pattern="{3,15}" placeholder="Username/Email ID" type="email" required="" title="Enter Your Email ID" oninvalid="this.setCustomValidity('Please Enter Valid email')"></asp:TextBox>
    </div>  </div>
   <div class="form-group">
              <div class="input-group">
            
       <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        <asp:TextBox ID="password" class="form-control" runat="server" pattern="{8,15}" placeholder="Password"  type="password" required="" title="Enter Your Password" oninvalid="this.setCustomValidity('Please Enter Valid Password')"></asp:TextBox>
 
     </div></div>
     
                           <div class="form-group">
              <div class="checkbox">
                <label>
				<asp:HyperLink runat="server" NavigateUrl="~/fpassword.aspx">Forgot Password</asp:HyperLink>	
								</label>
              </div>
            </div>
    

             <div class="form-group">
            
        <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" onclick="Button1_Click" Text="Sign in" />
                  </div>
    
            
    





            
              
          
    </form>
        </div>
        <!-- end login -->
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->





  <!--#include file="footer.inc"-->


</body>
</html>
