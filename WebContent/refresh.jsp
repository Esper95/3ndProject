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
	
</head>

<body>		

<div class = "section">
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
						/* File f = new File("https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F"+ month +"_" + sysdate + "_"+ i +".png?alt=media"); */
						URL url = new URL("https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F" + korDayOfWeek + "_" + i + ".png?alt=media");
						URLConnection con = url.openConnection();
						HttpURLConnection exitCode = (HttpURLConnection)con;
						
						if(exitCode.getResponseCode() == 200) {
						     System.out.println("파일 존재");
						     %>
						     <%-- <div class="web all" data-src="https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F<%=month%>_<%=sysdate%>_<%=i%>.png?alt=media" style = "padding:15px">
								<div class = "projects_item">
									<img class = "testimg img-fluid w-100" src = "https://firebasestorage.googleapis.com/v0/b/test-fce56.appspot.com/o/captureImages%2F<%=month%>_<%=sysdate%>_<%=i%>.png?alt=media">
										<div class="icon">
											<img class="img-fluid" src="img/icon.png" alt="">
										</div>
									</div>
									</div>	 --%>
							<%
						i++;
 						} else {
						      System.out.println("파일 없음");
						      break;
						}
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