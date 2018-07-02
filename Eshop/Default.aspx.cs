using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //传值
        //Request
        Response.Write(Request.QueryString["id"].ToString()+"<br>");
        //Appliaction
        Response.Write(Application["count"] + "<br>");
        //Session
        Response.Write(Session["user"].ToString() + "<br>");
        //Cookie
        Response.Write(Request.Cookies["username"].Value);


    }
}
