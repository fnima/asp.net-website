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
    public partial class Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_name"] == null || Session["admin_name"].ToString() == "")

        {

            Response.Redirect("login.aspx");

        }

        else

        {

            string userName = Session["admin_name"].ToString();//定义变量接受用户登录传过来的值

            this.adminName.Text = userName;

            string userPwd = Session["admin_pwd"].ToString();

            this.txtoldPwd.Text = userPwd;

        }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userPwd = Session["admin_pwd"].ToString();//数据库中的密码（原密码）

            string oldPwd = this.txtoldPwd.Text;//用户填写的原密码

            string newPwd1 = this.txtnewpwd.Text;//用户填写的新密码

            string newPwd2 = this.txtquepwd.Text;//用户填写的确认密码

            if (newPwd1 == "" || newPwd2 == "")
                //this.Label2.Text = "密码不能为空";

                Response.Write("<script>alert('密码不能为空')</script>");

            else
            {

                if (oldPwd != userPwd)
                {
                    //this.Label1.Text = "密码错误，请重新输入";
                    Response.Write("<script>alert('密码错误，请重新输入')</script>");
                }

                else
                {

                    if (!newPwd1.Equals(newPwd2))
                    {
                        //this.Label1.Text = "两次密码不一致!请重新输入!";
                         Response.Write("<script>alert(\"两次密码不一致!请重新输入!\");</script>");
                    }

                    else
                    {
                        //读取web.config配置文件数据库连接字符串
                        string strConstring = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        //创建sql数据库连接对象
                        SqlConnection conn = new SqlConnection();
                        conn.ConnectionString = strConstring;
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = conn;

                        string strsql = string.Format("update  admin set admin_pwd='{0}'  where admin_id='{1}' and admin_name='{2}'", newPwd1, Session["admin_id"].ToString(), Session["admin_name"].ToString());
                        //string sql = "update users set userPwd='" + newPwd1 + "' where userName='" + this.lbl_userName.Text + "'";
                       // SqlDataReader dr = DbManger.ExceRead(strsql);
                        cmd.CommandText = strsql;
                        conn.Open();
                        int i = (int)cmd.ExecuteNonQuery();
                        if (i>0)
                        {

                            Response.Write("<script>alert(\"密码修改成功!,必须重新登录\");</script>");

                            Server.Transfer("login.aspx");

                        }

                        else
                        {

                            Response.Write("<script>alert(\"更新失败!\");</script>");

                        }
                        conn.Close();
                    }
                }
            }
        }
    }
}