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
    public partial class WebForm2 : System.Web.UI.Page
    {
        static private string conString = "Data Source=DESKTOP-F7TMCSC\\SQLEXPRESS;Initial Catalog=lost_found;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("found_detail");
        }

        protected void lost_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("lost_detail");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
      
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
            string query = "use lost_found; select * from item where statuss='lost' ; ";
            SqlConnection con = new SqlConnection(conString);
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataSet data = new DataSet();
            sda.Fill(data);
            GridView1.DataSource = data;
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }
    }
}