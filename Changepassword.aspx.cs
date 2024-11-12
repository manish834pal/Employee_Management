using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project72_8623
{
    public partial class Changepassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-D9K9EA1T\\SQLEXPRESS01;initial catalog=db72_8623;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncp_Click(object sender, EventArgs e)
        {
            if (txtnewpassword.Text == txtconfirmnewpassword.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tblregistration set password='" + txtnewpassword.Text + "' where rid='" + Session["ID"] + "' and password='" + txtoldpassword.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "your password changed successfully !!";
            }
            else
            {
                lblmsg.Text = "password do not match !!";
            }
        }
    }
}