<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<main>
	${param.message}
	<div class="container-fluid">
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a
				href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
			<li class="breadcrumb-item active">Đăng ký tìm việc</li>
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> DataTable
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="2">
						<thead>
							<tr>
								<th>Mã nhân viên</th>
								<th>Tên nhân viên</th>
								<th>Chuyên dịch vụ</th>
								<th>SDT</th>
								<th>Năm sinh</th>
								<th>Quê quán</th>
								<th>Nơi cư trú hiện tại</th>
								<th>Hình ảnh</th>
								<th>Tình trạng làm việc</th>
								<th>Tình trạng duyệt hồ sơ</th>
								<th>Duyệt hồ sơ</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Mã nhân viên</th>
								<th>Tên nhân viên</th>
								<th>Chuyên dịch vụ</th>
								<th>SDT</th>
								<th>Năm sinh</th>
								<th>Quê quán</th>
								<th>Nơi cư trú hiện tại</th>
								<th>Hình ảnh</th>
								<th>Tình trạng làm việc</th>
								<th>Tình trạng duyệt hồ sơ</th>
								<th>Duyệt hồ sơ</th>
								<th>Chức năng</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ dktv }">
								<tr>
									<td style="font-weight: bold;"><label>${ item.maHSNV }
									</label></td>
									<td><label>${ item.hoTen } </label></td>
									<td><label>${ item.tenDichVu } (${ item.maDichVu })
									</label></td>
									<td><label>${ item.sdt } </label></td>
									<td><label> <fmt:formatDate pattern="dd-MM-yyy"
												value="${ item.namSinh }" />
									</label></td>
									<td><label>${ item.queQuan } </label></td>
									<td><label>${ item.noiCuTruHienTai } </label></td>

									<td><a class="gallery-popup"
										href="<c:url value="/assets/user/images/nhanvien/${ item.hinhanh }"/>"
										aria-label="project-img"> <img class="img-fluid"
											style="width: 100px; height: 100px;"
											src="<c:url value="/assets/user/images/nhanvien/${ item.hinhanh }"/>"
											alt="project-img"> <span class="gallery-icon"><i
												class="fa fa-plus"></i></span>
									</a></td>
									<td><label> <c:if
												test="${ item.tinhTrangLamViec == 'ranh'}"> rảnh</c:if> <c:if
												test="${ item.tinhTrangLamViec != 'ranh'}"> bận</c:if>
									</label></td>
									<td><label> <c:if
												test="${ item.tinhTrangDuyetHoSo == 'xong'}"> xong</c:if> <c:if
												test="${ item.tinhTrangDuyetHoSo != 'xong'}"> chưa</c:if>
									</label></td>

									<td><a
										style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
										href="duyetDKTV/${item.maHSNV}">Duyệt hồ sơ</a></td>
									<td><a
										style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
										href="xoaDKTV/${item.maHSNV}">Xóa</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</main>