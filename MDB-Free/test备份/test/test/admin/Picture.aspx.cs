using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test.admin
{
    public partial class Picture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //1.判断是否选择文件
            if (FileUpload1.HasFile)
            {
                //2.是否选择图片
                string strtype = FileUpload1.PostedFile.ContentType;
                if (strtype == "image/jpeg")
                {
                    //3.上传图片到服务器的指定文件
                    string filename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                    string imgurl = "img/" + filename + ".jpg";
                    FileUpload1.SaveAs(Server.MapPath(imgurl));
                    Image1.ImageUrl = imgurl;

                    //4.将头像的地址保存到对应用户的数据表记录中
                    string strsql = string.Format("update commodity set c_Picture='{0}' where LoginName='{1}'", imgurl, Session["username"]);
                    if (DbManger.ExceSQL(strsql))
                        Response.Write("<script>alert('头像更新成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('请选择图片类文件')<script");
                }
            }
            else
            {
                Response.Write("<script>alert('请选择文件')<script");
            }
        }
    }
}