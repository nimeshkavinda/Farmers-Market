using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Farmers_Market
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["webmaster"] != null)
            {
                Label loggedUser = (Label)Master.FindControl("loggedUser");
                loggedUser.Text = Session["webmaster"].ToString();
                PlaceHolder userControls = (PlaceHolder)Master.FindControl("userControls");
                userControls.Visible = false;
                PlaceHolder userAvatar = (PlaceHolder)Master.FindControl("userAvatar");
                userAvatar.Visible = true;
                loggedInWebMaster.Text = Session["webmaster"].ToString();
            }
            else
            {

                Response.Redirect("~/WebMasterLogin");

            }
        }

        protected void btnDoaAccount_Click(object sender, EventArgs e)
        {
            string username = doaUsername.Text;
            string fname = doaFName.Text;
            string lname = doaLName.Text;
            string designation = doaDesignation.Text;
            string email = doaEmail.Text;
            string mobile = doaMobile.Text;
            string city = doaCity.Text;
            string state = doaState.Text;
            string zip = doaState.Text;
            string password = fname + mobile;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "INSERT INTO DoA VALUES ('" + username + "','" + password + "','" + fname + "','" + lname + "','" + designation + "','" + email + "','" + mobile + "','" + city + "','" + state + "','" + zip + "')";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Account has been created');</script>");
            }

            catch (SqlException ex)
            {

                if (ex.Number == 2627)
                {

                    Response.Write("<script>alert('Username already exists');</script>");

                }

            }

            finally
            {
                con.Close();
                doaUsername.Text = "";
                doaFName.Text = "";
                doaLName.Text = "";
                doaDesignation.Text = "";
                doaEmail.Text = "";
                doaMobile.Text = "";
                doaCity.Text = "";
                doaState.Text = "";
                doaZip.Text = "";
            }

        }

        protected void btnKeelsAccount_Click(object sender, EventArgs e)
        {

            String username = keelsUsername.Text;
            String fname = keelsFName.Text;
            String lname = keelsLName.Text;
            String designation = keelsDesignation.Text;
            String email = keelsEmail.Text;
            String mobile = keelsMobile.Text;
            String city = keelsCity.Text;
            String state = keelsState.Text;
            String zip = keelsState.Text;
            String password = fname + mobile;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "INSERT INTO Keels VALUES ('" + username + "','" + password + "','" + fname + "','" + lname + "','" + designation + "','" + email + "','" + mobile + "','" + city + "','" + state + "','" + zip + "')";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Account has been created');</script>");
            }

            catch (SqlException ex)
            {

                if (ex.Number == 2627)
                {

                    Response.Write("<script>alert('Username already exists');</script>");

                }

            }

            finally
            {
                con.Close();
                keelsUsername.Text = "";
                keelsFName.Text = "";
                keelsLName.Text = "";
                keelsDesignation.Text = "";
                keelsEmail.Text = "";
                keelsMobile.Text = "";
                keelsCity.Text = "";
                keelsState.Text = "";
                keelsZip.Text = "";
            }

        }
    }
}