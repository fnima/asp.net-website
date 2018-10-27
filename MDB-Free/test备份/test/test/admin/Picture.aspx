<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Picture.aspx.cs" Inherits="test.admin.Picture" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style type="text/css">
         .content_frame
	        {
	            border: thin solid #EEEEEE;
	            width: 760px;
	        }
	        .photo_pre
	        {
	            width: 100px;
	            height: 120px;
	            margin-top: 30px;
	            margin-left: 30px;
	            float: left;
	        }
	        .photo_browse
	        {
	            width: 500px;
	            margin-top: 30px;
	            margin-left: 20px;
	            float: left;
	            font-size: small;
	        }
	        .photo_choice
	        {
	            border: 1px solid #AEC7CB;
	            width: 97px;
	            height: 26px;
	            background-color: #F4FEFF;
	            margin-top: 15px;
	        }
	        .photo_load
	        {
	            border-bottom-style: dotted;
	            border-bottom-width: thin;
	            border-bottom-color: #C0C0C0;
	             margin-bottom:10px;
	            height :80px;
	            padding: 10px 0 0 25px;
	        }
</style>
</head>
<body>
    <form id="form1" runat="server">
   
        <div class="content_frame">
        <div class="photo_pre">
            <asp:Label ID="Label9" runat="server" Text="商品图片"></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="118px" Width= "106px" />
        </div>

        <div class="photo_browse">
            <div>
                <ul>
                    <li><span>从你的电脑中上传商品图片：（建议尺寸96*96像素，300k以内）<div class="photo_load">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" />
            </div>
                        </span></li>
                </ul>
            </div>
          </div>
          <div>
                <ul>
                    <li style = "width:342px"> 你可以在下方选择自已喜欢的图片：</li>
                </ul>
            </div>
            <div class="photo_choice">
                <asp:Button ID="Button2" runat="server" Text="保存图片" />
            </div>
        </div>
    </form>
</body>
</html>
