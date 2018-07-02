<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" 
        AutoGenerateRows="False" DataKeyNames="MerId" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="MerId" HeaderText="商品编号" ReadOnly="True" 
                SortExpression="MerId">
            <HeaderStyle Font-Bold="True" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="MerName" HeaderText="商品名称" SortExpression="MerName">
            <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="Picture" HeaderText="商品图片">
                <ControlStyle Width="200px" />
                <HeaderStyle Font-Bold="True" />
            </asp:ImageField>
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="商品价格" 
                SortExpression="Price">
            <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="SPrice" DataFormatString="{0:c}" HeaderText="商品现价" 
                SortExpression="SPrice">
            <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="GoodDesc" HeaderText="商品描述" 
                SortExpression="GoodDesc">
            <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="GoodFacturer" HeaderText="商品产地" 
                SortExpression="GoodFacturer">
            <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="LeaveFactoryDate" HeaderText="出厂日期" 
                SortExpression="LeaveFactoryDate">
            <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
        </Fields>
    </asp:DetailsView>

    <div style="text-align:left">
    购买数量:<asp:TextBox ID="txt_Num" runat="server" Width="45px">1</asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/icon06.gif" 
            width="25px" Height="19px" onclick="ImageButton1_Click"/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cart.aspx">查看购物车</asp:HyperLink>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [merchandisc] WHERE ([MerId] = @MerId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MerId" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

