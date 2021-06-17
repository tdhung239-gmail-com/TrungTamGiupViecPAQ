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
				<li class="breadcrumb-item active">Liên Hệ</li>
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
									<th>Mã liên hệ</th>
									<th>Tên khách hàng</th>
									<th>Email</th>
									<th>Thông điệp</th>
									<th>Số điện thoại</th>


									<th>Chức năng</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Mã liên hệ</th>
									<th>Tên khách hàng</th>
									<th>Email</th>
									<th>Thông điệp</th>
									<th>Số điện thoại</th>


									<th>Chức năng</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="item" items="${ lienhe }">
									<tr>
										<td style="font-weight: bold;"><label>${ item.malienhe }
										</label></td>
										<td><label>${ item.tenlienhe } </label></td>
										<td><label>${ item.email } </label></td>
										<td><label>${ item.thongdiep } </label></td>
										<td><label>${ item.sdt } </label></td>

										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="/ChamSocBenhNhan/quan-li/xoaLienHe/${item.malienhe}">Xoá</a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	</main>
</c:if>