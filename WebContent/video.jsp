<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Portfolio Details</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">		
	 <meta charset="UTF-8">
  	<link rel="stylesheet" type="text/css" href="./slick-1.8.1/slick/slick.css">
  	<link rel="stylesheet" type="text/css" href="./slick-1.8.1/slick/slick-theme.css">
	
	<style type = "text/css">
		img.webcam {
		width : 640px;
		height : 480px;
		}
		section.testsection {
		text-align: -webkit-center;
		}
		div.left_img {
		width : 640px;
		height : 480px;
		}
		div.testcontainer {
		text-align: center;
		width : 1000px;
		}
		div.testleft_img {
		text-align: center;
		}
		div.testrow {
		display: inline-block;
		margin: 0 auto;
		width : 930px;
		height : 480px;
		text-align: -webkit-center;
		}
		div.test {
		width : 180px;
		height : auto;
		display: inline-block;
		}
		img.testimg {
		width : 180px;
		height : auto;
		}
		
		
		.section .slidelist{
		white-space:nowrap;
		font-size:0;
		
		/* 밑단 구성 */

    * {
      box-sizing: border-box;
    }

    .slider {
        width: 50%;
        margin: 100px auto;
    }

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
		
		
		
		
	</style>
	
	<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">
	var auto_refresh = setInterval(
	function ()
	{
	$('#reload').load('refresh.jsp').fadeIn("slow");
	}, 10000); // 새로고침 시간 1000은 1초를 의미합니다.
	
	</script>
	
</head>

<body>

	<!--################ Start Header Area ########-->
	<header id="header" id="home">
		<hr>
		<div class="container main-menu">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a href="index.html">home</a></li>
						<li><a href="portfolio.html">portfolio</a></li>
						<li><a href="about.html">about</a></li>
						<li class="menu-has-children"><a href="">blog</a>
							<ul>
								<li><a href="blog-home.html">Blog Home</a></li>
								<li><a href="blog-single.html">Blog Single</a></li>
							</ul>
						</li>
						<li class="menu-has-children menu-active"><a href="">Pages</a>
							<ul>
								<li><a href="portfolio-details.html">Portfolio Details</a></li>
								<li><a href="elements.html">Elements</a></li>
							</ul>
						</li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!--######## End Header Area ########-->

	<!--######## start banner Area ########-->
	<section class="banner-area relative" id="home">
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white text-uppercase">
						Portfolio Details
					</h1>
					<p class="text-white link-nav"><a href="index.html">Home </a> <span class="lnr lnr-arrow-right"></span> <a href="portfolio-details.html">
							Portfolio Details</a></p>
				</div>
			</div>
		</div>
	</section>
	<!--######## End banner Area ########-->

	<!--######## Portfolio Details Area ########-->
	<section class="portfolio_details_area section-gap testsection">
		<div class="container">
			<div class="portfolio_details_inner">
				<div class="testrow">
					<!-- <div class="col-md-6"> -->
						<div class="left_img testleft_img">
							<iframe src="http://127.0.0.1:5000/" style = "width:1000px; height:600px;"></iframe>
							
						</div>
				</div>

				

<div class = "section" id = "reload">
<div id="lightgallery">
<section class="regular slider" id="next">

					<%
					Calendar cal = Calendar.getInstance();
					System.out.println(cal);
					
					int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
					int sysdate = cal.get(Calendar.DATE);
					int month = cal.get(Calendar.MONTH) + 1;
					
					String korDayOfWeek = "";
					switch (dayOfWeek) {
					case 1:
						korDayOfWeek = "Sun";
						break;
					case 2:
						korDayOfWeek = "Mon";
						break;
					case 3:
						korDayOfWeek = "Tue";
						break;
					case 4:
						korDayOfWeek = "Wen";
						break;
					case 5:
						korDayOfWeek = "Thu";
						break;
					case 6:
						korDayOfWeek = "Fri";
						break;
					case 7:
						korDayOfWeek = "Sat";
						break;
					}
					
					System.out.println(korDayOfWeek);

					System.out.println(sysdate);
					System.out.println(month);
					int i = 1;
 						while(true) {
						
						URL url = new URL("https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F" + korDayOfWeek + "_" + i + ".png?alt=media");
						URLConnection con = url.openConnection();
						HttpURLConnection exitCode = (HttpURLConnection)con;
						
						if(exitCode.getResponseCode() == 200) {
						     System.out.println("파일 존재");

 						} else {
						      System.out.println("파일 없음");
						      break;
						}
						i++;
						}
 						
 						int j = 0;
 						for (j = i-1; j > 0; j--){
 							%>
						     <div class="web all" data-src="https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F<%=korDayOfWeek%>_<%=j%>.png?alt=media" style = "padding:15px">
								<div class = "projects_item">
									<img class = "testimg img-fluid w-100" src = "https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F<%=korDayOfWeek%>_<%=j%>.png?alt=media">
										<div class="icon">
											<img class="img-fluid" src="img/icon.png" alt="">
										</div>
									</div>
									</div>
							<%
 						} 
					%>
  </section>
</div>


					
					
				</div>
				
			</div>
		</div>
	</section>
	<!--######## End Portfolio Details Area ########-->

	<!--######## start footer Area ########-->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6">
					<div class="single-footer-widget">
						<h6>Top Products</h6>
						<ul class="footer-nav">
							<li><a href="#">Managed Website</a></li>
							<li><a href="#">Manage Reputation</a></li>
							<li><a href="#">Power Tools</a></li>
							<li><a href="#">Marketing Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="single-footer-widget newsletter">
						<h6>Newsletter</h6>
						<p>You can trust us. we only send promo offers, not a single spam.</p>
						<div id="mc_embed_signup">
							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="form-group row" style="width: 100%">
									<div class="col-lg-8 col-md-12">
										<input name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address'"
										 required="" type="email">
										<div style="position: absolute; left: -5000px;">
											<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
										</div>
									</div>

									<div class="col-lg-4 col-md-12">
										<button class="nw-btn primary-btn">Subscribe<span class="lnr lnr-arrow-right"></span></button>
									</div>
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget mail-chimp">
						<h6 clas s="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="img/i1.jpg" alt=""></li>
							<li><img src="img/i2.jpg" alt=""></li>
							<li><img src="img/i3.jpg" alt=""></li>
							<li><img src="img/i4.jpg" alt=""></li>
							<li><img src="img/i5.jpg" alt=""></li>
							<li><img src="img/i6.jpg" alt=""></li>
							<li><img src="img/i7.jpg" alt=""></li>
							<li><img src="img/i8.jpg" alt=""></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
				<p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
				<div class="footer-social d-flex align-items-center">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!--######## End footer Area ########-->
	
	<script src="js/vendor/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.lightbox.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
	
	
	<!-- <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script> -->
<script src="./slick-1.8.1/slick/slick.js" type="text/javascript" charset="utf-8"></script>
  	<script type="text/javascript">
    $(document).on('ready', function() {

      $(".regular").slick({
        dots: false,
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 3
      });
    });
</script>

</body>

</html>