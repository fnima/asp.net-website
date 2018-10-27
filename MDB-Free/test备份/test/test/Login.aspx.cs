using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace test
{
    public partial class Login : System.Web.UI.Page
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
                string strsql = string.Format("select *  FROM [dbo].[user] where userName='{0}' and userPwd='{1}'", txtAccount.Text, txtPassword.Text);
                SqlDataReader dr = DbManger.ExceRead(strsql); ;
                if (dr.Read())
                {
                    int userid = Int32.Parse(dr["id"].ToString());
                    Session.Timeout = 20;
                    Session["userid"] = userid;

                    Session["username"] = txtAccount.Text;
                    Response.Write("<script>alert('" + Session["username"].ToString() + "用户登录成功！')</script>");

                    string sql = string.Format("update [dbo].[user] set LoginTimes=LoginTimes+1 where id={0}", userid);

                    if (DbManger.ExceSQL(sql))
                    {
                        Response.Write("<script>alert('更新成功!')</script>");
                        //Response.Redirect("myhome/UpdatePic.aspx");
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('不成功!')</script>");
                    }
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

        protected void btnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}