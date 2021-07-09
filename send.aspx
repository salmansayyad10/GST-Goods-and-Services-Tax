<%@ page language="C#" autoeventwireup="true" inherits="send, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <title>Goods & Services Tax (GST) | Feedback</title>

<!--#include file="head2.inc"-->
    
      <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home.aspx">Home</a></li>
          <li><a href="send.aspx">Send Message</a></li>
         
        </ul>
        <h2>Send Message</h2>
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
          <h4 class="title">Message</h4>
          <div id="Div1"></div>
  


    
      <form id="form1" class="contact-form" runat="server">
<div id="message" class="alert-info"> <asp:Label id="Label1" runat="server"></asp:Label></div>
    
    
    


             <div class="form-group">
    <asp:TextBox ID="subject" runat="server" class="form-control" required="" placeholder="Subject" pattern="{1,50}"  title="Subject 50 Characters Only" oninvalid="this.setCustomValidity('Subject 70 Characters Only')" ></asp:TextBox>
     <div class="validate"></div>
            </div>

            <div class="form-group">
<asp:TextBox ID="msg" runat="server" class="form-control" required="" TextMode="MultiLine"  placeholder="Your Message" Height="150px"></asp:TextBox>
     <div class="validate"></div>
            </div>



    
            <div class="form-send">    
        <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" onclick="Button1_Click" Text="Submit" />
    
    </div>
   
 </form>
  </div>
  
        <div class="col-lg-6 col-md-6 col-sm-6">
          <h4 class="title">Contact Details</h4>
          <p>We do not sell or share any personally identifiable information volunteered on this site to any third party except as may be required in terms of any Government Order, Notification, Policy or request. Any information provided to this website will reasonably be protected from any, misuse, unauthorized access or disclosure, alteration, or destruction in connection thereof.</p>
          <ul class="contact_details">
            <li><i class="fa fa-envelope-o"></i> mit@mit.com</li>
            <li><i class="fa fa-phone-square"></i> +91 7276736488</li>
            <li><i class="fa fa-home"></i> MIT College, Aurangabad-431003, Maharashtra, India</li>
          </ul>
          <!-- contact_details -->
        </div>

        
        <div class="clearfix"></div>
        <div class="divider"></div>

        <h4 class="title">Social Media</h4>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="https://www.facebook.com/gstsystemsindia/" target="_blank" class=""> <i class="dm-icon fa fa-facebook fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>Facebook</h4>
              </div>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="https://twitter.com/askGSTech" target="_blank" class=""> <i class="dm-icon fa fa-twitter fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>Twitter</h4>
              </div>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="https://www.linkedin.com/authwall?trk=bf&trkInfo=AQG8JXzec-7ZygAAAWzmMrqg8TtX9D9abw9-TErmL9xKN-3E1c-2pToVmfhLLa2l9gvwsi6VPT8uWc7ZAWrH5DInYvZwuhLIMHJ0rhbSSoltYvhFVoUmmfdE6hc1a3Gmw187lE4=&originalReferer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2F13204281%3Ftrk%3Dtyah%26trkInfo%3DclickedVertical%253Acompany%252CclickedEntityId%253A13204281%252Cidx%253A4-2-9%252CtarId%253A1478268606810%252Ctas%253AGoods%2520and%2520Services%2520" target="_blank" class=""> <i class="dm-icon fa fa-linkedin fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>Linkedin</h4>
              </div>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="https://www.youtube.com/channel/UCFYpOk92qurlO5t-Z_y-bOQ" target="_blank" class=""> <i class="dm-icon fa fa-youtube fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>Youtube</h4>
              </div>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->


      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
 <!--#include file="footer.inc"-->
</body>
</html>
