using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class FormView控件二_显示图片详细信息 : System.Web.UI.Page
{
    public static SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnStr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        string selectsql, strpicno;
        if (!IsPostBack)
        {
            //使用Request对象的QueryString属性获取URL参数的数据
            strpicno = Request.QueryString["picno"].ToString();
            DataTable dt = new DataTable();
            selectsql = "SELECT * FROM picTable WHERE picno=" + strpicno;
            SqlDataAdapter da = new SqlDataAdapter(selectsql, conn);
            da.Fill(dt);
            FormView1.DataSource = dt;
            FormView1.DataBind();
        }
    }
}
