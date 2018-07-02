using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.APP_Code;
using System.Data;
public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //1.1
        DataTable dt = new DataTable();
        dt.Columns.Add("id",typeof(Int32));
        dt.Columns.Add("productname" ,typeof(string));
        dt.Columns.Add("localprice",typeof(string));
        dt.Columns.Add("posttime",typeof(string));
        dt.Columns.Add("buycount",typeof(Int32));

        //1.2
        float total = 0;
        for (int i = 0; i < DataList1.Items.Count;i++ )
        {
            CheckBox check = (CheckBox)DataList1.Items[i].FindControl("chk_Select");
            if(check.Checked)
            {
                DataRow dr = dt.NewRow();
                dr["id"] = (DataList1.Items[i].FindControl("chk_Select") as CheckBox).Text;
                dr["productname"] = (DataList1.Items[i].FindControl("h1_perLink") as HyperLink).Text;
                dr["localprice"] = (DataList1.Items[i].FindControl("lbl_price") as Label).Text;
                dr["posttime"] = (DataList1.Items[i].FindControl("lbl_sprice") as Label).Text;
                dr["buycount"] = (DataList1.Items[i].FindControl("txt_num") as TextBox).Text;
                dt.Rows.Add(dr);
                Label lblSum = (Label)DataList1.Items[i].FindControl("lbl_sum");
                total += float.Parse(lblSum.Text.Substring(1));

            }
        }
        Session["shopcart"] = dt;
        Session["total"] = total;
        Response.Redirect("order.aspx");
    }

    //计算相同商品小计价格
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //判断该控件是否存在于dataList中
        if(e.Item.ItemType == ListItemType.Item  || e.Item.ItemType == ListItemType.AlternatingItem){
            //获取商品价格
            Label lblPrice = e.Item.FindControl("lbl_sprice") as Label;
            float price = float.Parse(lblPrice.Text.Substring(1));
            //获取商品数量
            TextBox txtNum = (TextBox) e.Item.FindControl("txt_num");
            int num = Int32.Parse(txtNum.Text);
            //计算单个商品的小计
            float sum = price * num;
            Label lblSum = e.Item.FindControl("lbl_sum") as Label;
            lblSum.Text = sum.ToString("C");

        }
    }

    //删除商品
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string strsql = string.Format("delete from cart where CartId{0}",DataList1.DataKeys[e.Item.ItemIndex].ToString());
        if (DbManger.ExceSQL(strsql))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            DataList1.DataBind();
        }
    }
    protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            Button ButtonDel = e.Item.FindControl("btn_oper") as Button;
            ButtonDel.Attributes.Add("onclick", "return confirm('是否要删除此行？？')");
        }
    }

    //修改购买商品数量
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "operNum")
        {
            TextBox txtNum = e.Item.FindControl("txt_num") as TextBox;
            int num = Int32.Parse(txtNum.Text);
            int cartid = Int32.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());
            string strsql = string.Format("update cart set Amount={0} where CartId={1}",num,cartid);
            if (DbManger.ExceSQL(strsql))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('修改成功！')</script>", true);
                DataList1.DataBind();
            }
        }
    }
    //计算商品总价
    protected void chk_Select_CheckedChanged(object sender, EventArgs e)
    {
        float total = Calculate();
        lblTotal.Text = total.ToString("c");
    }

    private float Calculate()
    {
        float total = 0;
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            CheckBox check = (CheckBox)DataList1.Items[i].FindControl("chk_Select");

            if (check.Checked)
            {
                Label lblSum = (Label)DataList1.Items[i].FindControl("lbl_sum");

                total += float.Parse(lblSum.Text.Substring(1));
            }
        }
        return total;
    }
    //全选设置
    protected void chkAll_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            CheckBox check = (CheckBox)DataList1.Items[i].FindControl("chk_Select");
            check.Checked = chkAll.Checked;

        }
        lblTotal.Text = Calculate().ToString("C");
    }
}