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

            string fname = farmerFName.Text;
            string lname = farmerLName.Text;
            string email = farmerEmail.Text;
            string password = farmerPassword.Text;
            string nic = farmerNic.Text;
            string mobile = farmerMobile.Text;
            string city = farmerCity.Text;
            string state = farmerState.Text;
            string zip = farmerZip.Text;
            string gender = farmerGender.SelectedValue;
            string dob = farmerDob.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "INSERT INTO Farmer VALUES ('" + email + "','" + password + "','" + fname + "','" + lname + "','" + gender + "','" + dob + "','" + nic + "','" + mobile + "','" + city + "','" + state + "','" + zip + "')";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Account has been registered. Please log in');</script>");
            }

            catch (SqlException ex)
            {

                if (ex.Number == 2627)
                {

                    Response.Write("<script>alert('The email you entered is already being used');</script>");

                }

            }
            finally
            {
                con.Close();
                farmerFName.Text = "";
                farmerLName.Text = "";
                farmerEmail.Text = "";
                farmerPassword.Text = "";
                farmerNic.Text = "";
                farmerMobile.Text = "";
                farmerCity.Text = "";
                farmerState.Text = "";
                farmerZip.Text = "";
                farmerGender.ClearSelection();
                farmerDob.Text = "";
            }

        }
    }
}