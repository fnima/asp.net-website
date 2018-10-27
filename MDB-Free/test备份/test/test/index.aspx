<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
                   /* 使图像充分响应 */
 .carousel-inner img 
 {
      
    width: 100%;
    height: 100%;
 }
 .bg-3
 {
     margin-top:30px;
 }

 .kuang
 {
     height:400px;
 }
  .bgBar{
     background-color:#3fa4e2;

 }

 
</style>




</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

        <!-- 轮播 -->
       <div id="demo" class="carousel slide" data-ride="carousel">

          <!-- Indicators -->
          <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
          </ul>
  
          <!-- The slideshow -->
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="Image/13461444_p0.png" alt="www" width="1100" height="500">
            </div>
            <div class="carousel-item">
              <img src="Image/13461444_p0.png" alt="zzz" width="1100" height="500">
            </div>
            <div class="carousel-item">
              <img src="Image/13461444_p0.png" alt="qaq" width="1100" height="500">
            </div>
          </div>
  
          <!-- Left and right controls -->
          <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>

        <div class=" container-fluid bgBar" style="height:50px;"><h2>狂热推荐</h2></div>

    <div class="container-fluid bg-3 text-center"> 
        <div class="row">
         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">   
            <ItemTemplate>
              <div class="col-sm-4 faculty_grid ">
                        <figure class="team_member kuang">
	   	  		        <img src='<%# Eval("c_Picture") %>' class="img-fluid wp-post-image " alt="">
	   	  		        <div></div>
	   	  		            <figcaption><h3 class="person-title"><a href='<%# Eval("c_id","Details.aspx?c_id={0}")%>'><%# Eval("c_name")%></a></h3>
	   	  			            <span class="person-deg"><%# Eval("c_types")%></span>
	   	  			            <%--<p><a href="mailto:info@example.com"><%# Eval("c_name")%></a></p> --%>
	   	  			            <p><%# Eval("c_price")%>$</p>
	   	  			
	   	  	               </figcaption>
	   	  	             </figure>
                    </div>
                
            
            </ItemTemplate>



         </asp:Repeater>
                        <asp:CheckBox ID="check11111111"
Text="Same as home phone" TextAlign="Right"

runat="server" />
   
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                SelectCommand="SELECT commodity.c_id, commodity.itme_id, commodity.c_name, commodity.c_price, commodity.c_Picture, commodity.c_types, itme.it_name FROM commodity INNER JOIN itme ON commodity.itme_id = itme.id WHERE (commodity.itme_id = 1)">
            </asp:SqlDataSource>
   
       </div>   
    </div><br>

</asp:Content>

