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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["doa"] != null)
            {
                Label loggedUser = (Label)Master.FindControl("loggedUser");
                loggedUser.Text = Session["doa"].ToString();
                PlaceHolder userControls = (PlaceHolder)Master.FindControl("userControls");
                userControls.Visible = false;
                PlaceHolder userAvatar = (PlaceHolder)Master.FindControl("userAvatar");
                userAvatar.Visible = true;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "SELECT * FROM DoA WHERE Username='" + Session["doa"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "DoA");

                string username = ds.Tables[0].Rows[0][0].ToString();
                string fname = ds.Tables[0].Rows[0][2].ToString();
                string lname = ds.Tables[0].Rows[0][3].ToString();
                string designation = ds.Tables[0].Rows[0][4].ToString();
                string email = ds.Tables[0].Rows[0][5].ToString();
                string mobile = ds.Tables[0].Rows[0][6].ToString();
                string city = ds.Tables[0].Rows[0][7].ToString();
                string state = ds.Tables[0].Rows[0][8].ToString();
                string zip = ds.Tables[0].Rows[0][9].ToString();

                loggedInStaff.Text = username;
                lblName.Text = (fname + " " + lname);
                lblDesignation.Text = designation;
                lblEmail.Text = email;
                lblMobile.Text = mobile;
                lblCity.Text = city;
                lblState.Text = state;
                lblZip.Text = zip;

            }

            else if (Session["keels"] != null)
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

                string username = ds.Tables[0].Rows[0][0].ToString();
                string fname = ds.Tables[0].Rows[0][2].ToString();
                string lname = ds.Tables[0].Rows[0][3].ToString();
                string designation = ds.Tables[0].Rows[0][4].ToString();
                string email = ds.Tables[0].Rows[0][5].ToString();
                string mobile = ds.Tables[0].Rows[0][6].ToString();
                string city = ds.Tables[0].Rows[0][7].ToString();
                string state = ds.Tables[0].Rows[0][8].ToString();
                string zip = ds.Tables[0].Rows[0][9].ToString();

                loggedInStaff.Text = username;
                lblName.Text = (fname + " " + lname);
                lblDesignation.Text = designation;
                lblEmail.Text = email;
                lblMobile.Text = mobile;
                lblCity.Text = city;
                lblState.Text = state;
                lblZip.Text = zip;

            }
            else
            {

                Response.Redirect("~/");

            }

        }

        protected void btnProfilePassword_Click(object sender, EventArgs e)
        {

            if (Session["doa"] != null)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "SELECT * FROM DoA WHERE Username='" + Session["doa"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "DoA");

                string currentPassword = ds.Tables[0].Rows[0][1].ToString();

                if(txtCurrentPass.Text == currentPassword)
                {

                    string newPassword = txtNewPass.Text;

                    String qryUpPw = "UPDATE DoA SET Password='" + newPassword + "' WHERE Username ='" + Session["doa"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(qryUpPw, con);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Your password has been changed');", true);
                    }

                    catch (Exception)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Failed to changed your password');", true);
                    }
                    finally
                    {
                        txtCurrentPass.Text = "";
                        txtNewPass.Text = "";
                        txtConPass.Text = "";
                    }

                }
                else
                {

                    lblError.Text = "Current password does not match";

                }

            }

            else if (Session["keels"] != null)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "SELECT * FROM Keels WHERE Username='" + Session["keels"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Keels");

                string currentPassword = ds.Tables[0].Rows[0][1].ToString();

                if (txtCurrentPass.Text == currentPassword)
                {



                }
                else
                {

                    lblError.Text = "Current password does not match";

                }

            }

            else
            {

                lblError.Text = "Something went wrong";

            }

        }
    }
}