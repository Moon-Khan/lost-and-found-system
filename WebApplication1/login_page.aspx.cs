using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static private string conString = "Data Source=DESKTOP-F7TMCSC\\SQLEXPRESS;Initial Catalog=lost_found;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            
        }

        public bool IsTextBoxEmpty()
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
                return true;
            else
                return false;
        }

        public void ClearTextBox()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            string query = "use lost_found; Select * from users where EmailID=@user and passwords=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);


            if(!IsTextBoxEmpty())
            {
                try
                {
                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows)
                    {
                        Response.Redirect("home_page.aspx");
                    }
                    else
                    {
                        Label1.Text = "Wrong User ID Password";
                    }



                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
        }
    }
}