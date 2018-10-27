using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.admin
{
    public partial class userList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            String strsql = String.Format("select * from user where userName like '%{0}%'",TextBox1.Text);
            SqlDataSource1.SelectCommand = strsql;
            GridView1.DataBind();
        }
    }
}