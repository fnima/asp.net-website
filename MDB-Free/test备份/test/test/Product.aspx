<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!--products-->
        <div class="services w3l-4">
			<div class="container">
				<h2>Our Products</h2>
				<div class="services-grids w3ls-4">
					<div class="row">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="col-md-4 services-grid">
								    <a href='<%# Eval("c_id","Details.aspx?c_id={0}")%>' class="mask">					
									    <img src='<%# Eval("c_Picture") %>' class="img-responsive zoom-img" alt="">
								    </a>							
								    &nbsp;&nbsp;&nbsp;<h4><%# Eval("c_name")%></h4>
                                    <p><%# Eval("c_types")%>$</p>
								    <p><%# Eval("c_price")%>$</p>
                                </div>
							</ItemTemplate>
                            </asp:Repeater>
		
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                            SelectCommand="SELECT commodity.c_id, commodity.itme_id, commodity.c_name, commodity.c_price, commodity.c_Picture, commodity.c_content, commodity.c_types, itme.it_name, commodity.c_releaseDate FROM commodity INNER JOIN itme ON commodity.itme_id = itme.id WHERE (commodity.itme_id = 2) ORDER BY commodity.c_releaseDate DESC">
                        </asp:SqlDataSource>
		
					<div class="clearfix"></div>
				</div>
				</div>
		</div>
	</div>
<!--products-->

</asp:Content>

