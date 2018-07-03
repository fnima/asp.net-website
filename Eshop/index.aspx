<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html>
<head runat="server">

    <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="Styles/Styles.css" rel="stylesheet" />
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


 
</style>

</head>
<body>
    <form id="form1" runat="server">
        <%--在小屏幕上变成垂直的灰色水平导航栏--%>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
            <a class="navbar-brand" href="#"><strong>Navbar</strong></a>
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

             <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="product.aspx">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                </ul>
            </div>


       </nav>

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

        <div class=" "></div>

    <div class="container-fluid bg-3 text-center"> 
        <div class="row">
         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">   
            <ItemTemplate>
                 
                
                    <div class="col-sm-3 faculty_grid ">
                        <figure class="team_member kuang">
	   	  		        <img src='<%# Eval("Picture") %>' class="img-fluid wp-post-image " alt="">
	   	  		        <div></div>
	   	  		            <figcaption><h3 class="person-title"><a href="singlepage.html">'<%# Eval("Picture") %>'</a></h3>
	   	  			            <span class="person-deg">Red Wine</span>
	   	  			            <p><a href="mailto:info@example.com">info(at)wine.com</a></p>
	   	  			            <p>4 Years</p>
	   	  			
	   	  	               </figcaption>
	   	  	             </figure>
                    </div>
                
            
            </ItemTemplate>

         </asp:Repeater>
   
       </div>   
    </div><br>
   

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [MerId], [Price], [MerName], [Picture] FROM [merchandisc]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    </form>
</body>
</html>
