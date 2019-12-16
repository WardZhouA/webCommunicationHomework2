using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 图书详细 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string red = Request.QueryString["id"];
            string sqlCon = "server=localhost;database=图书征订;Integrated Security=True";
            SqlConnection con = new SqlConnection(sqlCon);
            DataTable dt = new DataTable();
            string strsql = "SELECT * FROM [图书信息表] WHERE [图书编号] = " + "'" + red + "'";
            SqlDataAdapter da = new SqlDataAdapter(strsql, sqlCon);
            da.Fill(dt);
                        FormView1.DataSource = dt;
            FormView1.DataBind();
        }
    }
}