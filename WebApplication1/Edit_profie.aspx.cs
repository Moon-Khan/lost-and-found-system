using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication1
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        static private string conString = "Data Source=DESKTOP-F7TMCSC\\SQLEXPRESS;Initial Catalog=lost_found;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public bool IsTextBoxEmpty()
        {
            if (id_box.Text == "" || password_box.Text == "" || cont_box.Text == "" || name_box.Text == "")
                return true;
            else
                return false;
        }

        public void ClearTextBox()
        {
            id_box.Text = "";
            password_box.Text = "";
            name_box.Text = "";
            cont_box.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            string query = "use lost_found; select * from users where EmailID=@user";
            string query2 = "use lost_found; insert into users values( @EmailID, @names, @passwords,@contact);";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cmd2 = new SqlCommand(query2, con);

            cmd.Parameters.AddWithValue("@user", id_box.Text);

            if (!IsTextBoxEmpty())
            {
                try
                {
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows == true)
                    {
                        dr.Close();
                        cmd2.Parameters.AddWithValue("@EmailID", id_box.Text);
                        cmd2.Parameters.AddWithValue("@names", name_box.Text);
                        cmd2.Parameters.AddWithValue("@passwords", password_box.Text);
                        cmd2.Parameters.AddWithValue("@contact", cont_box.Text);

                        int rows_affected = cmd2.ExecuteNonQuery();
                        if (rows_affected > 0)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Profile is Edited')</script>");
                            ClearTextBox();
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sorry! Prfile Editing Failed! Please Try Later')</script>");
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sorry! Please Enter Correct Email ID')</script>");

                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all boxes')</script>");

            }

        }
    }
    
}