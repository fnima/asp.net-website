using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace test
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["shopcart"] != null)
            {
                DataTable dt = Session["shopcart"] as DataTable;
                Repeater1.DataSource = dt.DefaultView;
                Repeater1.DataBind();
                if (Session["total"] != null)
                {
                    lblTotal.Text = Session["total"].ToString();
                }
            }
            RadioButtonList1.SelectedIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //更新订单表
            Random rnd = new Random();
            int num = rnd.Next(100, 1000);
            string orderid = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute + num.ToString();
            //获取联系地址编号
            int contactid = Int32.Parse(RadioButtonList1.SelectedValue);
            //.下单时间
            string orderdate = DateTime.Now.ToString();

            //订单总价
            float total = float.Parse(lblTotal.Text);

            //配置SQL
            string strsql = string.Format("insert into orders values('{0}',{1},{2},{3},0,'{4}','','','')", orderid, Session["userid"].ToString(), contactid, total, orderdate);

            //更新orders表
            if (DbManger.ExceSQL(strsql))
            {
                //更新订单详情表
                for (int i = 0; i < Repeater1.Items.Count; i++)
                {
                    int merid = Int32.Parse((Repeater1.Items[i].FindControl("lblId") as Label).Text);
                    float price = float.Parse((Repeater1.Items[i].FindControl("lblPrice") as Label).Text.Substring(1));
                    int amount = Int32.Parse((Repeater1.Items[i].FindControl("lblAmount") as Label).Text);
                    strsql = string.Format("insert into detailsOrder values('{0}',{1},{2},{3})", orderid, merid, price, amount);
                    DbManger.ExceSQL(strsql);
                }
                Response.Write("<script>alert('订单生成');window.location.href='admin/myallorder.aspx'</script>");
            }
        }
    }
}