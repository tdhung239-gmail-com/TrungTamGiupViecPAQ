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
				<li class="breadcrumb-item active">Đánh Giá</li>
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
									<th>Mã đánh giá</th>
									<th>Họ tên</th>
									<th>Nội dung</th>
									<th>Hình ảnh</th>
									<th>Video</th>
									<th>Mã dịch vụ</th>
									<th>Chức năng</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Mã đánh giá</th>
									<th>Họ tên</th>
									<th>Nội dung</th>
									<th>Hình ảnh</th>
									<th>Video</th>
									<th>Mã dịch vụ</th>
									<th>Chức năng</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="item" items="${ danhgia }">
									<tr>
										<td style="font-weight: bold;"><label>${ item.maDanhGia }
										</label></td>
										<td><label>${ item.hoTen } </label></td>
										<td><label>${ item.noiDung } </label></td>
										<td><a
											href="<c:url value="/assets/user/images/imageComment/${ item.hinhAnh }"/>"
											aria-label="project-img"> <img
												style="width: 100px; height: 100px;"
												src="<c:url value="/assets/user/images/imageComment/${ item.hinhAnh }"/>"
												alt="comment-img"> <span
												style="margin: 0; padding: 0;"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-upc-scan"
														viewBox="0 0 16 16">
  <path
															d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1h-3zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5zM.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5zm15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5zM3 4.5a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7zm2 0a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7zm2 0a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7zm2 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-7zm3 0a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7z" />
</svg> </i>
											</span>
										</a></td>
										<td><c:if test="${not empty item.video }">
												<a
													href="<c:url value="/assets/user/images/imageComment/${item.video}"/>"
													aria-label="project-video"> <video
														src="<c:url value="/assets/user/images/imageComment/${item.video}"/>"
														width="100" height="100" controls>
													</video> <span> <svg xmlns="http://www.w3.org/2000/svg"
															width="16" height="16" fill="currentColor"
															class="bi bi-upc-scan" viewBox="0 0 16 16">
  <path
																d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1h-3zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5zM.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5zm15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5zM3 4.5a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7zm2 0a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7zm2 0a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7zm2 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-7zm3 0a.5.5 0 0 1 1 0v7a.5.5 0 0 1-1 0v-7z" />
</svg> </i></span>
												</a>
											</c:if></td>
										<td><label>${ item.maDichVu } </label></td>

										<td><a
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="xoaDanhGia/${item.maDanhGia}">Xoá</a></td>

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