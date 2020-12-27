using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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

                getMostPrice();
                getMostType();
                getPriceChartData();
                getItemTypeChartData();

            }

        }

        private void getMostPrice()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "SELECT MAX(Convert(int, Price)) as mostPrice FROM Report WHERE isnumeric(Price) = 1";

            SqlDataAdapter sda = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Report");

            string price = ds.Tables[0].Rows[0]["mostPrice"].ToString();
            mostItemPrice.Text = price;

        }

        private void getMostType()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            String qry = "SELECT HarvestType, COUNT(HarvestType) AS mostType FROM Report GROUP BY HarvestType ORDER BY mostType DESC";

            SqlDataAdapter sda = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Report");

            string type = ds.Tables[0].Rows[0]["HarvestType"].ToString();
            mostItemType.Text = type;

        }

        private void getPriceChartData()
        {
            try
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
            catch (SqlException) 
            {

            }

        }

        private void getItemTypeChartData()
        {
            try
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
            catch (SqlException) 
            { 

            }

        }
    }
}