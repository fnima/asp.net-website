<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userList.aspx.cs" Inherits="test.admin.userList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>       
	   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="24"><img src="images/ico07.gif" width="20" height="18"alt="" /></td>
			  <td width="519">
              <label>用户名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></label>
                  <asp:Button ID="btn_submit" runat="server"  Text="查 询" 
                      onclick="btn_submit_Click" />
			   <td width="455" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               <td><a href="">添加用户</a></td>	
		    </tr>
         </table>

    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="用户id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="userName" HeaderText="用户名" SortExpression="userName" />
                <asp:BoundField DataField="userPwd" HeaderText="用户密码" SortExpression="userPwd" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="email" HeaderText="邮箱" SortExpression="email" />
                <asp:BoundField DataField="adress" HeaderText="联系地址" SortExpression="adress" />
                <asp:BoundField DataField="zipcode" HeaderText="邮编" SortExpression="zipcode" />
                <asp:BoundField DataField="LoginTimes" HeaderText="登录次数" SortExpression="LoginTimes" />
                <asp:BoundField DataField="regDate" HeaderText="注册时间" SortExpression="regDate" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" DeleteCommand="DELETE FROM [user] WHERE [id] = @id" InsertCommand="INSERT INTO [user] ([userName], [userPwd], [phone], [email], [adress], [zipcode], [LoginTimes], [regDate]) VALUES (@userName, @userPwd, @phone, @email, @adress, @zipcode, @LoginTimes, @regDate)" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [userName] = @userName, [userPwd] = @userPwd, [phone] = @phone, [email] = @email, [adress] = @adress, [zipcode] = @zipcode, [LoginTimes] = @LoginTimes, [regDate] = @regDate WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="userPwd" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="adress" Type="String" />
                <asp:Parameter Name="zipcode" Type="String" />
                <asp:Parameter Name="LoginTimes" Type="Int32" />
                <asp:Parameter Name="regDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="userPwd" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="adress" Type="String" />
                <asp:Parameter Name="zipcode" Type="String" />
                <asp:Parameter Name="LoginTimes" Type="Int32" />
                <asp:Parameter Name="regDate" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
