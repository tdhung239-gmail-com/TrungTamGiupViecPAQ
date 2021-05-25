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
			<li class="breadcrumb-item active">Tuyển Dụng</li>
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> DataTable
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" style="text-align: justify;" id="dataTable" width="100%"
						cellspacing="2">
						<thead>
							<tr>
								<th>Mã tuyển dụng</th>
								<th>Tiêu đề tuyển dụng</th>
								<th>Mô tả chung</th>
								<th>Hình ảnh</th>
								<th>Mô tả công việc</th>
								<th>Quyền lợi</th>
								<th>Yêu cầu công việc</th>
								<th>Mã dịch vụ</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Mã tuyển dụng</th>
								<th>Tiêu đề tuyển dụng</th>
								<th>Mô tả chung</th>
								<th>Hình ảnh</th>
								<th>Mô tả công việc</th>
								<th>Quyền lợi</th>
								<th>Yêu cầu công việc</th>
								<th>Mã dịch vụ</th>
								<th>Chức năng</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ tuyendung }">
								<tr>
									<td style="font-weight: bold;"><label>${ item.maTuyenDung }
									</label></td>
									<td><label>${ item.tieuDeTuyenDung } </label></td>
									<td><label>${ item.moTaChung } </label></td>

									<td><a class="gallery-popup"
										href="<c:url value="/assets/user/images/tuyendung/${item.hinhAnh}"/>"
										aria-label="project-img"> <img class="img-fluid"
											style="width: 300px; height: 100px;"
											src="<c:url value="/assets/user/images/tuyendung/${item.hinhAnh}"/>"
											alt="project-img"> <span class="gallery-icon"><i
												class="fa fa-plus"></i></span>
									</a></td>
									<td><label>${ item.moTaCongViec } </label></td>
									<td><label>${ item.quyenLoi } </label></td>
									<td><label>${ item.yeuCauCongViec } </label></td>
									<td><label>${ item.maDichVu } </label></td>

									<td><a href="suaTuyenDung/${item.maTuyenDung}">Edit</a>
										<a
										href="xoaTuyenDung/${item.maTuyenDung}">Delete</a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<a href="them-tuyen-dung">Thêm mới</a>
				</div>
			</div>
		</div>
	</div>

</main>
</c:if>