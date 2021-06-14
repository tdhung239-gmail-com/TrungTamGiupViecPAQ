<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>

<link href="<c:url value="/assets/admin/css/styles.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/them_DKDV.css"/>"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">

	<%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>

	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link"  href=" <c:url value="/quan-li/${okee }/${okee2 }"/> ">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Pages Manager
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed"
									href="<c:url value="/quan-li/bang-luong"/>"> Bảng Lương</a> <a
									class="nav-link collapsed"
									href="<c:url value="/quan-li/nhan-vien/all"/>"> Nhân Viên </a>
								<a class="nav-link collapsed"
									href="<c:url value="/quan-li/dang-ky-dich-vu/all"/>"> Đăng
									ký Dịch Vụ </a> <a class="nav-link collapsed"
									href="<c:url value="/quan-li/khach-hang/all"/>"> Khách Hàng</a>
									<a class="nav-link collapsed"
									href="<c:url value="/quan-li/lien-he"/>"> Liên Hệ</a>
									<a class="nav-link collapsed"
									href="<c:url value="/quan-li/danh-gia"/>"> Đánh Giá	</a>
									<a class="nav-link collapsed"
									href="<c:url value="/quan-li/tuyen-dung"/>"> Tuyển Dụng</a>
									<a class="nav-link collapsed"
									href="<c:url value="/quan-li/dangky-timviec"/>"> Đăng Ký Tìm Việc</a>
									<a class="nav-link collapsed"
									href="<c:url value="/quan-li/dich-vu"/>"> Dịch Vụ</a>


							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link"  href=" <c:url value="/quan-li/${okee }/${okee2 }"/> ">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts
						</a>
					</div>
				</div>
				
			</nav>
		</div>
		<div id="layoutSidenav_content">


			<decorator:body />



			<%@include file="/WEB-INF/views/layouts/admin/footer.jsp"%>


		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/assets/admin/js/scripts.js"/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/assets/admin/demo/chart-area-demo.js"/>"></script>
	<script src="<c:url value="/assets/admin/demo/chart-bar-demo.js"/>"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/assets/admin/demo/datatables-demo.js"/>"></script>

	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>