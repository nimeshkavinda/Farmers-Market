using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmers_Market
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["farmer"] != null)
            {
                loggedUser.Text = Session["farmer"].ToString();
                userControls.Visible = false;
                userAvatar.Visible = true;
                btnViewReport.Visible = true;

            }
            if (Session["doa"] != null)
            {
                loggedUser.Text = Session["doa"].ToString();
                userControls.Visible = false;
                userAvatar.Visible = true;
                btnProfile.Visible = true;

            }
            if (Session["keels"] != null)
            {
                loggedUser.Text = Session["keels"].ToString();
                userControls.Visible = false;
                userAvatar.Visible = true;
                btnPurchaseList.Visible = true;
                btnProfile.Visible = true;

            }
            if (Session["webmaster"] != null)
            {
                loggedUser.Text = Session["webmaster"].ToString();
                userControls.Visible = false;
                userAvatar.Visible = true;
                menuItems.Visible = false;

            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/");
        }

        protected void btnViewReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewReport");
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Profile");
        }

        protected void btnPurchaseList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PurchaseList");
        }
    }
}