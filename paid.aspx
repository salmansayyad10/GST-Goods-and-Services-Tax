<%@ page language="C#" autoeventwireup="true" inherits="paid, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <title>Goods & Services Tax (GST) | Paid GST</title>
<!--#include file="head2.inc"-->
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home.aspx">Home</a></li>
          <li><a href="cal.aspx">Paid GST</a></li>
         
        </ul>
         <h2>Inbox</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
         </div>
    </div>
  </section>
<section class="section1">
    <div class="container clearfix">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
          <h4 class="title">Message</h4>
          <div id="Div1">
                            <div class="topbar clearfix" >
                                  <div class="social_buttons ">
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook">
                                      <i style="margin-left:50px;">ID</i>
                                    </a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS">
                                      <i style="margin-left:170px;">Name</i>
                                    </a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook">
                                      <i style="margin-left:300px;">Amount</i>
                                    </a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS">
                                      <i style="margin-left:500px;">Status</i>
                                    </a>
                                  </div>
                              </div>
                              <!-- end container -->

      </div>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id],[bname], [gamount], [status] FROM [pay] WHERE ([email] = @user) ORDER BY [id] DESC">
        <SelectParameters>

         <asp:SessionParameter Name="user" SessionField="user" Type="String" />

   </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" DataKeyNames="id" style="height: 80px;
  width: 100%; text-align: center;">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id"/>
            <asp:BoundField DataField="bname"/>
            <asp:BoundField DataField="gamount" />
            <asp:BoundField DataField="status"/>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
          <h4 class="title">Read/Delete Message</h4>

           <div class="form-group">

         <div id="message" class="alert-info"> <asp:Label id="Label1" runat="server"></asp:Label></div>
    <asp:TextBox ID="id" runat="server" class="form-control" placeholder="Enter ID"></asp:TextBox>
    </div>

           <div class="form-send">
           <asp:Button ID="Button2" runat="server" class="btn btn-large btn-primary" onclick="Button2_Click" Text="Form" />
    <asp:Button ID="Button1" runat="server" class="btn btn-large btn-primary" Text="Delete" onclick="Button1_Click" />
  
  
    
    </div>
    </form>

 </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->


 <!--#include file="footer.inc"-->
</body>
</html>
