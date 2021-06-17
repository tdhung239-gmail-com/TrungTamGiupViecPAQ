<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<main>

	<div class="container-fluid">
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
			<li class="breadcrumb-item active">Bảng lương</li>
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
								<th>Tên nhân biên</th>
								<th>Tên dịch vụ</th>
								<th>SDT</th>
								<th>Năm sinh</th>
								<th>Quê quán</th>
								<th>Nơi cư trú hiện tại</th>
								<th>Tình trạng làm việc</th>
								<th>Tình trạng duyệt hồ sơ</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Mã nhân viên</th>
								<th>Tên nhân biên</th>
								<th>Tên dịch vụ</th>
								<th>SDT</th>
								<th>Năm sinh</th>
								<th>Quê quán</th>
								<th>Nơi cư trú hiện tại</th>
								<th>Tình trạng làm việc</th>
								<th>Tình trạng duyệt hồ sơ</th>
								<th>Chức năng</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ nhanvienn }">
								<tr>
									<td><label>${ item.maHSNV } </label></td>
									<td><label>${ item.hoTen } </label></td>
									<td><label>${ item.tenDichVu } </label></td>
									<td><label>${ item.sdt } </label></td>
									<td><label> <fmt:formatDate pattern="dd-MM-yyy" value="${ item.namSinh }" /> </label></td>
									<td><label>${ item.queQuan } </label></td>
									<td><label>${ item.noiCuTruHienTai } </label></td>
									<td><label>${ item.tinhTrangLamViec } </label></td>
									<td><label>${ item.tinhTrangDuyetHoSo } </label></td>

									<td><a href="edit/${item.maHSNV}">Edit</a> <a
										href="delete/${item.maHSNV}">Delete</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<a href="empform">Add New Employee</a>
				</div>
			</div>
		</div>
	</div>

</main>