<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:if test="${ not empty okee   }">
	<main>
		${param.message}

		<div class="container-fluid">
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a
					href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
				<li class="breadcrumb-item active">Bảng lương</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> DataTable
				</div>
				<div class="select">
					<form:form method="post" action="/ChamSocBenhNhan/locBangLuong"
						enctype="multipart/form-data">
					&nbsp Chọn tháng năm : 
					<form:select path="giaTriThang" items="${getChonThang}">
						</form:select>
						<form:select path="giaTriNam" items="${getChonNam}">
						</form:select>
					&nbsp Chọn mã nhân viên: 
						<form:select path="maHSNV" items="${chonMaNhanVienTrongBL}">
						</form:select>
						<input
							style="margin-left: 1%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 15px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
							type="submit" value="Lọc Bảng Lương" />

					</form:form>
				</div>
				<div class="select">
					<form:form method="post" action="/ChamSocBenhNhan/ThanhToanTatCa">
						<input
							style="margin-left: 1%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 15px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
							type="submit" value="Thanh Toán Tất Cả Cho Nhân Viên Đã Lọc" />

					</form:form>
					<form:form method="post" action="/ChamSocBenhNhan/XemTatCa">
						<input
							style="margin-left: 1%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 15px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
							type="submit" value="Xem Tất Cả" />

					</form:form>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<!-- nhúng id table để sử dụng form phân tranng và tìm kiếm  -->
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
									<th>Tên nhân viên</th>
									<th>Mã đăng kí dịch vụ</th>
									<th>Tổng tiền</th>
									<th>Tình trạng thanh toán</th>
									<th width="180px">Xem chi tiết nhân viên</th>
									<th width="220px">xem chi tiết đăng ký dịch vụ làm</th>
									<th width="100px">Cập nhật</th>
									<th>Xóa</th>
									<th width="100px">Thanh toán</th>
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
										<td><label><a
												style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
												href="nhan-vien/${item.maHSNV}">Xem chi tiết nhân viên</a></label></td>
										<td><label><a
												style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
												href="dang-ky-dich-vu/${item.maDKDV}">Xem chi tiết đăng
													ký dịch vụ</a></label></td>
										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="bang-luong/edit/${item.idBangLuong}">Chỉnh Sửa</a></td>
										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="xoa-bang-luong/${item.idBangLuong}">Xóa</a></td>

										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="bang-luong/thanh-toan/${item.idBangLuong}">Thanh
												toán</a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a
							style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
							href="bang-luong/them-bang-luong">Thêm mới</a>
					</div>
				</div>
			</div>
		</div>

	</main>
</c:if>