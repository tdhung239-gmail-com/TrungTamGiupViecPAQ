<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header" class="header-one">
	<div class="bg-white">
		<div class="container">
			<div class="logo-area">
				<div class="row align-items-center">
					<div class="logo col-lg-3">
						<a href="<c:url value="/home/"/>"> <img
							src="<c:url value="/assets/user/images/logogv.jpg"/>"
							style="height: 105px; width: 123px;" alt="logoGiupViec"></a>
					</div>
					<!-- logo end -->
					<div class="col-lg-9 header-right">
						<ul class="top-info-box">
							<li>
								<div class="info-box">
									<div class="info-box-content">
										<p class="info-box-title">Call Us</p>
										<p class="info-box-subtitle">(+84) 88-919-5752</p>
									</div>
								</div>
							</li>
							<li>
								<div class="info-box">
									<div class="info-box-content">
										<p class="info-box-title">Email Us</p>
										<p class="info-box-subtitle">giupviecpaq@gmail.com</p>
									</div>
								</div>
							</li>
							<li class="header-get-a-quote"><a class="btn btn-primary"
								href="/ChamSocBenhNhan/home/ctdv/1">Nhận Báo Giá</a></li>
						</ul>
						<!-- Ul end -->
					</div>
					<!-- header right end -->
				</div>
				<!-- logo area end -->

			</div>
			<!-- Row end -->
		</div>
		<!-- Container end -->
	</div>

	<div class="site-navigation"
		style="background: linear-gradient(90deg, #69b7eb, #b3dbd3, #f4d6db);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-dark p-0">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target=".navbar-collapse"
							aria-controls="navbar-collapse" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div id="navbar-collapse" class="collapse navbar-collapse">
							<ul class="nav navbar-nav mr-auto">

								<li class="nav-item"><a class="nav-link"
									style="font-size: 17px;" href="<c:url value="/home/"/>">Trang
										Chủ</a></li>

								<li class="nav-item"><a class="nav-link"
									style="font-size: 17px;"
									href="<c:url value="/home/gioithieu"/>">Giới Thiệu</a></li>

								<li class="nav-item"><a class="nav-link"
									style="font-size: 17px;" href="<c:url value="/home/nhanvien"/>">Nhân
										Viên</a></li>

								<li class="nav-item dropdown"><a href="#"
									style="font-size: 17px;" class="nav-link dropdown-toggle"
									data-toggle="dropdown">Dịch Vụ <i class="fa fa-angle-down"></i>
								</a>
									<ul class="dropdown-menu" role="menu">
										<c:forEach var="item" items="${ listdichvu }">

											<li><a
												href="<c:url value="/home/ctdv/${item.maDichVu}"/>"> ${ item.tenDichVu }
											</a></li>

										</c:forEach>

									</ul></li>

								<li class="nav-item dropdown"><a href="#"
									style="font-size: 17px;" class="nav-link dropdown-toggle"
									data-toggle="dropdown">Tuyển Dụng <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="dropdown-menu" role="menu">
										<c:forEach var="item" items="${ listtuyendung }">

											<li><a
												href="<c:url value="/home/cttd/${item.maTuyenDung}"/>">
													${ item.tieuDeTuyenDung } </a></li>

										</c:forEach>

									</ul></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 17px;" href="<c:url value="/home/lienhe"/>">Liên
										Hệ</a></li>
							</ul>
						</div>
					</nav>
				</div>
				<!--/ Col end -->
			</div>
			<!--/ Row end -->

			<div class="nav-search">
				<span id="search"><i class="fa fa-search"></i></span>
			</div>
			<!-- Search end -->

			<div class="search-block" style="display: none;">

				<label for="search-field" class="w-100 mb-0"> <input
					type="text" class="form-control" id="search-field"
					placeholder="Enter search">
				</label> <span class="search-close">&times;</span>

			</div>
			<!-- Site search end -->
		</div>
		<!--/ Container end -->

	</div>
	<!--/ Navigation end -->
</header>

<!-- Action start -->
<div class="banner-carousel banner-carousel-1 mb-0">


	<div class="banner-carousel-item"
		style="background-image: url(<c:url value="/assets/user/images/slider-main/s2.jpg"/>)">
		<div class="slider-content text-left">
			<div class="container h-100">
				<div class="row align-items-center h-100">
					<div class="col-md-12">
						<h2 class="slide-title-box" style="margin-bottom: 200px;"
							data-animation-in="slideInDown">Các Lựa Chọn Dịch Vụ Tốt
							Nhất</h2>

						<p data-animation-in="slideInRight">
							<a style="background: #FF9933; margin-left: 700px;"
								href="/ChamSocBenhNhan/home/ctdv/1"
								class="slider btn btn-primary border">Dịch Vụ Của Chúng Tôi</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="banner-carousel-item"
		style="background-image: url(<c:url value="/assets/user/images/slider-main/s3.jpg"/>)">
		<div class="slider-content text-right">
			<div class="container h-100">
				<div class="row align-items-center h-100">
					<div class="col-md-12">
						<!-- <h2 class="slide-title" " data-animation-in="slideInDown">Khi
							Thuê Người Giúp Việc Của Chúng Tôi</h2>
						<h3 class="slide-sub-title" data-animation-in="fadeIn">Chúng
							Tôi Tin Rằng bạn sẽ nhận được sự hài lòng nhất</h3> -->
						<a href="/ChamSocBenhNhan/home/ctdv/1"
							style="margin-bottom: 400px;" class="slider btn btn-primary"
							data-animation-in="slideInDown" aria-label="contact-with-us">Nhận
							Báo Giá</a> <a style="margin-bottom: 400px;"
							data-animation-in="slideIn" href="/ChamSocBenhNhan/home/ctdv/1"
							class="slider btn btn-primary border"
							aria-label="learn-more-about-us">Tìm hiểu thêm</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="banner-carousel-item"
		style="background-image: url(<c:url value="/assets/user/images/slider-main/s1.jpg"/>)">
		<div class="slider-content">
			<div class="container h-100">
				<div class="row align-items-center h-100">
					<div class="col-md-12 text-center">

						<p style="color: red; margin-top: 400px; margin-right: 710px;"
							data-duration-in="1.2">
							<a href="/ChamSocBenhNhan/home/lienhe"
								data-animation-in="slideInLeft"
								class="slider btn btn-primary border"
								style="background: #FFFFFF; color: green;">Liên Hệ Ngay</a><a
								data-animation-in="slideInDown"
								href="/ChamSocBenhNhan/home/ctdv/1"
								class="slider btn btn-primary">Dịch Vụ Của Chúng Tôi</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


</div>


<section class="call-to-action-box no-padding">
	<div class="container">
		<div class="action-style-box">
			<div class="row align-items-center">
				<div class="col-md-8 text-center text-md-left">
					<div class="call-to-action-text">
						<h3 class="action-title">Chúng Tôi Hiểu Về Nhu Cầu Của Bạn</h3>
					</div>
				</div>
				<!-- Col end -->
				<div class="col-md-4 text-center text-md-right mt-3 mt-md-0">
					<div class="call-to-action-btn">
						<a class="btn btn-dark" href="/ChamSocBenhNhan/home/ctdv/1">Yêu
							Cầu Báo Giá</a>
					</div>
				</div>
				<!-- col end -->
			</div>
			<!-- row end -->
		</div>
		<!-- Action style box -->
	</div>
	<!-- Container end -->
</section>


<!-- Action end -->