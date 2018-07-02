<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="myhome_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
	            width: 500px;
	            height: 200px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>更新个人资料</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_frame">
    <div class="photo_pre">
        <asp:Image ID="Image1" runat="server" Height="109px" Width= "93px" />
    </div>

    <div class="photo_browse">
        <div>
            <ul>
                <li><span>从你的电脑中上传图片作为头像：（建议尺寸96*96像素，300k以内）</span></li>
            </ul>
        </div>
        <div class="photo_load">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" />
        </div>
    </div>
    <div>
        <ul>
            <li style = "width:224px"> 你可以在下方选择自已喜欢的头像：</li>
        </ul>
    </div>
    <div class="photo_choice">
        <asp:Button ID="Button2" runat="server" Text="保存头像" />
    </div>
</div>

</asp:Content>

