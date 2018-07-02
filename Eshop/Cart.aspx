<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">  
   .title_demo
        {
            margin: 10px 0px 0px 0px;
            font-family: 宋体;
            font-size: small;
            padding-left: 20px;
            color: #6C6C6C;
            text-align: left;
        }
        .cart_item_frame
        {
            border-top: 1px solid #D0EAFF;
        border-bottom: 1px solid #D0EAFF;
width: 988px;
            background-color: #FAFFFF;
            text-align: left;
            vertical-align: middle;
        height: 69px;
    }
        .product_name
        {
            vertical-align: middle;
            padding-left: 20px;
            float: left;
            padding-top: 20px;
            width: 250px;
        }
        .cart_footer
        {
            text-align: right;
            width: 960px;
            padding: 0 10px 0 10px;
            margin-top: 10px;
            background-color: #FAFFFF;
            vertical-align: bottom;
        }
        .frame
        {
            width: 1000px;
            text-align: center;
        }
        .btn
        {
            height: 27px;
            width: 70px;
            color: #FFFFFF;
            font-weight: bold;
            border: 1px outset #999999;
            background-color: #59A9BF;
            margin-left: 5px;
        }
        .chk_frame
        {
            width: 44px;
            float: left;
            height: 22px;
            padding-top: 30px;
        }
        .picture_frame
        {
            width: 61px;
            float: left;
            height: 35px;
        }
        .price_frame
        {
            width: 80px;
            float: left;
            padding-left: 0px;
            padding-top: 20px;
            text-align: center;
        }
        .sprice_frame
        {
            width: 150px;
            float: left;
            padding-left: 20px;
            padding-top: 20px;
            margin-left: 30px;
        }
        .sum_frame
        {
            float: left;
            width: 80px;
            padding-left: 20px;
            padding-top: 20px;
        }
        .oper_frame
        {
            float: left;
            width: 80px;
            padding-left: 20px;
            padding-top: 20px;
        }
        .cart_head_frame
        {
            width: 980px;
            border-top-style: solid;
            border-top-width: 1px;
            border-top-color: #D0EAFF;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: #D0EAFF;
            background-color: #EEEEEE;
            text-align: left;
            vertical-align: middle;
            height: 30px;
            font-family: 微软雅黑;
            font-size: small;
            font-weight: bold;
            color: #333300;
        }
        .cart_content
        {
        	 width:100%;
        }
        .title_bar
        {
        	width:150px;
        	height :32px;
        	float :left ;
        }
  .head_item
        {
            width: 80px;
            text-align: center;
            padding-top: 5px;
            float: left;
            font-size: medium;
            padding-left: 20px;
        }
        .style1
        {
            width: 100%;
            float: left;
            text-align: left;
        }
   .product_frame
        {
            vertical-align: middle;
            padding-left: 30px;
            float: left;
            padding-top: 20px;
            width: 250px;
        }
        .num_frame
        {
            width: 109px;
            float: left;
            padding-left: 20px;
            padding-top: 20px;
            margin-left: 30px;
        }
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="frame">
	        <div class="title_bar">
	  <img alt="" src="image/shopcart.gif" style="width: 150px; height: 32px; float: left;" />
	        </div>
	        <div class="title_demo">
	            如果您对购物车里面的商品满意，请点击结算
	        </div>
	        <div class="cart_content">
                <asp:DataList ID="DataList1" runat="server" Width="100%" DataKeyField="CartId" 
                    DataSourceID="SqlDataSource1" ondeletecommand="DataList1_DeleteCommand" 
                    onitemcreated="DataList1_ItemCreated" 
                    onitemdatabound="DataList1_ItemDataBound" onitemcommand="DataList1_ItemCommand">
                    <HeaderTemplate>
                        <div class="cart_head_frame">
                            <div style="width:400px;"  class="head_item">
                            商品名称
                            </div>
                            <div class="head_item">
                            E 商城价
                            </div>
                            <div class="head_item">
                            数量
                            </div>
                            <div class="head_item">
                            小计
                            </div>
                            <div class="head_item">
                            操作
                            </div>
                        </div>
                    </HeaderTemplate>



                    <ItemTemplate>
                        <div class="cart_item_frame">
                            <div class="chk_frame">
                                <asp:CheckBox ID="chk_Select" runat="server" Text='<%# Eval("MerId") %>' 
                                    AutoPostBack="True" oncheckedchanged="chk_Select_CheckedChanged" />
                            </div>
                            <div class="picture_frame">
                                <asp:Image ID="Img_Product" runat="server" ImageUrl='<%# Eval("Picture") %>' 
                                    Height="38px" Width="62px" />
                            </div>
                            <div class="product_frame">
                                <asp:HyperLink ID="h1_perLink" runat="server" 
                                    NavigateUrl='<%# Eval("MerId","Details.aspx?id={0}") %>' 
                                    Text='<%# Eval("MerName") %>'></asp:HyperLink>
                            </div>
                            <div class="price_frame">
                                <asp:Label ID="lbl_price" runat="server" Text='<%# Eval("Price","{0:c}") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl_sprice" runat="server" Text='<%# Eval("SPrice","{0:c}") %>'></asp:Label>
                            </div>
                            <div class="sprice_frame">
                                <asp:TextBox ID="txt_num" runat="server" Text='<%# Eval("Amount") %>'></asp:TextBox>
                                <asp:Button ID="btnModify" runat="server" Text="修改数量" CommandName="operNum" />
                            </div>
                            <div class="sum_frame">
                                <asp:Label ID="lbl_sum" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="oper_frame">
                                <asp:Button ID="btn_oper" runat="server" Text="删除" CommandName="Delete" />
                            </div>
                        </div>
                    </ItemTemplate>



                </asp:DataList>
	            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT cart.CartId, cart.MemberId, cart.MerId, cart.Amount, merchandisc.MerName, merchandisc.Price, merchandisc.SPrice, merchandisc.Picture FROM cart INNER JOIN merchandisc ON cart.MerId = merchandisc.MerId WHERE (cart.MemberId = @MenberId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="MenberId" SessionField="userid" />
                    </SelectParameters>
                </asp:SqlDataSource>
	        </div>
	        <div class="cart_footer">
	        <div style="float: left; width: 80px; text-align: left; height: 100%">
	          <asp:CheckBox ID="chkAll" runat="server" Text="全选" AutoPostBack="True" 
                    oncheckedchanged="chkAll_CheckedChanged" />
	            </div>
	            <div style="float: right;">
	                <asp:Button ID="btnShop" runat="server" Text="继续购物" CssClass="btn" />
	                <asp:Button ID="btnOrder" runat="server" Text="结算" CssClass="btn" OnClick="Button2_Click" />
	            </div>
	  <div style="float: left; width: 150px; height: 25px; vertical-align: bottom; padding-top: 5px">
          <asp:Label ID="Label1" runat="server" Text="商品金额总计："></asp:Label>
	  <asp:Label ID="lblTotal" runat="server" Text="" Font-Names="黑体" Font-Size="Small"></asp:Label>
	            </div>
	        </div>
	    </div>


</asp:Content>

