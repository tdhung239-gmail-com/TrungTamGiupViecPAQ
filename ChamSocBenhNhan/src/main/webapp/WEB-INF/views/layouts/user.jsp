<%@ page pageEncoding="UTF-8" language="java" 
	contentType="text/html; charset=UTF-8"%> 
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" 
	prefix="decorator"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!DOCTYPE html> 
<html lang="en"> 

<head> 

<!-- Basic Page Needs
================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Thuê Người Giúp Việc</title>

<!-- Mobile Specific Metas
================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

<!-- Favicon
================================================== -->


<link rel="icon" type="image/png"
	href="<c:url value="/assets/user/images/logogv.jpg"/>">

<!-- CSS
================================================== -->
<!-- Bootstrap -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/bootstrap/bootstrap.min.css"/>">
<!-- FontAwesome -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/fontawesome/css/all.min.css"/>">
<!-- Animation -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/animate-css/animate.css"/>">
<!-- slick Carousel -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/slick/slick.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/slick/slick-theme.css"/>">
<!-- Colorbox -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/plugins/colorbox/colorbox.css"/>">
<!-- Template styles-->
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/style.css"/>">
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/slide_card.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/dangkydv.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/nhanvien.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/bg_loop_animation.css"/>">





<style type="text/css">
.slick-next::before, .slick-prev::before {
	color: white;
	margin: 5px;
}
</style>

<div id="fb-root"></div> 
<script async defer crossorigin="anonymous" 
	src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0" 
	nonce="diFajpOv"></script> 
<!-- mfb-->
<div id="fb-root"></div>
<script async defer crossorigin="anonymous"
	src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0"
	nonce="Rlbln1gK"></script>
<!-- plugin fb-->
<div id="fb-root"></div>
<script async defer crossorigin="anonymous"
	src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0"
	nonce="LkNGiG1o"></script>
<!-- baiviet fb-->
</head>
</head>
<body>
	<script> 
		window.fbAsyncInit = function() { 
			FB.init({ 
				appId : "1784956665094089", 
				xfbml : true, 
				version : "v2.6" 
			}); 
		}; 
		(function(d, s, id) { 
			var js, fjs = d.getElementsByTagName(s)[0]; 
			if (d.getElementById(id)) { 
				return; 
			} 
			js = d.createElement(s); 
			js.id = id; 
			js.src = "//connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js"; 
			fjs.parentNode.insertBefore(js, fjs); 
		}(document, 'script', 'facebook-jssdk')); 
	</script> 
	<div class="fb-customerchat" page_id="104630031758189"></div> 
	<!--/ mfacebook end -->

	<div class="body-inner">

		<div id="top-bar" class="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<ul class="top-info text-center text-md-left">
							<li><i class="fas fa-map-marker-alt"></i>
								<p class="info-text">32 Nguyễn Thành Hãn, Đà Nẵng</p></li>
						</ul>
					</div>
					<!--/ Top info end -->

					<div class="col-lg-4 col-md-4 top-social text-center text-md-right">
						<ul class="list-unstyled">
							<li><a title="Facebook"
								href="https://www.facebook.com/Cho-Thu%C3%AA-Ng%C6%B0%E1%BB%9Di-Gi%C3%BAp-Vi%E1%BB%87c-104630031758189/?ref=pages_you_manage">
									<span class="social-icon"><i class="fab fa-facebook-f"></i></span>
							</a> <a title="Twitter" href="https://www.facebook.com/Cho-Thu%C3%AA-Ng%C6%B0%E1%BB%9Di-Gi%C3%BAp-Vi%E1%BB%87c-104630031758189/?ref=pages_you_manage">
									<span class="social-icon"><i class="fab fa-twitter"></i></span>
							</a> <a title="Instagram"
								href="https://www.facebook.com/Cho-Thu%C3%AA-Ng%C6%B0%E1%BB%9Di-Gi%C3%BAp-Vi%E1%BB%87c-104630031758189/?ref=pages_you_manage"> <span
									class="social-icon"><i class="fab fa-instagram"></i></span>
							</a> <a title="Linkdin" href="https://www.facebook.com/Cho-Thu%C3%AA-Ng%C6%B0%E1%BB%9Di-Gi%C3%BAp-Vi%E1%BB%87c-104630031758189/?ref=pages_you_manage">
									<span class="social-icon"><i class="fab fa-github"></i></span>
							</a></li>
						</ul>
					</div>
					<!--/ Top social end -->
				</div>
				<!--/ Content row end -->
			</div>
			<!--/ Container end -->
		</div>
		<!--/ Topbar end -->
		<!-- Header start -->

		<!--/ Header end -->

		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
		<decorator:body />
		<!-- Footer-->
		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>




		<!--/ News end -->







		<!-- Footer end -->


		<!-- Javascript Files
  ================================================== -->

		<!-- initialize jQuery Library -->
		<script
			src="<c:url value="/assets/user/plugins/jQuery/jquery.min.js"/>"></script>
		<!-- Bootstrap jQuery -->
		<script
			src="<c:url value="/assets/user/plugins/bootstrap/bootstrap.min.js"/>"
			defer></script>
		<!-- Slick Carousel -->
		<script src="<c:url value="/assets/user/plugins/slick/slick.min.js"/>"></script>
		<script
			src="<c:url value="/assets/user/plugins/slick/slick-animation.min.js"/>"></script>
		<!-- Color box -->
		<script
			src="<c:url value="/assets/user/plugins/colorbox/jquery.colorbox.js"/>"></script>
		<!-- shuffle -->
		<script
			src="<c:url value="/assets/user/plugins/shuffle/shuffle.min.js"/>"
			defer></script>


		<!-- Google Map API Key-->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"
			defer></script>
		<!-- Google Map Plugin-->
		<script src="<c:url value="/assets/user/plugins/google-map/map.js"/>"
			defer></script>

		<!-- Template custom -->
		<script src="<c:url value="/assets/user/js/script.js"/>"></script>
		<decorator:getProperty property="page.script"></decorator:getProperty>
	</div> 
	<!-- Body inner end -->
</body> 

</html> 