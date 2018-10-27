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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            #region 数据操作类

            string strsql = string.Format("select * from [dbo].[user] where userName = '{0}'", txtAccount.Text);
            SqlDataReader myread = DbManger.ExceRead(strsql);
            if (myread.Read())
            {
                Response.Write("<script>alert('该用户已存在！')</script>");
            }
            else
            {
                #region 数据库连接数据库
                string username = txtAccount.Text;
                string pwd = txtPassword.Text;
                string address = txtAddress.Text;
                string tel = txtTel.Text;
                string zip = txtPostCode.Text;
                string email = txtEmail.Text;
                string regDate = DateTime.Now.ToShortDateString();
                strsql = string.Format("insert into [dbo].[user] values ('{0}' ,'{1}','{2}' ,'{3}' ,'{4}' ,'{5}','','{6}')", username, pwd, tel, email, address, zip, regDate);

                //执行命令对象，返回数据阅读器
                if (DbManger.ExceSQL(strsql))
                {
                    RegisterClientScriptBlock("01", "<script>alert('注册成功')</script>");
                    //Response.Write("<script>alert('注册成功')</script>");
                    Response.Redirect("Login.aspx");
                }
                #endregion
            }
            #endregion
        }
    }
}