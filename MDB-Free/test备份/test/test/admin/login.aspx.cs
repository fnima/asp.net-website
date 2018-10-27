using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace test.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            #region 用户登录处理
            string check = Request.Cookies["checkcode"].Value.ToString();
            if (check == txtCheckcode.Text)
            {
                #region 使用数据访问类来完成登陆
                string strsql = string.Format("select * from admin where admin_name='{0}' and admin_pwd='{1}'", txtAccount.Text, txtPassword.Text);
                SqlDataReader dr = DbManger.ExceRead(strsql); 
                if (dr.Read())
                {
                    int admin_id = Int32.Parse(dr["admin_id"].ToString());
                    Session.Timeout = 20;
                    Session["admin_id"] = admin_id;
                    Session["admin_name"] = txtAccount.Text;
                    Session["admin_pwd"] = txtPassword.Text;
                    Response.Write("<script>alert('" + Session["admin_name"].ToString() + "用户登录成功！')</script>");
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('用户名密码不正确！')</script>");
                }

                dr.Close();
                #endregion
            }
            else { Response.Write("<script>alert('验证码不正确')</script>"); }


            #endregion
        }
    }
}