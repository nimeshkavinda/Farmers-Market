using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Farmers_Market
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["farmer"] != null)
            {
                Label loggedUser = (Label)Master.FindControl("loggedUser");
                loggedUser.Text = Session["farmer"].ToString();
                PlaceHolder userControls = (PlaceHolder)Master.FindControl("userControls");
                userControls.Visible = false;
                PlaceHolder userAvatar = (PlaceHolder)Master.FindControl("userAvatar");
                userAvatar.Visible = true;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "SELECT * FROM Farmer WHERE Email='" + Session["farmer"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Farmer");

                string fname = ds.Tables[0].Rows[0][2].ToString();
                string lname = ds.Tables[0].Rows[0][3].ToString();
                string email = ds.Tables[0].Rows[0][0].ToString();
                string mobile = ds.Tables[0].Rows[0][7].ToString();

                lblName.Text = (fname + " " + lname);
                lblEmail.Text = email;
                lblMobile.Text = mobile;

            }
            else
            {

                Response.Redirect("~/FarmerLogin");

            }

        }

        protected void btnCreateReport_Click(object sender, EventArgs e)
        {

            string title = reportTitle.Text;
            string harvestType = reportType.SelectedItem.Value;
            string lat = reportLat.Text;
            string lng = reportLng.Text;
            string desc = reportDesc.Text;
            string price = reportPrice.Text;
            string email = Session["farmer"].ToString();

            HttpPostedFile postedFile = reportPhoto.PostedFile;
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] img = binaryReader.ReadBytes((Int32)stream.Length);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "INSERT INTO Report VALUES ('" + title + "','" + harvestType + "','" + lat + "','" + lng + "','" + desc + "','" + price + "',@pic,'" + email + "')";
            SqlCommand cmd = new SqlCommand(qry);
            cmd.Parameters.AddWithValue("@pic", img);

            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                lblSuccess.Text = "Report has been created";
            }

            catch (SqlException)
            {

                lblError.Text = "Failed to create the report";

            }
            finally
            {
                con.Close();
                reportTitle.Text = "";
                reportLat.Text = "";
                reportLng.Text = "";
                reportDesc.Text = "";
                reportPrice.Text = "";
            }

            //String qry1 = "SELECT * FROM Report WHERE Email='" + Session["farmer"].ToString() + "'";
            //con.Open();
            //SqlCommand cmd1 = new SqlCommand(qry1);
            //cmd1.Connection = con;
            //SqlDataReader sdr = cmd1.ExecuteReader();
            //sdr.Read();
            //byte[] bytes = (byte[])sdr["Image"];
            //Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
            //con.Close();

        }
    }
}