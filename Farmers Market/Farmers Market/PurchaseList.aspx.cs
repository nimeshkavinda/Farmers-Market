using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmers_Market
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["keels"] != null)
            {
                Label loggedUser = (Label)Master.FindControl("loggedUser");
                loggedUser.Text = Session["keels"].ToString();
                PlaceHolder userControls = (PlaceHolder)Master.FindControl("userControls");
                userControls.Visible = false;
                PlaceHolder userAvatar = (PlaceHolder)Master.FindControl("userAvatar");
                userAvatar.Visible = true;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "SELECT * FROM Keels WHERE Username='" + Session["keels"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Keels");

                string fname = ds.Tables[0].Rows[0][2].ToString();
                string lname = ds.Tables[0].Rows[0][3].ToString();
                string username = ds.Tables[0].Rows[0][0].ToString();

                loggedInKeels.Text = (fname + " " + lname);

                SqlDataSourcePurchases.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlDataSourcePurchases.SelectCommand = "SELECT * FROM Report WHERE Buyer='" + Session["keels"].ToString() + "'";

            }
            else
            {

                Response.Redirect("~/KeelsLogin");

            }

        }
    }
}