using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Farmers_Market
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                DataTable dt = this.getData(@"SELECT * FROM Report JOIN Farmer ON Report.Email = Farmer.Email");
                reportMarker.DataSource = dt;
                reportMarker.DataBind();

                if (Session["keels"] == null || Session["doa"] == null)
                {

                    paneError.Visible = true;
                    paneInfo.Visible = false;
                    paneFlagBodyError.Visible = true;
                    paneFlagBody.Visible = false;

                }

                if (Session["keels"] != null)
                {

                    paneError.Visible = false;
                    paneInfo.Visible = true;
                    paneBuy.Visible = true;
                    paneFlagBodyError.Visible = false;
                    paneFlagBody.Visible = true;

                }

                if (Session["doa"] != null)
                {

                    paneError.Visible = false;
                    paneInfo.Visible = true;
                    paneBuy.Visible = false;
                    paneFlagBodyError.Visible = true;
                    paneFlagBody.Visible = false;

                }

            }

        }

        private DataTable getData(string query)
        {
            string cs = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {

            if (Session["keels"] != null)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                String qry = "SELECT * FROM Keels WHERE Username='" + Session["keels"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(qry, con);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Keels");

                string fname = ds.Tables[0].Rows[0][2].ToString();
                string lname = ds.Tables[0].Rows[0][3].ToString();

                string keelsStaffName = fname + " " + lname;

                string to = recipientName.Text; //To address    
                string from = "farmersmarketnsbm@gmail.com"; //From address    
                MailMessage message = new MailMessage(from, to);

                string mailbody = messageText.Text;
                message.Subject = "New message from " + keelsStaffName + " from Keels for your Report on Farmer's Market";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                System.Net.NetworkCredential basicCredential1 = new
                System.Net.NetworkCredential("farmersmarketnsbm@gmail.com", "farmersmarket@google");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential1;

                try
                {

                    client.Send(message);
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Message has been sent');", true);

                }

                catch (Exception)
                {

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Failed to send message');", true);

                }

            }
            else
            {

                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('You need to be logged in as Keels staff to send messages to farmers');", true);
                //ContentPlaceHolder MainContent = (ContentPlaceHolder)Master.FindControl("MainContent");
                //Content KeelsLogin = (Content)MainContent.FindControl("KeelsLogin");
                //Label lblError = (Label)KeelsLogin.FindControl("lblError");
                //lblError.Text = "You need to be logged in as Keels staff to contact farmers";
                //Response.Redirect("~/KeelsLogin");

            }

        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {

            string status = "Sold";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "UPDATE Report SET Status='" + status + "', Buyer='" + Session["keels"].ToString() + "' WHERE ReportId ='" + buyReportId.Value + "'";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Item has been added to your purchase list');", true);
            }

            catch (Exception)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Failed to add the item to the purchase list');", true);
            }

        }

        protected void btnReportGood_Click(object sender, EventArgs e)
        {

            string markerIco = "http://maps.google.com/mapfiles/ms/icons/green-dot.png";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "UPDATE Report SET Flag='" + markerIco + "' WHERE ReportId ='" + buyReportId.Value + "'";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Item has been flagged as edible');", true);
                Response.Redirect("~/");
            }

            catch (Exception)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Failed to flag the item');", true);
            }

        }

        protected void btnReportBad_Click(object sender, EventArgs e)
        {

            string markerIco = "http://maps.google.com/mapfiles/ms/icons/caution.png";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "UPDATE Report SET Flag='" + markerIco + "' WHERE ReportId ='" + buyReportId.Value + "'";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Item has been flagged as in-edible');", true);
                Response.Redirect("~/");
            }

            catch (Exception)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Failed to flag the item');", true);
            }

        }
    }
}