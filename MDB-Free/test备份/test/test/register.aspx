<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="test.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .top
        {
            margin-top: 50px; margin-bottom:500px;
	      
        }
       .bian
       {
             background:#fff;
            padding:30px;
            border-radius:10px;
            box-shadow:0px 0px 10px 0px #000;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="row top justify-content-center">
       
    	<div class="col-md-4 bian">
    		 <div class="">
	            <div class="form-group">
	                <span>|注册通行证</span>
	            </div>
	            <span class="">简化你的购物流程，让你买得更方便，更安全。</span>
	        </div>

	            <div class=" form-group">
	                <asp:Label ID="lblUser" runat="server" Text="你的用户名：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtAccount" runat="server" CssClass="form-control"></asp:TextBox>
	                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
	                    ControlToValidate="txtAccount" ErrorMessage="用户名必填">用户名不得为空</asp:RequiredFieldValidator>
	            </div>
	            <div class="form-group">
	                <asp:Label ID="lblPassword" runat="server" Text="请设置密码：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
	                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
	                    ErrorMessage="密码必填" ControlToValidate="txtPassword">密码不得为空</asp:RequiredFieldValidator>
	            </div>
	            <div class="form-group">
	                <asp:Label ID="lblRePwd" runat="server" Text="确认密码：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtRePwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
	                <asp:CompareValidator ID="CompareValidator1" runat="server" 
	                    ErrorMessage="密码不一致" ControlToCompare="txtPassword" 
	                    ControlToValidate="txtRePwd">两次密码不一致</asp:CompareValidator>
	            </div>

	            <div class="form-group">
	                <asp:Label ID="lblAddress" runat="server" Text="联系地址：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
	            </div>
	            <div class="form-group">
	                <asp:Label ID="lblTel" runat="server" Text="联系电话：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtTel" runat="server" CssClass="form-control">13678987890</asp:TextBox>
	            </div>
	            <div class="form-group">
	                <asp:Label ID="lblPostCode" runat="server" Text="邮政编码：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control">215104</asp:TextBox>
	                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
	                    ErrorMessage="请输入一个合法的邮政编码" ControlToValidate="txtPostCode" 
	                    ValidationExpression="\d{6}">邮编格式不正确</asp:RegularExpressionValidator>
	            </div>
	            <div class="form-group">
	                <asp:Label ID="lblEmail" runat="server" Text="电子邮箱：" CssClass="control-label"></asp:Label>
	                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control">abc@siit.cn</asp:TextBox>
	                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
	                    ErrorMessage="请输入一个合法的Email" ControlToValidate="txtEmail" 
	                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">邮箱格式不正确</asp:RegularExpressionValidator>
	            </div>
	           
	            <%--<div class="row">--%>
                    <div class="form-group">
                        <asp:Button ID="btnReg" runat="server" Text="完成注册" CssClass="btn btn-block btn-primary" onclick="btnReg_Click" />
	                    <asp:Button ID="btnReset" runat="server" Text="重置" CssClass="btn btn-block btn-primary"/>
                    </div>
	                
	           <%-- </div>--%>

	        </div>
    	
   
<%--        <div class="col-md-2">
            <div>
                已拥有账户？
            </div>
        </div>--%>
    </div>
</asp:Content>
