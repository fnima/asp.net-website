<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test.admin.login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="css/Login.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
   .bg 
 {
            background: url('../Image/60895189_p0.png') no-repeat;
            width: 100%;
            height: 100vh;
            background-size: 100%;
 }
   stop{

   }
    </style>

</head>
<body>
    <div >
    <form id="form1" runat="server" style="text-align:center">
        <div class=" container-fluid bg">
            <div class="row justify-content-center">
                 <div style="background-color:aqua">
                <div class="login_head">
                <span>
                    <%--<img alt="" src="Image/login.JPG" style=" width:35px; height:27px"/>--%>

                </span>
                </div>
                <div class="">
                    <div class="login_frame">
                    <div class="form_row">
                        <p class=" text-center">后台管理</p>
                        <asp:Label ID="lblUsername" runat="server" Text="登录名：" CssClass="leftlabel"></asp:Label>
                        <asp:TextBox ID="txtAccount" runat="server" CssClass="rightInput" Width="138px"></asp:TextBox>
                    </div>
                    <div class="form_row">
                        <asp:Label ID="lblPassword" runat="server" Text="密  码：" CssClass="leftlabel"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="rightInput" 
                            Width="138px"></asp:TextBox>
                    </div>
                    <div class="form_row">
                        <asp:Label ID="lblCheck" runat="server" Text="验证码：" CssClass="leftlabel"></asp:Label>
                        <asp:TextBox ID="txtCheckcode" runat="server" CssClass="rightInput" 
                            Width="139px"></asp:TextBox>
                             <img alt="" src="checkcode.aspx" />
                    </div>
                    <div class="form_row">
                        <asp:Button ID="btnLogin" runat="server" Text="进入后台" CssClass="loginbtn" 
                            onclick="btnLogin_Click" />
                    </div>
                </div>
                </div>
        
            </div>
            </div>
        </div>
           
    </form>
    </div>
</body>
</html>
