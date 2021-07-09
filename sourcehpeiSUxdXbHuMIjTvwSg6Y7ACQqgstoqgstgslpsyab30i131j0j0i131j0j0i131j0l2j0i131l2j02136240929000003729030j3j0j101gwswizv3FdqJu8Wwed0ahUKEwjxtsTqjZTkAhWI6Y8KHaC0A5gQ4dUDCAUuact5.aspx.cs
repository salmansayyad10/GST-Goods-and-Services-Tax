using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class sourcehpeiSUxdXbHuMIjTvwSg6Y7ACQqgstoqgstgslpsyab30i131j0j0i131j0j0i131j0l2j0i131l2j02136240929000003729030j3j0j101gwswizv3FdqJu8Wwed0ahUKEwjxtsTqjZTkAhWI6Y8KHaC0A5gQ4dUDCAUuact5 : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] =="Iamadmin")
        {
            Response.Redirect("admin.aspx");
        
        }
        else
        {
            //Response.Write(Session["user"]);
             
        }
      
    }
}
