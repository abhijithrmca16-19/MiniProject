using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Request_vehicle1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());

            int id = int.Parse(e.CommandArgument.ToString());
            if (e.CommandName == "A")
            {
                //int grd= GridView1.DataKeys[req_id].Value;
                //Data Source=NBPRGLAB01;Initial Catalog=SRAS;User ID=sa;Password=***********
                String constring = "Data Source=NBPRGLAB01;Initial Catalog=SRAS;User ID=sa;Password=admin123";
                String Query = "update vehicle1 set veh_incharge='approved' where req_id=" + id;
                SqlConnection conDataBase = new SqlConnection(constring);
                SqlCommand cmdDataBase = new SqlCommand(Query, conDataBase);
                SqlDataReader myReader;
                conDataBase.Open();
                myReader = cmdDataBase.ExecuteReader();
                Response.Write("<script>alert('Your Details have been updated ')</script>");
                Response.Redirect("Request_vehicle1.aspx");
            }
            else
            {
                //int grd= GridView1.DataKeys[req_id].Value;
                //Data Source=NBPRGLAB01;Initial Catalog=SRAS;User ID=sa;Password=***********
                String constring = "Data Source=NBPRGLAB01;Initial Catalog=SRAS;User ID=sa;Password=admin123";
                String Query = "update vehicle1 set veh_incharge='rejected' where req_id=" + id;
                SqlConnection conDataBase = new SqlConnection(constring);
                SqlCommand cmdDataBase = new SqlCommand(Query, conDataBase);
                SqlDataReader myReader;
                conDataBase.Open();
                myReader = cmdDataBase.ExecuteReader();
                Response.Write("<script>alert('Your Details have been updated ')</script>");
                Response.Redirect("Request_vehicle1.aspx");
            }

        }
    }
}
