using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmers_Market
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDoaLogin_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "SELECT * FROM Keels WHERE Username='" + txtKeelsUsername.Text + "' AND Password='" + txtKeelsPassword.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(qry, con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);

            try
            {
                if (dtbl.Rows.Count == 1)
                {
                    Session["keels"] = txtKeelsUsername.Text;
                    Response.Redirect("~/");
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
                txtKeelsUsername.Text = "";
                txtKeelsPassword.Text = "";
            }

        }
    }
}