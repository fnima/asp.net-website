<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<%--<asp:Label ID="lblText" runat="server" Text="关键字：">
    </asp:Label><asp:TextBox ID="txtKey" runat="server">
    </asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="Go" 
        onclick="btnSearch_Click" />

    <asp:GridView ID="GridView1" runat="server" Width="100%" 
       <%-- AutoGenerateColumns="False" DataKeyNames="MerId" 
        CssClass=""
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" 
        PageSize="5">
        <Columns>
            <asp:ImageField DataImageUrlField="Picture" HeaderText="图片">
                <ControlStyle Width="100px" />
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="Merid" 
                DataNavigateUrlFormatString="Details.aspx?id={0}" DataTextField="MerName" 
                HeaderText="商品名称" />
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="商品价格" 
                SortExpression="Price" />
            <asp:BoundField DataField="SPrice" DataFormatString="{0:c}" HeaderText="商品现价" 
                SortExpression="SPrice" />
            <asp:ButtonField HeaderText="购买" Text="购买" />
            <asp:ButtonField HeaderText="收藏" Text="收藏" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [merchandisc] WHERE [MerId] = @original_MerId AND (([category] = @original_category) OR ([category] IS NULL AND @original_category IS NULL)) AND (([MerName] = @original_MerName) OR ([MerName] IS NULL AND @original_MerName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([SPrice] = @original_SPrice) OR ([SPrice] IS NULL AND @original_SPrice IS NULL)) AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL)) AND (([GoodDesc] = @original_GoodDesc) OR ([GoodDesc] IS NULL AND @original_GoodDesc IS NULL)) AND (([GoodFacturer] = @original_GoodFacturer) OR ([GoodFacturer] IS NULL AND @original_GoodFacturer IS NULL)) AND (([LeaveFactoryDate] = @original_LeaveFactoryDate) OR ([LeaveFactoryDate] IS NULL AND @original_LeaveFactoryDate IS NULL)) AND (([Special] = @original_Special) OR ([Special] IS NULL AND @original_Special IS NULL)) AND (([inputdate] = @original_inputdate) OR ([inputdate] IS NULL AND @original_inputdate IS NULL)) AND (([bengindate] = @original_bengindate) OR ([bengindate] IS NULL AND @original_bengindate IS NULL)) AND (([enddate] = @original_enddate) OR ([enddate] IS NULL AND @original_enddate IS NULL))" 
    InsertCommand="INSERT INTO [merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (@MerId, @category, @MerName, @Price, @SPrice, @Picture, @GoodDesc, @GoodFacturer, @LeaveFactoryDate, @Special, @inputdate, @bengindate, @enddate)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [merchandisc]" 
    UpdateCommand="UPDATE [merchandisc] SET [category] = @category, [MerName] = @MerName, [Price] = @Price, [SPrice] = @SPrice, [Picture] = @Picture, [GoodDesc] = @GoodDesc, [GoodFacturer] = @GoodFacturer, [LeaveFactoryDate] = @LeaveFactoryDate, [Special] = @Special, [inputdate] = @inputdate, [bengindate] = @bengindate, [enddate] = @enddate WHERE [MerId] = @original_MerId AND (([category] = @original_category) OR ([category] IS NULL AND @original_category IS NULL)) AND (([MerName] = @original_MerName) OR ([MerName] IS NULL AND @original_MerName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([SPrice] = @original_SPrice) OR ([SPrice] IS NULL AND @original_SPrice IS NULL)) AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL)) AND (([GoodDesc] = @original_GoodDesc) OR ([GoodDesc] IS NULL AND @original_GoodDesc IS NULL)) AND (([GoodFacturer] = @original_GoodFacturer) OR ([GoodFacturer] IS NULL AND @original_GoodFacturer IS NULL)) AND (([LeaveFactoryDate] = @original_LeaveFactoryDate) OR ([LeaveFactoryDate] IS NULL AND @original_LeaveFactoryDate IS NULL)) AND (([Special] = @original_Special) OR ([Special] IS NULL AND @original_Special IS NULL)) AND (([inputdate] = @original_inputdate) OR ([inputdate] IS NULL AND @original_inputdate IS NULL)) AND (([bengindate] = @original_bengindate) OR ([bengindate] IS NULL AND @original_bengindate IS NULL)) AND (([enddate] = @original_enddate) OR ([enddate] IS NULL AND @original_enddate IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MerId" Type="String" />
            <asp:Parameter Name="original_category" Type="Int32" />
            <asp:Parameter Name="original_MerName" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_SPrice" Type="Decimal" />
            <asp:Parameter Name="original_Picture" Type="String" />
            <asp:Parameter Name="original_GoodDesc" Type="String" />
            <asp:Parameter Name="original_GoodFacturer" Type="String" />
            <asp:Parameter Name="original_LeaveFactoryDate" Type="String" />
            <asp:Parameter Name="original_Special" Type="Int32" />
            <asp:Parameter Name="original_inputdate" Type="String" />
            <asp:Parameter Name="original_bengindate" Type="String" />
            <asp:Parameter Name="original_enddate" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MerId" Type="String" />
            <asp:Parameter Name="category" Type="Int32" />
            <asp:Parameter Name="MerName" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="SPrice" Type="Decimal" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="GoodDesc" Type="String" />
            <asp:Parameter Name="GoodFacturer" Type="String" />
            <asp:Parameter Name="LeaveFactoryDate" Type="String" />
            <asp:Parameter Name="Special" Type="Int32" />
            <asp:Parameter Name="inputdate" Type="String" />
            <asp:Parameter Name="bengindate" Type="String" />
            <asp:Parameter Name="enddate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category" Type="Int32" />
            <asp:Parameter Name="MerName" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="SPrice" Type="Decimal" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="GoodDesc" Type="String" />
            <asp:Parameter Name="GoodFacturer" Type="String" />
            <asp:Parameter Name="LeaveFactoryDate" Type="String" />
            <asp:Parameter Name="Special" Type="Int32" />
            <asp:Parameter Name="inputdate" Type="String" />
            <asp:Parameter Name="bengindate" Type="String" />
            <asp:Parameter Name="enddate" Type="String" />
            <asp:Parameter Name="original_MerId" Type="String" />
            <asp:Parameter Name="original_category" Type="Int32" />
            <asp:Parameter Name="original_MerName" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_SPrice" Type="Decimal" />
            <asp:Parameter Name="original_Picture" Type="String" />
            <asp:Parameter Name="original_GoodDesc" Type="String" />
            <asp:Parameter Name="original_GoodFacturer" Type="String" />
            <asp:Parameter Name="original_LeaveFactoryDate" Type="String" />
            <asp:Parameter Name="original_Special" Type="Int32" />
            <asp:Parameter Name="original_inputdate" Type="String" />
            <asp:Parameter Name="original_bengindate" Type="String" />
            <asp:Parameter Name="original_enddate" Type="String" />
        </UpdateParameters>
    
    </asp:SqlDataSource>
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          One of three columns
        </div>
        <div class="col-sm-4">
          One of three columns
        </div>
        <div class="col-sm-4">
          One of three columns
        </div>
    </div>
    </div>--%>
    <!--products-->
<div class="services w3l-4">
					<div class="container">
						<h2>Our Products</h2>
						<div class="services-grids w3ls-4">
							<div class="col-md-4 services-grid">
								<a href="singlepage.html" class="mask">					
									<img src="images/8.jpg" class="img-responsive zoom-img" alt="">
								</a>							
								<h4>Solor Sit Amet</h4>
								<p>Were dolor in hendrerit in vulputate velit esse molestie con sequat.Donec sit amet eros. Lorem ipsum dolor sit amet.</p>
							</div>
							
									
							<div class="clearfix"></div>
					   </div>
					  
				</div>
			</div>
<!--products-->

</asp:Content>

