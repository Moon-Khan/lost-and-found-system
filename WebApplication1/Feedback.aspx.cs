using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{

    public partial class WebForm9 : System.Web.UI.Page
    {
        static private string conString = "Data Source=DESKTOP-F7TMCSC\\SQLEXPRESS;Initial Catalog = lost_found; Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public bool IsTextBoxEmpty()
        {
            if (id_box.Text == "" || Des_box.Text == "")
                return true;
            else
                return false;
        }

        public void ClearTextBox()
        {
            id_box.Text = "";
            Des_box.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            string query = "use lost_found; Select * from users where EmailID=@user ";
            string query2 = "use lost_found; insert into feedback values(@Eid,@Descriptions);";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cmd2 = new SqlCommand(query2, con);


            cmd.Parameters.AddWithValue("@user", id_box.Text);

            if (!IsTextBoxEmpty())
            {
                try
                {


                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows)
                    {
                        dr.Close();


                        cmd2.Parameters.AddWithValue("@Eid", id_box.Text);
                        cmd2.Parameters.AddWithValue("@Descriptions", Des_box.Text);

                        int rows_affected = cmd2.ExecuteNonQuery();
                        if(rows_affected>0)
                        {

                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Feedback Submitted')</script>");
                            ClearTextBox();
                            
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Feedback is not  Submitted. Please Try Again!')</script>");

                        }

                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please Sign Up your Account')</script>");
                    }



            }
                catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please Fill all boxes.')</script>");

            }
        }
    }
}