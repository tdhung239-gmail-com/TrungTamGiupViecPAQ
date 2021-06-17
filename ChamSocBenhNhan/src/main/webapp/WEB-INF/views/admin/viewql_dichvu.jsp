<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${ not empty okee   }">
	<main>
		${param.message}
		<div class="container-fluid">
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a
					href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
				<li class="breadcrumb-item active">Dịch Vụ</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> DataTable
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" style="text-align: justify;"
							id="dataTable" width="100%" cellspacing="2">
							<thead>
								<tr>
									<th>Mã dịch vụ</th>
									<th>Tên dịch vụ</th>
									<th>Giới thiệu dịch vụ</th>
									<th>Hình ảnh dịch vụ</th>
									<th>Điều kiện lý lịch</th>
									<th>Kỹ năng</th>
									<th>Hình ảnh kỹ năng</th>
									<th>Lương theo giờ</th>
									<th>Lương theo ngày</th>
									<th>Lương theo tháng</th>
									<th>Phí theo giờ</th>
									<th>Phí theo ngày</th>
									<th>Phí theo tháng</th>
									<th width="80px">Chức năng</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Mã dịch vụ</th>
									<th>Tên dịch vụ</th>
									<th>Giới thiệu dịch vụ</th>
									<th>Hình ảnh dịch vụ</th>
									<th>Điều kiện lý lịch</th>
									<th>Kỹ năng</th>
									<th>Hình ảnh kỹ năng</th>
									<th>Lương theo giờ</th>
									<th>Lương theo ngày</th>
									<th>Lương theo tháng</th>
									<th>Phí theo giờ</th>
									<th>Phí theo ngày</th>
									<th>Phí theo tháng</th>
									<th>Chức năng</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="item" items="${ dichvu }">
									<tr>
										<td style="font-weight: bold;"><label>${ item.maDichVu }
										</label></td>
										<td><label>${ item.tenDichVu } </label></td>
										<td><label>${ item.gioiThieuDichVu } </label></td>
										<td><a class="gallery-popup"
											href="<c:url value="/assets/user/images/${item.hinhAnhDichVu}"/>"
											aria-label="project-img"> <img class="img-fluid"
												style="width: 300px; height: 100px;"
												src="<c:url value="/assets/user/images/${item.hinhAnhDichVu}"/>"
												alt="project-img"> <span class="gallery-icon"><i
													class="fa fa-plus"></i></span>
										</a></td>
										<td><label>${ item.dieuKienLyLich } </label></td>
										<td><label>${ item.kyNang } </label></td>

										<td><a class="gallery-popup"
											href="<c:url value="/assets/user/images/${item.hinhAnhKyNang}"/>"
											aria-label="project-img"> <img class="img-fluid"
												style="width: 300px; height: 100px;"
												src="<c:url value="/assets/user/images/${item.hinhAnhKyNang}"/>"
												alt="project-img"> <span class="gallery-icon"><i
													class="fa fa-plus"></i></span>
										</a></td>

										<td><c:if test="${item.luongTheoGio !=0 }">
												<fmt:formatNumber value="${item.luongTheoGio}"
													type="currency" /> / Giờ</c:if> <c:if
												test="${item.luongTheoGio ==0 }">
									NULL</c:if></td>

										<td><c:if test="${item.luongTheoNgay !=0 }">
												<fmt:formatNumber value="${item.luongTheoNgay}"
													type="currency" /> / Ngày</c:if> <c:if
												test="${item.luongTheoNgay ==0 }">
									NULL</c:if></td>

										<td><c:if test="${item.luongTheoThang !=0 }">
												<fmt:formatNumber value="${item.luongTheoThang}"
													type="currency" /> / Tháng</c:if> <c:if
												test="${item.luongTheoThang ==0 }">
									NULL</c:if></td>

										<td><c:if test="${item.phiDichVuTheoGio !=0 }">
												<fmt:formatNumber value="${item.phiDichVuTheoGio}"
													type="currency" />
											</c:if> <c:if test="${item.phiDichVuTheoGio ==0 }">
										NULL
									</c:if></td>

										<td><c:if test="${item.phiDichVuTheoNgay !=0 }">
												<fmt:formatNumber value="${item.phiDichVuTheoNgay}"
													type="currency" />
											</c:if> <c:if test="${item.phiDichVuTheoNgay ==0 }">
										NULL
									</c:if></td>

										<td><c:if test="${item.phiDichVuTheoThang !=0 }">
												<fmt:formatNumber value="${item.phiDichVuTheoThang}"
													type="currency" />
											</c:if> <c:if test="${item.phiDichVuTheoThang ==0 }">
										NULL
									</c:if></td>


										<td> <a
											class="funtion"
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="suaDichVu/${item.maDichVu}">Chỉnh sửa</a> <br> <br>
											<br> <a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="xoaDichVu/${item.maDichVu}">Xoá</a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="dropdown">
							<span
								style="background: linear-gradient(90deg, aqua, #CCFFFF); border-radius: 5px 5px; color: #888888; font-weight: bold; font-size: 23px; padding: 5px 5px; border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);">Thêm
								mới</span>
							<div class="dropdown-content">
								<a href="them-dich-vu/1"> Dịch vụ có lương theo giờ </a> </br> <a
									href="them-dich-vu/2"> Dịch vụ có lương theo ngày </a> </br> <a
									href="them-dich-vu/3"> Dịch vụ có lương theo tháng </a> </br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>
</c:if>