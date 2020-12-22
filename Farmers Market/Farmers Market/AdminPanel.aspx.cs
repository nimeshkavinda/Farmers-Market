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
            if(Session["webmaster"] != null)
            {
                Label loggedUser = (Label)Master.FindControl("loggedUser");
                loggedUser.Text = Session["webmaster"].ToString();
                PlaceHolder userControls = (PlaceHolder)Master.FindControl("userControls");
                userControls.Visible = false;
                PlaceHolder userAvatar = (PlaceHolder)Master.FindControl("userAvatar");
                userAvatar.Visible = true;
                loggedInWebMaster.Text = Session["webmaster"].ToString();
            }
        }

        protected void btnDoaAccount_Click(object sender, EventArgs e)
        {
            if(doaUsername.Text == "" || doaFName.Text == "" || doaLName.Text == "" || doaDesignation.Text == "" || doaEmail.Text == "" || doaMobile.Text == "" || doaCity.Text == "" || doaState.Text == "" || doaZip.Text == "")
            {



            }
            
            else if (!Regex.IsMatch(doaEmail.Text, "^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$"))
            {



            }

            else
            {
                String username = doaUsername.Text;
                String fname = doaFName.Text;
                String lname = doaLName.Text;
                String designation = doaDesignation.Text;
                String email = doaEmail.Text;
                String mobile = doaMobile.Text;
                String city = doaCity.Text;
                String state = doaState.Text;
                String zip = doaState.Text;
                String password = fname + mobile;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "INSERT INTO DoA VALUES ('" + username + "','" + password + "','" + fname + "','" + lname + "','" + designation + "','" + email + "','" + mobile + "','" + city + "','" + state + "','" + zip + "')";
                SqlCommand cmd = new SqlCommand(qry, con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                catch (SqlException ex)
                {

                    if (ex.Number == 2627)
                    {

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
            
        }

        protected void btnKeelsAccount_Click(object sender, EventArgs e)
        {

            if (keelsUsername.Text == "" || keelsFName.Text == "" || keelsLName.Text == "" || keelsDesignation.Text == "" || keelsEmail.Text == "" || keelsMobile.Text == "" || keelsCity.Text == "" || keelsState.Text == "" || keelsZip.Text == "")
            {



            }

            else if (!Regex.IsMatch(keelsEmail.Text, "^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$"))
            {



            }

            else
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
                }

                catch (SqlException ex)
                {

                    if (ex.Number == 2627)
                    {



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
}