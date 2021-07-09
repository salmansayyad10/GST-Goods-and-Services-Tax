<%@ page language="C#" autoeventwireup="true" inherits="ulogin, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [userinfo] ORDER BY [time] DESC">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
    <p>
        <asp:TextBox ID="val" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;
        <asp:DropDownList ID="cal" runat="server">
            <asp:ListItem Value="time">Time</asp:ListItem>
            <asp:ListItem Value="ip">IP</asp:ListItem>
            <asp:ListItem Value="email">Email</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:TextBox ID="value" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
    </p>
    <p>
        <asp:TextBox ID="val1" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server"            Text="Delete" 
            onclick="Button2_Click1" />
    </p>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [logout] ORDER BY [time] DESC">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
        <asp:TextBox ID="val2" runat="server" plcaholder="ID"></asp:TextBox>
    <asp:DropDownList ID="cal0" runat="server">
        <asp:ListItem Value="time">Time</asp:ListItem>
        <asp:ListItem Value="ip">IP</asp:ListItem>
        <asp:ListItem Value="email">Email</asp:ListItem>
    </asp:DropDownList>
        <asp:TextBox ID="value0" runat="server" plcaholder="ID"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update" />
    <br />
    <br />
        <asp:TextBox ID="val3" runat="server" plcaholder="ID"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Delete" />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
