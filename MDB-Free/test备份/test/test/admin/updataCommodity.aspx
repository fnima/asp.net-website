<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updataCommodity.aspx.cs" Inherits="test.admin.updataCommodity" %>

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
              <label>商品名称:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></label>
                  <asp:Button ID="btn_select" runat="server" Text="查询" 
                      onclick="btn_select_Click" />
			   <td width="455" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               <td><a href="addCommodity.aspx">添加商品</a></td>	
		    </tr>
         </table>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="c_id" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" 
            BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
            GridLines="None">
            <Columns>
                <asp:BoundField DataField="c_id" HeaderText="商品ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="c_id" />
                <asp:BoundField DataField="itme_id" HeaderText="栏目ID" 
                    SortExpression="itme_id" />
                <asp:BoundField DataField="c_name" HeaderText="商品名称" SortExpression="c_name" />
                <asp:BoundField DataField="c_price" DataFormatString="{0:c}" HeaderText="商品价格" 
                    SortExpression="c_price" />
                <asp:BoundField DataField="c_Picture" HeaderText="商品图片" 
                    SortExpression="c_Picture" />
                <asp:BoundField DataField="c_content" HeaderText="商品说明" 
                    SortExpression="c_content" />
                <asp:BoundField DataField="c_Publisher" HeaderText="出品商" 
                    SortExpression="c_Publisher" />
                <asp:BoundField DataField="c_releaseDate" HeaderText="发售日期" 
                    SortExpression="c_releaseDate" />
                <asp:BoundField DataField="c_types" HeaderText="商品归属" 
                    SortExpression="c_types" />
                <asp:BoundField DataField="c_size" HeaderText="商品尺寸" SortExpression="c_size" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            DeleteCommand="DELETE FROM [commodity] WHERE [c_id] = @c_id" 
            InsertCommand="INSERT INTO [commodity] ([itme_id], [c_name], [c_price], [c_Picture], [c_content], [c_Publisher], [c_releaseDate], [c_types], [c_size]) VALUES (@itme_id, @c_name, @c_price, @c_Picture, @c_content, @c_Publisher, @c_releaseDate, @c_types, @c_size)" 
            SelectCommand="SELECT * FROM [commodity]" 
            UpdateCommand="UPDATE [commodity] SET [itme_id] = @itme_id, [c_name] = @c_name, [c_price] = @c_price, [c_Picture] = @c_Picture, [c_content] = @c_content, [c_Publisher] = @c_Publisher, [c_releaseDate] = @c_releaseDate, [c_types] = @c_types, [c_size] = @c_size WHERE [c_id] = @c_id">
            <DeleteParameters>
                <asp:Parameter Name="c_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="itme_id" Type="Int32" />
                <asp:Parameter Name="c_name" Type="String" />
                <asp:Parameter Name="c_price" Type="Decimal" />
                <asp:Parameter Name="c_Picture" Type="String" />
                <asp:Parameter Name="c_content" Type="String" />
                <asp:Parameter Name="c_Publisher" Type="String" />
                <asp:Parameter Name="c_releaseDate" Type="String" />
                <asp:Parameter Name="c_types" Type="String" />
                <asp:Parameter Name="c_size" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="itme_id" Type="Int32" />
                <asp:Parameter Name="c_name" Type="String" />
                <asp:Parameter Name="c_price" Type="Decimal" />
                <asp:Parameter Name="c_Picture" Type="String" />
                <asp:Parameter Name="c_content" Type="String" />
                <asp:Parameter Name="c_Publisher" Type="String" />
                <asp:Parameter Name="c_releaseDate" Type="String" />
                <asp:Parameter Name="c_types" Type="String" />
                <asp:Parameter Name="c_size" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
