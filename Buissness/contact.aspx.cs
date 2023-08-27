using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Buissness
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        

        protected void Sendbtn_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertintotblcontact", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Name", txtname.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Phone", phone.Text);
            cmd.Parameters.AddWithValue("Comments", txtmsg.Text);
            conn.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblmsg.Text = "Record Saved";
                txtname.Text = "";
                txtemail.Text = "";
                phone.Text = "";
                txtmsg.Text = "";
                
            }
            else
            {
                lblmsg.Text = "Something went wrong, please try again";
            }
        }
    }
}