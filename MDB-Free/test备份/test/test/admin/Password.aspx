<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="test.admin.Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="panel admin-panel">
        <div class="panel-head"><strong><span class="icon-key"></span> 修改管理员密码</strong></div>
          <div class="body-content">
            <form id="form1"  runat="server" action="" method="post" style=" text-align:center; background-color:#AEEEEE;">
              <div class="form-group">
                <div class="label">
                  <label for="sitename">管理员帐号：</label>
                </div>
                <div class="field">
                    <asp:Label ID="adminName" runat="server" Text=""></asp:Label>
                  
                </div>
              </div>      
              <div class="form-group">
                <div class="label">
                    <label for="sitename">原始密码：</label>
                    <asp:TextBox ID="txtoldPwd" runat="server" Width="240px" Height="36px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              </div>      
              <div class="form-group">
                <div class="label">
                  <label for="sitename">新 密 码：</label>
                    <asp:TextBox ID="txtnewpwd" runat="server" Width="240px" Height="36px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>    
              </div>
              <div class="form-group">
                <div class="label">
                  <label for="sitename">确认密码：</label>
                    <asp:TextBox ID="txtquepwd" runat="server" Width="240px" Height="36px"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>        

              </div>
              <div class="form-group">
                <div class="label">
                  <label></label>
                </div>
                <div class="field">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
                   
                </div>
              </div>      
            </form>
    </div>
    </div>
</body>
</html>
