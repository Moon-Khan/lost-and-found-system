using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        static private string conString = "Data Source=DESKTOP-F7TMCSC\\SQLEXPRESS;Initial Catalog=lost_found;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool IsTextBoxEmpty()
        {
            if (id_box.Text == "" || color_box.Text == "" || descr_box.Text == "" || status_box.Text == "" || location_box.Text == "" || category_box.Text == "")
                return true;
            else
                return false;
        }

        public void ClearTextBox()
        {
            id_box.Text = "";
            color_box.Text = "";
            descr_box.Text = "";
            status_box.Text = "";
            location_box.Text = "";
            category_box.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "use lost_found; select * from users where EmailID=@user";
            string query2 = "use lost_found; insert into item values(@userID,@locations,@category,@color,@descriptions,@statuss)";

            SqlConnection con = new SqlConnection(conString);

            SqlCommand cmd = new SqlCommand(query,con);
            SqlCommand cmd2 = new SqlCommand(query2, con);

            con.Open();
            cmd.Parameters.AddWithValue("@user", id_box.Text);

            if (!IsTextBoxEmpty())
            {
                try
                {
                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows==true)
                    {

                        cmd2.Parameters.AddWithValue("@userID", id_box.Text);
                        cmd2.Parameters.AddWithValue("@locations", location_box.Text);
                        cmd2.Parameters.AddWithValue("@category", category_box.Text);
                        cmd2.Parameters.AddWithValue("@color", color_box.Text);
                        cmd2.Parameters.AddWithValue("@descriptions", descr_box.Text);
                        cmd2.Parameters.AddWithValue("@statuss", status_box.Text);
                    dr.Close();

                        int Rows_Effected = cmd2.ExecuteNonQuery();
                        if (Rows_Effected > 0)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Data is inserted Successfully')</script>");
                            ClearTextBox();
                            Response.Redirect("home_page.aspx");
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sorry! Your Data is not inserted Please Try Later')</script>");
                        }

                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sorry! Your Data is not inserted Please Sign Up your Account')</script>");
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