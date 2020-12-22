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
            String qry = "Select * from WebMaster where Username='" + txtWebMasterUsername.Text + "' and Password='" + txtWebMasterPassword.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(qry, con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);

            try
            {
                if (dtbl.Rows.Count == 1)
                {
                    Session["webmaster"] = txtWebMasterUsername.Text;
                    Response.Redirect("~/AdminPanel");
                }

                else
                {
                    
                }
            }

            catch (Exception ex)
            {
                
            }

            finally
            {
                txtWebMasterUsername.Text = "";
                txtWebMasterPassword.Text = "";
            }
        }
    }
}