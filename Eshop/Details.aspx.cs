﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Eshop.APP_Code;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //
        if (Session["userid"] != null || Session["userid"].ToString() != "")
        {
            //
            string strsql = string.Format("select * from cart where Memberid={0} and Merid={1}",Session["userid"],Request.QueryString["id"]);
            DataSet ds = DbManger.GetDataSet(strsql,"cart");
            DataTable dt = ds.Tables["cart"];
            if (dt.Rows.Count > 0)
            {
                //
                int num = Int32.Parse(dt.Rows[0]["Amount"].ToString()) + Int32.Parse(txt_Num.Text);
                strsql = string.Format("update cart set Amount={0} where Memberid={1} and Merid={2}", num,Session["userid"], Request.QueryString["id"]);
                if (DbManger.ExceSQL(strsql))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('更新数量成功！')</script>", true);
                }
            }
            else
            {
                float price = float.Parse(DetailsView1.Rows[4].Cells[1].Text.Substring(6));
                strsql = string.Format("insert into cart values({0},{1},{2},{3})", Session["userid"], Request.QueryString["id"], Int32.Parse(txt_Num.Text),price);
                if (DbManger.ExceSQL(strsql))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('添加商品成功！')</script>", true);
                }
            }

        }
        else
            Response.Redirect("Login.aspx");
    }
}