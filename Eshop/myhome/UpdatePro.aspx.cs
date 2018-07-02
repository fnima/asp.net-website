using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;
using Eshop.APP_Code;
public partial class myhome_UpdatePro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //1.判断是否有用户
        if (Session["userid"] != null && Session["userid"].ToString() != "")
        {
            if(!IsPostBack){
            string strsql = string.Format("select * from member where id = '{0}'", Session["userid"].ToString());

            SqlDataReader dr = DbManger.ExceRead(strsql);
            if(dr.Read())
            {
                txtUser.Text = dr["LoginName"].ToString();
                txtPassword.Text = dr["LoginPwd"].ToString();

                if (dr["Sex"].ToString() == "男")
                    radlSex.SelectedIndex = 0;
                else if (dr["Sex"].ToString() == "女")
                    radlSex.SelectedIndex = 1;
                txtBirth.Text = dr["Birth"].ToString();

                switch (dr["Eduation"].ToString())
                {
                    case "大专": dropEducation.SelectedIndex = 0; break;
                    case "本科": dropEducation.SelectedIndex = 1; break;
                    case "硕士": dropEducation.SelectedIndex = 2; break;
                    case "博士": dropEducation.SelectedIndex = 3; break;
                    default: dropEducation.SelectedIndex = 0; break;
                }
                txtAddress.Text = dr["Address"].ToString();
                txtCall.Text = dr["Phone"].ToString();
                txtEmail.Text = dr["Email"].ToString();
                txtZip.Text = dr["Zip"].ToString();
                Image1.ImageUrl = dr["head"].ToString();
                }

            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        string loginname = txtUser.Text;
        string loginpwd = txtPassword.Text;
        string sex = radlSex.SelectedValue;
        string birth = txtBirth.Text;
        string educate = dropEducation.SelectedValue;
        string phone = txtCall.Text;
        string address = txtAddress.Text;
        string zip = txtZip.Text;
        string email = txtEmail.Text;
        string lasttime = DateTime.Now.ToShortDateString();
        string head = Image1.ImageUrl;
        //2.选择图片
         if (FileUpload1.HasFile)
        {
            
                //3.上传图片到服务器的指定文件
                string filename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                FileUpload1.SaveAs(Server.MapPath("..")+"\\img\\"+ filename +".jsp");
             if(head != null && address != ""){
                 File.Delete(Server.MapPath("..")+"\\"+head);
                 head = "img/" + filename + ".jsp";
             }
            

                //4.将头像的地址保存到对应用户的数据表记录中
             string strsql = string.Format("update member set LoginName='{0}',LoginPwd='{1}',sex='{2}',Birth='{3}',Eduation='{4}',phone='{5}',Address='{6}',Zip='{7}',Email='{8}',LastDate='{9}',head='{10}' where id={11}",loginname,loginpwd,sex,birth,educate,phone,address,zip,email,lasttime,head,Session["userid"].ToString());
             if (DbManger.ExceSQL(strsql))
                 RegisterClientScriptBlock("01","<script>alert('用户资料修改成功！')</script>");
                 Response.Redirect("..\\login.aspx"); 
            }
    }
}