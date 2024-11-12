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
    public partial class ManageUsersByAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=LAPTOP-D9K9EA1T\\SQLEXPRESS01;initial catalog=db72_8623;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Show();
            }
        }

        public void Show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("registration_select", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvregistration.DataSource = dt;
            gvregistration.DataBind();
        }
        protected void gvregistration_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="S")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("registration_status_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@rid", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                Show();
            }
        }
    }
}