<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="test.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.form-container
  {
  /*position:absolute;*/
  	margin-top: 100px;
    margin-bottom:100px;
	background:#fff;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px 0px #000;
  
  }
 .bg 
 {
            background: url('../Image/61597814_p0.jpg') no-repeat;
            width: 100%;
            height: 100vh;
            background-size: 200%;
 }
         @media only screen and (max-width:678px)
         {
             .bg{
                 background-size:300%;
             }
         }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg">
        <div class="row justify-content-center" >        
            <div class="col-12 col-sm-8 col-md-5 col-lg-4">
                <div class="form-container">
                    <div class="form-group">
                        <asp:Label ID="lblUsername" runat="server" Text="账 号:" CssClass="control-label"></asp:Label>
                        <%--<span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span>--%>
                        <asp:TextBox ID="txtAccount" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblPassword" runat="server" Text="密  码:" CssClass="control-label" ></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                        
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblCheck" runat="server" Text="验证码：" CssClass="control-label"></asp:Label>
                        <asp:TextBox ID="txtCheckcode" runat="server" CssClass="form-control"></asp:TextBox>
                        <img alt="" src="checkcode.aspx" />
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnLogin" runat="server" Text="登录" 
                            CssClass="btn btn-primary btn-block" onclick="btnLogin_Click"/>
                        <asp:Button ID="btnReg" runat="server" Text="立即注册" 
                            CssClass="btn btn-primary btn-block" onclick="btnReg_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
