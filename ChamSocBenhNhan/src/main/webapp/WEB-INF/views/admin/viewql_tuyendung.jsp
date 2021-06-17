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
				<li class="breadcrumb-item active">Tuyển Dụng</li>
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
								<tr style="text-align: center;">
									<th>Mã tuyển dụng</th>
									<th>Tiêu đề tuyển dụng</th>
									<th>Mô tả chung</th>
									<th>Hình ảnh</th>
									<th>Mô tả công việc</th>
									<th>Quyền lợi</th>
									<th>Yêu cầu công việc</th>
									<th>Mã dịch vụ</th>
									<th width="80px">Chức năng</th>
									<th>Tắt/Bật Tuyển Dụng</th>
								</tr>
							</thead>
							<tfoot>
								<tr style="text-align: center;">
									<th>Mã tuyển dụng</th>
									<th>Tiêu đề tuyển dụng</th>
									<th>Mô tả chung</th>
									<th>Hình ảnh</th>
									<th>Mô tả công việc</th>
									<th>Quyền lợi</th>
									<th>Yêu cầu công việc</th>
									<th>Mã dịch vụ</th>
									<th>Chức năng</th>
									<th>Tắt/Bật Tuyển Dụng</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="item" items="${ tuyendung }">
									<tr>
										<td style="font-weight: bold; text-align: center;"><label>${ item.maTuyenDung }
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

										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="suaTuyenDung/${item.maTuyenDung}">Chỉnh Sửa</a> <br>
											<br> <a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="xoaTuyenDung/${item.maTuyenDung}">Xoá</a></td>

										<td style="text-align: center;"><c:if
												test="${ item.tatBat == '0' }">
												<a
													style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
													href="tatBatTuyenDung/${item.maTuyenDung}/${ item.tatBat}">On</a>
											</c:if> <c:if test="${ item.tatBat == '1' }">
												<a
													style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
													href="tatBatTuyenDung/${item.maTuyenDung}/${ item.tatBat}">Off</a>

											</c:if></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a
							style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
							href="them-tuyen-dung">Thêm mới</a>
					</div>
				</div>
			</div>
		</div>

	</main>
</c:if>