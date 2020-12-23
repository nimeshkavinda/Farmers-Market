using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmers_Market
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFarmerAccount_Click(object sender, EventArgs e)
        {

            //string username = doaUsername.Text;
            //string fname = doaFName.Text;
            //string lname = doaLName.Text;
            //string designation = doaDesignation.Text;
            //string email = doaEmail.Text;
            //string mobile = doaMobile.Text;
            //string city = doaCity.Text;
            //string state = doaState.Text;
            //string zip = doaState.Text;
            //string password = fname + mobile;

            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            //String qry = "INSERT INTO Farmer VALUES ('" + username + "','" + password + "','" + fname + "','" + lname + "','" + designation + "','" + email + "','" + mobile + "','" + city + "','" + state + "','" + zip + "')";
            //SqlCommand cmd = new SqlCommand(qry, con);

            //try
            //{
            //    con.Open();
            //    cmd.ExecuteNonQuery();
            //    Response.Write("<script>alert('Account has been registered. You'll be redirected to login');</script>");
            //}

            //catch (SqlException ex)
            //{

            //    if (ex.Number == 2627)
            //    {

            //        Response.Write("<script>alert('The email you entered is already being used');</script>");

            //    }

            //}
            //finally
            //{
            //    con.Close();
            //    doaUsername.Text = "";
            //    doaFName.Text = "";
            //    doaLName.Text = "";
            //    doaDesignation.Text = "";
            //    doaEmail.Text = "";
            //    doaMobile.Text = "";
            //    doaCity.Text = "";
            //    doaState.Text = "";
            //    doaZip.Text = "";
            //}

        }
    }
}