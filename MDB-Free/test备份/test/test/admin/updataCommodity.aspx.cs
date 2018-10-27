using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.admin
{
    public partial class updataCommodity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_select_Click(object sender, EventArgs e)
        {
            String strsql = String.Format("select * from commodity where c_name like '%{0}%'", TextBox1.Text);
            SqlDataSource1.SelectCommand = strsql;
            GridView1.DataBind();
        }
    }
}