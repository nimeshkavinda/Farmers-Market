using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Farmers_Market
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void webMasterLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "SELECT * FROM WebMaster WHERE Username='" + txtWebMasterUsername.Text + "' AND Password='" + txtWebMasterPassword.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(qry, con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);

            try
            {
                if (dtbl.Rows.Count == 1)
                {
                    Session.Clear();
                    Session["webmaster"] = txtWebMasterUsername.Text;
                    Response.Redirect("~/AdminPanel");
                }

                else
                {
                    lblError.Text = "Username and Password doesn't match";
                }
            }

            catch (Exception ex)
            {
                lblError.Text = ex.ToString();
            }

            finally
            {
                txtWebMasterUsername.Text = "";
                txtWebMasterPassword.Text = "";
            }
        }
    }
}