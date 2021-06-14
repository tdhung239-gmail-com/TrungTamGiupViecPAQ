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
			<li class="breadcrumb-item"><a href="<c:url value="/quan-li/${okee }/${okee2 }"/>">Dashboard</a></li>
			<li class="breadcrumb-item active">Khách hàng</li>
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> DataTable
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" style="text-align: center;" width="100%"
						cellspacing="2">
						<thead>
							<tr>
								<th>Mã khách hàng</th>
								<th>Tên khách hàng</th>
								<th>Số điện thoại</th>
								<th>Địa chỉ</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Mã khách hàng</th>
								<th>Tên khách hàng</th>
								<th>Số điện thoại</th>
								<th>Địa chỉ</th>
								<th>Chức năng</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ khachhang }">
								<tr>
									<td style="font-weight: bold;"><label>${ item.maKhachHang }
									</label></td>
									<td><label>${ item.tenKhachHang } </label></td>
									<td><label>${ item.sdt } </label></td>
									<td><label>${ item.diaChi } </label></td>
									

									<td><a href="suaKhachHang/${item.maKhachHang}">Edit</a> &nbsp &nbsp &nbsp &nbsp<a
										href="xoaKhachHang/${item.maKhachHang}">Delete</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<a href="them-khach-hang">Thêm mới</a>
				</div>
			</div>
		</div>
	</div>

</main>
</c:if>