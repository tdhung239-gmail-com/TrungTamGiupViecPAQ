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
			<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
			<li class="breadcrumb-item active">Bảng lương</li>
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> DataTable
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="2" style="text-align: center;">
						<thead>
							<tr>
								<th>ID bảng lương</th>
								<th>Mã nhân viên</th>
								<th>Tên nhân viên</th>
								<th>Mã đăng kí dịch vụ</th>
								<th>Tổng tiền</th>
								<th>Tình trạng thanh toán</th>
								<th>Xem chi tiết nhân viên</th>
								<th>xem chi tiết dịch đăng ký vụ làm</th>
								<th>Cập nhật</th>
								<th>Xóa</th>
								<th>Thanh Toán</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID bảng lương</th>
								<th>Mã nhân viên</th>
								<th>Tên nhân biên</th>
								<th>Mã đăng kí dịch vụ</th>
								<th>Tổng tiền</th>
								<th>Tình trạng thanh toán</th>
								<th>Xem chi tiết nhân viên</th>
								<th>xem chi tiết đăng ký dịch vụ làm</th>
								<th>Cập nhật</th>
								<th>Xóa</th>
								<th>Thanh toán</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ bangluong }">
								<tr>
									<td style="font-weight: bold;"><label>${ item.idBangLuong }
									</label></td>
									<td><label>${ item.maHSNV } </label></td>
									<td><label>${ item.hoTen } </label></td>
									<td><label>${ item.maDKDV } </label></td>
									<td style="text-align: left;"><label> <fmt:formatNumber
												value="${item.tongThanhTien}" type="currency" /></label></td>

									<td><label><c:if
												test="${ item.tinhTrangThanhToan == 'chua'}"> chưa</c:if> <c:if
												test="${ item.tinhTrangThanhToan != 'chua'}"> đã thanh toán</c:if>
									</label></td>
									<td><label><a href="nhan-vien/${item.maHSNV}">Xem
												chi tiết nhân viên</a></label></td>
									<td><label><a
											href="dang-ky-dich-vu/${item.maDKDV}">Xem chi tiết đăng
												ký dịch vụ</a></label></td>
									<td><a href="bang-luong/edit/${item.idBangLuong}">Cập
											nhật</a></td>
									<td><a href="xoa-bang-luong/${item.idBangLuong}">Xóa</a></td>

									<td><a href="bang-luong/thanh-toan/${item.idBangLuong}">Thanh
											toán</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<a href="bang-luong/them-bang-luong">Thêm mới</a>
				</div>
			</div>
		</div>
	</div>

</main>
</c:if>