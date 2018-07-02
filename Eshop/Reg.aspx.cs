using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Eshop.APP_Code;
public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        #region
        //String str = "注册信息为<br/>";
        //str +="用户账号："+ txtAccount.Text +"<br/>";
        //str += "出生年月：" + txtBirth.Text + "<br/>";
        //str += "联系地址：" + txtAddress.Text + "<br/>";
        //str += "联系电话：" + txtTel.Text + "<br/>";
        //str += "电子邮箱：" + txtEmail.Text + "<br/>";
        //str += "邮政编码：" +txtPostCode.Text + "<br/>";
        //str += "性别：" + rdolSex.SelectedValue + "<br/>";
        //str += "学历：" + ddlEdu.SelectedValue+ "<br/>";
        //String strAttention = "你关注的类型为：";
        //for (int i = 0; i < chlAttention.Items.Count;i++ )
        //{
        //    if(chlAttention.Items[i].Selected)
        //    {
        //        strAttention += chlAttention.Items[i].Text + "";
        //    }
        //}
        //str += strAttention;
        ////Response.Write(str);
        //Response.Write("<script>alert('"+str+"')</script>");
        #endregion

        #region 检测同名用户 
        /**
        //创建连接对象
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        con.Open();

        //创建命令对象
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = string.Format("select * from member where LoginName = '{0}'", txtAccount.Text);

        //执行命令对象，返回数据阅读器
        SqlDataReader dr = com.ExecuteReader();
        if (dr.HasRows)
        {
            Response.Write("<script>alert('该用户已存在！')</script>");
        }
       
        else
        {
            #region 数据库连接数据库
            string username = txtAccount.Text;
            string pwd = txtPassword.Text;
            string sex = rdolSex.SelectedItem.ToString();
            string birth = txtBirth.Text;
            string educate = ddlEdu.SelectedItem.ToString();
            string address = txtAddress.Text;
            string tel = txtTel.Text;
            string zip = txtPostCode.Text;
            string email = txtEmail.Text;
            string regdate = DateTime.Now.ToShortDateString();
            string strSql = string.Format("insert into member values (0,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','',0,'')", username, pwd, sex, birth,educate,tel,address,zip,email,regdate);
            //创建连接对象
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            cn.Open();

            //创建命令对象
            SqlCommand cm = new SqlCommand();
            cm.Connection = cn;
            cm.CommandText = strSql;

            //执行命令对象，返回数据阅读器
            if (cm.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('注册成功')</script>");
            }
            #endregion
        }
        #endregion
        #region dataset对象，断开式连接
        //创建连接对象
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        conn.Open();

        //创建命令对象
        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandText = string.Format("select * from member where LoginName = '{0}'", txtAccount.Text);

        DataSet ds= new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = comm;
        da.Fill(ds,"member");
        if (ds.Tables["member"].Rows.Count > 0)
        {
            Response.Write("<script>alert('该用户已存在！')</script>");
        }
        else
        {
            #region 数据库连接数据库
            string username = txtAccount.Text;
            string pwd = txtPassword.Text;
            string sex = rdolSex.SelectedItem.ToString();
            string birth = txtBirth.Text;
            string educate = ddlEdu.SelectedItem.ToString();
            string address = txtAddress.Text;
            string tel = txtTel.Text;
            string zip = txtPostCode.Text;
            string email = txtEmail.Text;
            string regdate = DateTime.Now.ToShortDateString();
            string strSql = string.Format("insert into member values (0,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','',0,'')", username, pwd, sex, birth, educate, tel, address, zip, email, regdate);
            //创建连接对象
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            cn.Open();

            //创建命令对象
            SqlCommand cm = new SqlCommand();
            cm.Connection = cn;
            cm.CommandText = strSql;

            //执行命令对象，返回数据阅读器
            if (cm.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('注册成功')</script>");
            }
            #endregion
        }**/
        #endregion

        #region 数据操作类

        string strsql = string.Format("select * from member where LoginName = '{0}'", txtAccount.Text);
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
            //string sex = rdolSex.SelectedItem.ToString();
            string birth = txtBirth.Text;
            //string educate = ddlEdu.SelectedItem.ToString();
            string address = txtAddress.Text;
            string tel = txtTel.Text;
            string zip = txtPostCode.Text;
            string email = txtEmail.Text;
            string regdate = DateTime.Now.ToShortDateString();
            strsql = string.Format("insert into member values (0,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','',0,'')", username, pwd, birth, tel, address, zip, email, regdate);
           

            //执行命令对象，返回数据阅读器
            if (DbManger.ExceSQL(strsql))
            {
                Response.Write("<script>alert('注册成功')</script>");
            }
            #endregion
        }
        #endregion
    }
}