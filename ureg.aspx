<%@ page language="C#" autoeventwireup="true" inherits="ureg, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [registration] ORDER BY [id] DESC">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id,email,ano,pno" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
            <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                SortExpression="email" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="ano" HeaderText="ano" ReadOnly="True" 
                SortExpression="ano" />
            <asp:BoundField DataField="pno" HeaderText="pno" ReadOnly="True" 
                SortExpression="pno" />
            <asp:BoundField DataField="hno" HeaderText="hno" SortExpression="hno" />
            <asp:BoundField DataField="street" HeaderText="street" 
                SortExpression="street" />
            <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="que" HeaderText="que" SortExpression="que" />
            <asp:BoundField DataField="answer" HeaderText="answer" 
                SortExpression="answer" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
        <asp:TextBox ID="val" runat="server" plcaholder="ID"></asp:TextBox>
        <asp:DropDownList ID="cal" runat="server">
            <asp:ListItem Value="ip">IP</asp:ListItem>
<asp:ListItem Value="date">Date</asp:ListItem>
            <asp:ListItem Value="ip">IP</asp:ListItem>
            <asp:ListItem Value="fname">First Name</asp:ListItem>
            <asp:ListItem Value="mname">Middle Name</asp:ListItem>
            <asp:ListItem Value="lame">Last Name</asp:ListItem>
            <asp:ListItem Value="mno">Mobile Number</asp:ListItem>
            <asp:ListItem Value="email">Email ID</asp:ListItem>
            <asp:ListItem Value="dob">Date Of Birth</asp:ListItem>
            <asp:ListItem Value="gender">Gender</asp:ListItem>
            <asp:ListItem Value="ano">Aadhar Number</asp:ListItem>
            <asp:ListItem Value="pno">PAN Card Number</asp:ListItem>
            <asp:ListItem Value="hno">Home Number</asp:ListItem>
            <asp:ListItem Value="street">Street</asp:ListItem>
            <asp:ListItem Value="area">Area</asp:ListItem>
            <asp:ListItem Value="city">City</asp:ListItem>
            <asp:ListItem Value="state">State</asp:ListItem>
            <asp:ListItem Value="password">Password</asp:ListItem>
            <asp:ListItem Value="answer">Answer</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="value" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
&nbsp;<p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="val1" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
    </p>
    </form>
</body>
</html>
