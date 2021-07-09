<%@ page language="C#" autoeventwireup="true" inherits="ucal, App_Web_t0jkv0nh" %>

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
            SelectCommand="SELECT * FROM [calculator] ORDER BY [id] DESC">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="amt" HeaderText="amt" SortExpression="amt" />
            <asp:BoundField DataField="percentage" HeaderText="percentage" 
                SortExpression="percentage" />
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
    <br />
    <asp:TextBox ID="val" placeholder="Enter ID" runat="server" required="required"></asp:TextBox>
    <asp:DropDownList ID="cal" runat="server" style="margin-top: 63px">
        <asp:ListItem Value="ip">IP</asp:ListItem>
        <asp:ListItem Value="date">Date</asp:ListItem>
        <asp:ListItem Value="name">Name</asp:ListItem>
        <asp:ListItem Value="email">Email</asp:ListItem>
        <asp:ListItem Value="amt">Amount</asp:ListItem>
        <asp:ListItem Value="percentage">Percentage</asp:ListItem>
        <asp:ListItem Value="answer">Answer</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="value" placeholder="Enter new Value" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
    <br />
    <br />
    <asp:TextBox ID="val1" runat="server" plcaeholder="Enter ID"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
