<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCommodity.aspx.cs" Inherits="test.admin.addCommodity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:Label ID="label1" runat="server" Text="栏 目 ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="商品名称"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="商品价格"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="商品说明"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="出 品 商"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="发售日期"></asp:Label>
           <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="商品归属"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label8" runat="server" Text="商品尺寸"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="添加商品" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Picture.aspx">上传商品图片</asp:HyperLink>
        </div>
    </div>
    </form>
</body>
</html>
