<%@ page language="C#" autoeventwireup="true" inherits="payment, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    <br /><h1>Name</h1>
        First Name: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        Middle Name: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        Last Name: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />

        <h1>Contact</h1>
       Mobile no: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        Email: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />

        <h1>Personal Information</h1>
         DOB: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        Gender: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />
       Addhar Number: <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />
        PAN Number: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <h1>Address</h1>
        Home No: <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br />
        Area1: <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        <br />
        Area 2: <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
        <br />
        City: <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        <br />
        State: <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
        <br />
        <h1>GST</h1>
    Date: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
    ip: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
    Company Name: <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
        <br />
  amount:  <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
        <br />
    gst: <asp:Label ID="Label19" runat="server" Text="Label">%</asp:Label>
        <br />
    gst amount:<asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
        <br />
         Status:<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
        <br />

    SNO:<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
        <br />
        

    <br />
    <br />
    <br />
    <asp:Button ID="printButton" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
        

    </form>
</body>
</html>
