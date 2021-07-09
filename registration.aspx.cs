using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class registration : System.Web.UI.Page
{
    int flag = 0, em = 0, ad = 0, pn = 0;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
        String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address
        SqlCommand cmd1 = new SqlCommand("insert into online values('" + DT + "','" + ipAddress + "','" + "registration.aspx" + "')", con);
        cmd1.ExecuteNonQuery();

    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (flag == 0)
        {

            SqlCommand command = new SqlCommand("SELECT * FROM registration WHERE email='" + email.Text + "' OR ano='" + ano.Text + "' OR pno='" + pno.Text + "'", con);

            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    if (email.Text == reader.GetString(7))
                    {
                        label1.Text = reader.GetString(7) + "=Email ID Already Used";
                        em = 1;
                    }
                    if (ano.Text == reader.GetString(10))
                    {

                        label2.Text = reader.GetString(10) + "=Aadhar Number Already Used";
                        ad = 1;
                    }
                    if (pno.Text == reader.GetString(11))
                    {
                        pn = 1;
                        label3.Text = reader.GetString(11) + "=PAN Card Number Already Used";
                    }
                }
            }
        }


        if (em == 0 && ad == 0 && pn == 0)
        {

            String passworda = password.Text;  //password 1
            String passwordb = password2.Text; //password 2
            if (passworda != passwordb)
            {
                pwd.Text = "Password Does Not Match";
            }
                
             else
            {
                Response.Write(Session["user"]);
                DateTime DT = DateTime.Now.ToUniversalTime();   //Time And Date
                String ipAddress = System.Web.HttpContext.Current.Request.UserHostAddress;   //IP Address

                SqlCommand cmd = new SqlCommand("insert into registration values('" + DT + "','" + ipAddress + "','" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + mno.Text + "','" + email.Text + "','" + dob.Text + "','" + g.Text + "','" + ano.Text + "','" + pno.Text + "','" + hno.Text + "','" + street.Text + "','" + area.Text + "','" + city.Text + "','" + state.Text + "','" + password.Text + "','" + que.Text + "','" + answer.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Labelx.Visible = true;
                Labelx.Text = "Data inserted";
            }
        }
    }
}