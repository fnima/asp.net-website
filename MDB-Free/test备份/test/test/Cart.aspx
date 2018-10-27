 <%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="test.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">  
  
 

  
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

     <div class="container text-center">
        <div class="row">
            <div class="col-md-12 my-3 text-left">
                <div class="card">
                    <div class="card-body">
	                <!-- Shopping Cart table -->
	                <div class="table-responsive">
                        <table class="">
                            <asp:DataList ID="DataList1" runat="server" CssClass="table product-table" DataKeyField="CartId" 
                            DataSourceID="SqlDataSource1" ondeletecommand="DataList1_DeleteCommand" 
                            onitemcommand="DataList1_ItemCommand" onitemcreated="DataList1_ItemCreated" 
                            onitemdatabound="DataList1_ItemDataBound">
                                <%--TABLE - HEAD--%>
                                <HeaderTemplate>	
                                     <thead class="mdb-color lighten-5">
	                                        <tr>
	                                            <th></th>
	                                            <th class="font-weight-bold">
	                                                <strong>商品名称</strong>
	                                            </th>
	                                            <th class="font-weight-bold">
	                                                <strong>商品价格</strong>
	                                            </th>
	                                            <th></th>
	                                            <th class="font-weight-bold">
	                                                <strong>数量</strong>
	                                            </th>
	                                            <th class="font-weight-bold">
	                                                <strong>小计</strong>
	                                            </th>
	                                            <th class="font-weight-bold">
	                                                <strong>操作</strong>
	                                            </th>
	                                            <th></th>
	                                        </tr>
	                                    </thead>
                                </HeaderTemplate>
	                              <%--TABLE - HEAD--%> 

                                <ItemTemplate>
                                    <tr>
                                                <td>
                                                    <asp:CheckBox ID="chk_Select" runat="server" AutoPostBack="True"
                                    oncheckedchanged="chk_Select_CheckedChanged" Text='<%# Eval("comid") %>' />
                                                    
                                                </td>
	                                            <th scope="row">
	                                                <img src='<%# Eval("c_Picture", "{0}") %>' alt="" class="img-fluid z-depth-0">
	                                            </th>
	                                            <td>
	                                                <h5 class="mt-3">
	                                                    <strong>'<%# Eval("c_name") %>'</strong>
	                                                </h5>
	                                                <p class="text-muted">Apple</p>
	                                            </td>
	                                            <td>
                                                   <asp:Label ID="lbl_price" runat="server" Text='<%# Eval("c_price","{0:c}") %>'></asp:Label>

	                                            </td>
	                                            
	                                            <td>
                                                     <asp:TextBox ID="txt_num" runat="server" Text='<%# Eval("amout") %>' Width="71px"></asp:TextBox>
                                                    <asp:Button ID="btnModify" runat="server" Text="修改" CommandName="operNum" />

	                                            </td>
	                                            <td class="center-on-small-only">
	                                                <span class="qty"><asp:Label ID="lbl_sum" runat="server" Text="Label"></asp:Label></span>
	                                                <%--<div class="btn-group radio-group ml-2" data-toggle="buttons">
	                                                    <label class="btn btn-sm btn-primary btn-rounded waves-effect waves-light">
	                                                        <input type="radio" name="options" id="option1">—
	                                                    </label>
	                                                    &nbsp;&nbsp;&nbsp;&nbsp;<label class="btn btn-sm btn-primary btn-rounded waves-effect waves-light active"><input type="radio" name="options" id="option2">+
	                                                    </label>
	                                                &nbsp;&nbsp;&nbsp;&nbsp;</div>--%>
	                                            </td>
	                                            <td class="font-weight-bold">

	                                                <strong>
                                                        <asp:Button ID="btn_oper" runat="server" Text="删除" CommandName="Delete" />
	                                                </strong>
	                                            </td>
	                                            <td>
                                                      
	                                                <%--<button type="button" class="btn btn-sm btn-primary waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" data-original-title="Remove item">X
	                                                </button>--%>
	                                            </td>
	                                        </tr>




                                    
                        
                                </ItemTemplate>
                            </asp:DataList>
                             



                        </table>

                    </div>
                        666666
                </div>
                    233
                </div>
                
            </div>

            <div class="frame">
	     <%--   <div class="title_bar">
	            <img alt="" src="Image/shopcart.gif" style="width: 150px; height: 32px; float: left;" />
	        </div>
	        <div class="title_demo">
	            如果您对购物车里面的商品满意，请点击结算
	        </div>--%>
	        <div class="cart_content">
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                    SelectCommand="SELECT cart.CartId, cart.userid, cart.comid, cart.amout, commodity.c_name, commodity.c_price, commodity.c_Picture FROM cart INNER JOIN commodity ON cart.comid = commodity.c_id WHERE (cart.userid = @userid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="userid" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>

	            <div class="cart_footer">
	            <div style="float: left; width: 100px; text-align: left; height: 100%">
	              <asp:CheckBox ID="chkAll" runat="server" Text="全选" AutoPostBack="True" 
                        oncheckedchanged="chkAll_CheckedChanged" EnableViewState="False" />
                    <asp:CheckBox ID="zzzzz" runat="server" Text="0.0" />
                    <asp:CheckBox ID="check11111111"
Text="Same as home phone" TextAlign="Right"

runat="server" />
	                </div>
	                <div style="float: right;">
	                    <asp:Button ID="btnShop" runat="server" Text="继续购物" CssClass="btn" Width="150px" />
	                    <asp:Button ID="btnOrder" runat="server" Text="结算" CssClass="btn" Width="100px"
                            onclick="btnOrder_Click" />
	                </div>
	                    <div style="float: left; width: 150px; height: 25px; vertical-align: bottom; padding-top: 5px">
                            <asp:Label ID="lblTotal" runat="server" Text="商品金额总计："></asp:Label>
	 
	                </div>
	            </div>

	        </div>
        </div>
    </div>
        
</asp:Content>
