using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Drawing;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
namespace test
{
    public partial class checkcode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CreateCheckCodeImages(GeneratecheckCodes());
        }

       private string GeneratecheckCodes()
    {
        #region 生成随机数
        int number;
        char code;
        string checkCode = string.Empty;
        Random random = new Random();
        for (int i = 0; i < 5; i++)
        {
            number = random.Next(10);
            code = (char)('0' + (char)number);
            checkCode += code.ToString();//生成5位随机数
        }
        //将随机数添加到客户端cookie中
        Response.Cookies.Add(new HttpCookie("checkCode", checkCode));
        ////将随机数输出
        //Response.Write(Request.Cookies["checkCode"].Value);
        #endregion

        return checkCode;
    }

    private void CreateCheckCodeImages(string checkCode)
    {
        if(checkCode == null || checkCode.Trim()==string.Empty){
            return;
        }
         #region 生成图片框
            
        Random random = new Random();
            //1.工具准备
        Bitmap image = new Bitmap((int)Math.Ceiling(checkCode.Length*12.5),22);
        Graphics g = Graphics.FromImage(image);
        Pen pen = new Pen(Color.Blue, 3);

        g.Clear(Color.White);

        //添加背景噪音线
        for (int i = 0; i < 50; i++)
        {
            int x1 = random.Next(image.Width);
            int y1 = random.Next(image.Height);
            int x2 = random.Next(image.Width);
            int y2 = random.Next(image.Height);
            g.DrawLine(new Pen(Color.Orange), x1, y1, x2, y2);
        }
        //添加前景噪音线
        for (int i = 0; i < 400; i++)
        {
            int x = random.Next(image.Width);
            int y = random.Next(image.Height);
            image.SetPixel(x, y, Color.FromArgb(random.Next()));
        }

        //画图，矩形
        g.DrawRectangle(pen,0,0,image.Width,image.Height);
        //将随机数放在图片框中
        Font font = new Font("Verdana", 12, FontStyle.Bold|FontStyle.Italic);
        LinearGradientBrush brush = new LinearGradientBrush(new Rectangle(0,0,image.Width,image.Height),Color.Blue,Color.DarkRed,1.2f,true);
        g.DrawString(checkCode,font,brush,2,2);

        
        //为图形图像创建区域保留为流
        MemoryStream ms = new MemoryStream();
        image.Save(ms,ImageFormat.Gif);
        Response.ContentType = "image/Gif";
        Response.BinaryWrite(ms.ToArray());

        //输出
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        image.Dispose();    
        
        #endregion

        }
    }
}