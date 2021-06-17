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
				<li class="breadcrumb-item active">Khách hàng</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> DataTable
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable"
							style="text-align: center;" width="100%" cellspacing="2">
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


										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="suaKhachHang/${item.maKhachHang}">Chỉnh sửa</a> &nbsp
											&nbsp &nbsp &nbsp<a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="xoaKhachHang/${item.maKhachHang}">Xoá</a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a
							style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
							href="them-khach-hang">Thêm mới</a>
					</div>
				</div>
			</div>
		</div>

	</main>
</c:if>