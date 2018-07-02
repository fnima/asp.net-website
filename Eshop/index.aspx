<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.master" AutoEventWireup="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
    <style>
	/*-- faculty --*/
.faculty_top{
	margin-bottom:2em;
}
figure.team_member {
    position: relative;
    overflow: hidden;
    color: #fff;
}
figure.team_member img + div {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: -webkit-linear-gradient(to top, rgba(0,0,0,.7) 5%, rgba(0,0,0,.1) 90%);
    background-image: -moz-linear-gradient(to top, rgba(0,0,0,.7) 5%, rgba(0,0,0,.1) 90%);
    background-image: -ms-linear-gradient(to top, rgba(0,0,0,.7) 5%, rgba(0,0,0,.1) 90%);
    background-image: -o-linear-gradient(to top, rgba(0,0,0,.7) 5%, rgba(0,0,0,.1) 90%);
    background-image: linear-gradient(to top, rgba(0,0,0,.7) 5%, rgba(0,0,0,.1) 90%);
}
figure.team_member figcaption {
    position: absolute;
    top: 63%;
    left: 0;
    width: 100%;
    height: 100%;
    padding: 20px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
figure.team_member figcaption h3 {
    margin: 0 0 8px 0;
}
figure.team_member figcaption h3 a, figure.team_member figcaption p a{
	color: #fff;
}
figure.team_member figcaption h3 a:hover, figure.team_member figcaption p a:hover, ul.social-person li a:hover{
	color:#f1b458;
}
figure.team_member figcaption span {
    margin-bottom: 15px;
    display: block;
}
p.person-deg1{
	margin-bottom:20px !important;
}
figure.team_member figcaption p {
    margin-bottom: 0;
    color: #fff;
}
.title-variation1 .style-title1, .course-details .cousre-details-img .course-title, figure.themeumlms-course-img figcaption, figure.team_member:hover figcaption {
    background-color:rgba(234, 224, 137, 0.5);
}
figure.team_member:hover figcaption {
    top: 0;
}
figure.team_member:hover .person-social {
    -webkit-transition-delay: .2s;
    -moz-transition-delay: .2s;
    -ms-transition-delay: .2s;
    -o-transition-delay: .2s;
    transition-delay: .2s;
}
figure.team_member:hover p, figure.team_member:hover .person-social {
    left: 0;
    -webkit-transition-timing-function: linear;
    -moz-transition-timing-function: linear;
    -ms-transition-timing-function: linear;
    -o-transition-timing-function: linear;
    transition-timing-function: linear;
}
figure, figcaption, img, h2, p, i, .person-social {
    -webkit-transition: all .5s;
    transition: all .5s;
}
/*-- //single --*/
@media(max-width:1024px)
{
	figure.team_member figcaption {
	    top: 55%;
	}
}
@media(max-width:991px){
	figure.team_member figcaption {
    top: 43%;
	}
	figure.team_member figcaption span {
    margin-bottom: 8px;
	}
	.faculty_grid {
    float: left;
    width: 33.33%;
	}
	
}
@media(max-width:640px){
	figure.team_member figcaption {
    top: 54%;
	}
	.faculty_grid {
    float: left;
    width: 50%;
	}
}

@media(max-width:480px){
	figure.team_member figcaption {
    top: 65%;
	}
	.faculty_grid img {
    width: 100%;
	}
	.faculty_grid {
    float: left;
    width: 100%;
	}
}
@media(max-width:384px){
figure.team_member figcaption {
    top: 60%;
}
@media(max-width:320px){
	figure.team_member figcaption {
    top: 55%;
	}
	.faculty_grid {
    padding: 0;
	}
}

.img-responsive, .thumbnail > img, .thumbnail a > img, .carousel-inner > .item > img, .carousel-inner > .item > a > img {
    max-width: 100%;
    height: 100%;
    display: inline-block !important;
}

</style>




</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" "></div>

    <div class="container-fluid bg-3 text-center"> 
        <div class="row">
         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">   
            <ItemTemplate>
                 
                
                    <div class="col-sm-3 faculty_grid ">
                        <figure class="team_member">
	   	  		        <img src='<%# Eval("Picture") %>' class="img-responsive wp-post-image" alt="">
	   	  		        <div></div>
	   	  		            <figcaption><h3 class="person-title"><a href="singlepage.html">Wines</a></h3>
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


</asp:Content>

 