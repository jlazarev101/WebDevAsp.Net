using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BransBakery_JustinLazarev
{
    public partial class order : System.Web.UI.Page
    {
        DAO dao = new DAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            string fn = txtFn.Text;
            string sn = txtSn.Text;
            string em = txtEm.Text;
            string pr = ddlPro.SelectedItem.ToString();
            int qy = int.Parse(txtQy.Text);


            //ADDING TO DATABASE WITH STORED PROCEDURE
            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspAddPerson";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@fn", fn);
            cmd.Parameters.AddWithValue("@sn", sn);
            cmd.Parameters.AddWithValue("@em", em);
            cmd.Parameters.AddWithValue("@pr", pr);
            cmd.Parameters.AddWithValue("@qy", qy);

            cmd.ExecuteNonQuery();
            dao.CloseCon();
            
            

            txtFn.Text = "";
            txtSn.Text = "";
            txtEm.Text = "";
            txtQy.Text = "";

        }
        
        SqlConnection con = new SqlConnection(@"Data Source=JUSTIN-HP;Initial Catalog=BranBakeryDB;Integrated Security=True");
        protected void btnTotal_Click(object sender, EventArgs e)
        {
            try
            {
                decimal qy = decimal.Parse(txtQy.Text);
                decimal price = ReturnPrice();
                decimal total = qy * price;
                lblTotal.Text = $" ${ total.ToString()}";
            }
            catch (Exception)
            {
                decimal qy = 1;
                decimal price = ReturnPrice();
                decimal total = qy * price;
                lblTotal.Text = $" ${ total.ToString()}";
            }
            

        }
        public decimal ReturnPrice()
        {
                string pro_type = ddlPro.SelectedItem.ToString();
                string select = "SELECT Price FROM Items WHERE Name = @pt";
                con.Open();
                SqlCommand cmd = new SqlCommand(select, con);
                cmd.Parameters.AddWithValue("@pt", pro_type);

                string num = cmd.ExecuteScalar().ToString();
                decimal pricedec = decimal.Parse(num);
                con.Close();
                return pricedec;

        }

    }
}