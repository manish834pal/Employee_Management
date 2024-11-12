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
    public partial class User : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("registration_select_one", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@rid", Session["ID"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvregistration.DataSource = dt;
            gvregistration.DataBind();
            lblname.Text = dt.Rows[0]["name"].ToString();
        }
    }
}