using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace Farmers_Market
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                getPirceChartData();
                getItemTypeChartData();

            }

        }

        private void getPirceChartData()
        {
            string cs = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                
                SqlCommand cmd = new
                    SqlCommand("SELECT Title, Price FROM Report", con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                
                Series chartPriceSeries = chartPrice.Series["chartPriceSeries"];
                
                while (sdr.Read())
                {
                    chartPriceSeries.Points.AddXY(sdr["Title"].ToString(),
                        sdr["Price"]);
                }
            }
        }

        private void getItemTypeChartData()
        {
            
            string cs = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new
                    SqlCommand("SELECT HarvestType, COUNT(*) AS noOfTypes FROM Report GROUP BY HarvestType", con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                
                Series chartItemTypeSeries = chartItemType.Series["chartItemTypeSeries"];
                
                while (sdr.Read())
                {
                    chartItemTypeSeries.Points.AddXY(sdr["HarvestType"],
                        sdr["noOfTypes"]);
                    
                }
            }
        }
    }
}