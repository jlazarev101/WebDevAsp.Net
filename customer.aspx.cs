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
    public partial class customer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString);
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            ShowAllMembers();
        }

        void ShowAllMembers()
        {
            da = new SqlDataAdapter();
            dt = new DataTable();

            string select = "SELECT * FROM People";
            SqlCommand cmd = new SqlCommand(select, con);

            da.SelectCommand = cmd;
            da.Fill(dt);
            dgv.DataSource = dt;
            dgv.DataBind();

        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            dgv.PageIndex = e.NewPageIndex;
            this.ShowAllMembers();
        }

        protected void btnShowFrom_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter();
            dt = new DataTable();

            string sel_pro = txtSelPro.Text;
            string select = "SELECT * FROM People WHERE Product = @pr";
            SqlCommand cmd = new SqlCommand(select, con);
            cmd.Parameters.AddWithValue("@pr", sel_pro);

            da.SelectCommand = cmd;
            da.Fill(dt);
            dgv.DataSource = dt;
            dgv.DataBind();
        }
    }
}