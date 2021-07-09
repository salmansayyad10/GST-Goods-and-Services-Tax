<%@ page language="C#" autoeventwireup="true" inherits="uinbox, App_Web_t0jkv0nh" %>

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
            SelectCommand="SELECT * FROM [send] ORDER BY [id] DESC">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="subject" HeaderText="subject" 
                    SortExpression="subject" />
                <asp:BoundField DataField="message" HeaderText="message" 
                    SortExpression="message" />
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
    
    
    </div>

        <asp:TextBox ID="val" runat="server" plcaholder="ID"></asp:TextBox>
        <asp:DropDownList ID="cal" runat="server">
            <asp:ListItem Value="ip">Email ID</asp:ListItem>
            <asp:ListItem Value="date">IP</asp:ListItem>
            <asp:ListItem Value="email">Date</asp:ListItem>
            <asp:ListItem Value="subject">Subject</asp:ListItem>
            <asp:ListItem Value="message">Message</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="value" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
    <br />
    <br />
        <asp:TextBox ID="val1" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Delete" />
    </form>
</body>
</html>
