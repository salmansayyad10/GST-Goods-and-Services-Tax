<%@ page language="C#" autoeventwireup="true" inherits="sendm, App_Web_t0jkv0nh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
<!--#include file="head2.inc"-->
   <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home.aspx">Home</a></li>
          <li><a href="inbox.aspx">Inbox</a></li>
         
        </ul>
        <h2>Inbox</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>

<section class="section1">
    <div class="container clearfix">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <h4 class="title">Message</h4>
          <div id="Div1">
                            <div class="topbar clearfix" >
                                  <div class="social_buttons ">
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook">
                                      <i style="margin-left:50px">ID</i>
                                    </a>
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS">
                                      <i style="margin-left:240px">Subject</i>
                                    </a>
                                  </div>
                              </div>
                              <!-- end container -->

      </div>
    <form id="form1" runat="server">
    
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"

        
            SelectCommand="SELECT [id],[ip], [date], [email], [subject], [message] FROM [send] WHERE ([email] = @email) ORDER BY [date] DESC">

        <SelectParameters>

        <asp:SessionParameter Name="email" SessionField="user" Type="String" />

        </SelectParameters>

        </asp:SqlDataSource>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            AutoGenerateColumns="False" style="height: 150px;
  width: 90%; text-align: center; " AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" />
                <asp:BoundField DataField="date" />
                <asp:BoundField DataField="subject" />
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
  
        <div class="col-lg-6 col-md-6 col-sm-6">
          <h4 class="title">Read/Delete Message</h4>
           <div class="form-group">

        <asp:TextBox ID="val2" runat="server" class="form-control" placeholder="ID"></asp:TextBox>
              <div class="validate"></div>
            
<div class="form-send">    
            
            <asp:Button ID="Button2"  class="btn btn-large btn-primary"  runat="server" onclick="Button2_Click" Text="Read" />
            </div>
   </div>
            <div class="form-group">
        <asp:TextBox ID="val1" runat="server" class="form-control" placeholder="ID"></asp:TextBox>
<div class="validate"></div>
            </div>

            <div class="form-send"> 
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class="btn btn-large btn-primary" Text="Delete" />
   </div>
    </form> </div>

        
        <div class="clearfix"></div>
        <div class="divider"></div>




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
