<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeBehind="myallorder.aspx.cs" Inherits="test.admin.myallorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .item_head
        {
            width: 100px;
            font-family: 微软雅黑;
            font-size: small;
            font-weight: bold;
            text-align: center;
            float: left;
            color: #5AA18F;
            padding-bottom: 5px;
            padding-top: 5px;
        }
        .repeater_head
        {
            width: 740px;
            font-family: 宋体;
            font-size: small;
            font-weight: normal;
            text-align: center;
            float: left;
            color: #5AA18F;
            padding-bottom: 5px;
            padding-top: 5px;
            border-bottom-style: solid;
            border-bottom-width: 2px;
            margin-left: 10px;
        }
        .reapter_item
        {
            width: 740px;
            float: left;
            margin-left: 10px;
        }
        .item_list
        {
            width: 100px;
            font-family: 宋体;
            font-size: small;
            text-align: center;
            float: left;
            height: 30px;
            border-bottom-style: solid;
            border-bottom-width: 2px;
            border-bottom-color: #DDDDDD;
            padding: 10px 0 0 0;
            vertical-align: bottom;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Repeater1_ItemCommand" onitemdatabound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <div class="repeater_head">
                    <div class="item_head">订单号</div>
                    <div class="item_head">收货人</div>
                    <div class="item_head">订单总额</div>
                    <div class="item_head">订单状态</div>
                    <div class="item_head" style=" width:180px">下单时间</div>
                    <div class="item_head">操作</div>
                </div>
            </HeaderTemplate>
                
            <ItemTemplate>
                <div class="reapter_item">
                    <asp:Label ID="lblOrderid" CssClass="item_list" ForeColor="#1A66B3" runat="server" Text='<%# Eval("OrderId") %>'></asp:Label>
                    <asp:Label ID="lblAddressee" CssClass="item_list" runat="server" Text='<%# Eval("Addressee") %>'></asp:Label>
                    <asp:Label ID="lblToal" CssClass="item_list" runat="server" Text='<%# Eval("Total","{0:C}") %>'></asp:Label>
                    <asp:Label ID="lblStatus" CssClass="item_list" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    <asp:Label ID="lblOrderDate" CssClass="item_list" Width="180px" runat="server" Text='<%# Eval("OrderDate","{0:MM/dd/yyyy}") %>'></asp:Label>
                    <asp:LinkButton ID="lbtnOper" CssClass="item_list" runat="server" CommandName="oper">付款</asp:LinkButton>
                    <asp:Label ID="Label6" CssClass="item_list" runat="server" Text="--" Visible="false"></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            
            SelectCommand="SELECT orders.OrderID, orders.userid, orders.ContactId, orders.Total, orders.Status, orders.OrderDate, orders.PayDate, orders.DeliverDate, orders.RexeiptDate, contact.Addressee FROM orders INNER JOIN contact ON orders.ContactId = contact.ContactId WHERE (orders.userid = @userid)">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="userid" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
