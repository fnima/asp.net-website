<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="test.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="justify-content-center">
                 <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" 
    Width="100%" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="c_id" 
    DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />

        <Fields>
            
            
            <asp:ImageField DataImageUrlField="c_Picture" HeaderText="商品图片">
                <ControlStyle Height="450px" Width="410px" />
            </asp:ImageField>
            <asp:BoundField DataField="c_id" HeaderText="商品编号" InsertVisible="False" 
                ReadOnly="True" SortExpression="c_id" />
            <asp:BoundField DataField="c_name" HeaderText="商品名称" SortExpression="c_name" />
            <asp:BoundField DataField="c_Publisher" HeaderText="出品商" 
                SortExpression="c_Publisher" />
            <asp:BoundField DataField="c_releaseDate" DataFormatString="{0:d}" 
                HeaderText="发售日期" SortExpression="c_releaseDate" />
            <asp:BoundField DataField="c_types" HeaderText="商品归属" 
                SortExpression="c_types" />
            <asp:BoundField DataField="c_size" HeaderText="商品尺寸" SortExpression="c_size" />
            <asp:BoundField DataField="c_content" HeaderText="商品说明" 
                SortExpression="c_content" />
            <asp:BoundField DataField="c_price" DataFormatString="{0:c}" HeaderText="商品价格" 
                SortExpression="c_price" />
        </Fields>

        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
    SelectCommand="SELECT * FROM [commodity] WHERE ([c_id] = @c_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="c_id" QueryStringField="c_id" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>

    <div style="text-align:left">
    购买数量:<asp:TextBox ID="txt_Num" runat="server" Width="45px">1</asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Image/icon06.gif"
            width="25px" Height="19px" onclick="ImageButton1_Click"/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cart.aspx">查看购物车</asp:HyperLink>
    </div>
            </div>
        </div>
    </div>
   

    


</asp:Content>
