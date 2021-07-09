<%@ page language="C#" autoeventwireup="true" inherits="form, App_Web_t0jkv0nh" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title>Goods & Services Tax (GST) | GST Report</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
    <meta content="" name="description">

      <!-- Favicons -->
      <link rel="icon" href="img/logo2.png">


        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

          <!-- Bootstrap CSS File -->
          <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

            <!-- Libraries CSS Files -->
            <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
              <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
                <link href="lib/hover/hoverex-all.css" rel="stylesheet">
                  <link href="lib/jetmenu/jetmenu.css" rel="stylesheet">
                    <link href="lib/owl-carousel/owl-carousel.css" rel="stylesheet">

                      <!-- Main Stylesheet File -->
                      <link href="css/style.css" rel="stylesheet">
                        <link rel="stylesheet" href="css/colors/blue.css">

                          </head>
                          <body>


                         
                            <header class="header">
                              <div class="container-fluid">
                                <div class="site-header clearfix">
                                  <div class="col-lg-12 col-md-12 col-sm-12 title-area">
                                    <div class="site-title" id="title">
                                     
          
                                        <img src="img/logo.png" alt="Goods And Services Tax" >
                                       
										<img src="img/frame.png" alt="Goods And Services Tax" style="margin-left:390px">

           <hr>
                                    </div>
                                  </div>
								  						
                             
										     
                                
           
                                
								  
								
                                    </div>
                                  </div>
                               
    <form id="form1" runat="server">
    <table><tr><td>
 <b>Name : </b></td><td style="margin-left:390px"> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td></tr></table>
        <h1>Contact</h1>
       Mobile no: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
      
        Email: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
      

        <h1>Personal Information</h1>
         DOB: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
      
        Gender: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
   
       Addhar Number: <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
 
        PAN Number: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
   
        <h1>Address</h1>
        Home No: <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>

        Area1: <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
      
        Area 2: <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>

        City: <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
   
        State: <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>

        <h1>GST</h1>
    Date: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     
    ip: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
     
    Company Name: <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
       
  amount:  <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>

    gst: <asp:Label ID="Label19" runat="server" Text="Label">%</asp:Label>
 
    gst amount:<asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
        
         Status:<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
    

    id:<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
       
    <asp:Button ID="printButton" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
        

    </form>
</body>
</html>
