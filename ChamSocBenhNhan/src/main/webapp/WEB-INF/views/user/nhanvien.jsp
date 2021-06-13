<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="row ">
	<div class="col-lg-12"
		style="box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); margin-top: 20px; bottom: 10px; background: linear-gradient(90deg, #69b7eb, #b3dbd3, #f4d6db);" >
		<h1 class="display-8"
			style="margin: 20px; font-family: Times New Roman;">Danh sách
			nhân viên</h1>
	</div>
</div>
<section id="project-area" class="project-area solid-bg"
	style="background: white;">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="row shuffle-wrapper">
					<div class="col-1 shuffle-sizer"></div>

					<c:forEach var="item" items="${ nhanvienn }">
						<div class="col-lg-4 col-md-6 shuffle-item"
							data-groups="[&quot;government&quot;,&quot;healthcare&quot;]">

							<a
								href="<c:url value="/assets/user/images/nhanvien/${ item.hinhanh }"/>"
								aria-label="project-img">
								<div class="cardd"
									style="width: 350px; margin: 0 auto; margin-bottom: 20px; padding: 20px; background: linear-gradient(90deg, #F5F5F5, #FFFFFF, #F5F5F5);">
									<div class="im">
										<img class="card-img-top"
											style="border-radius: 10px 10px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
											src="<c:url value="/assets/user/images/nhanvien/${ item.hinhanh }"/>"
											alt="Card image cap">
									</div>
									<div class="card-body">
										<h5
											style="color: #FF9900; font-family: Times New Roman; font-size: 24px; text-align: center;">
											${ item.hoTen }</h5>
										<h5
											style="color: black; font-family: Times New Roman; font-size: 18px;">
											- Sinh năm:
											<fmt:formatDate pattern="dd-MM-yyy" value="${ item.namSinh }" />
										</h5>
										<h5
											style="color: black; font-family: Times New Roman; font-size: 18px;">-
											Quê quán: ${ item.queQuan }</h5>
										<h5
											style="color: black; font-family: Times New Roman; font-size: 18px;">-
											Chuyên: ${ item.tenDichVu }</h5>
										<h5
											style="color: black; font-family: Times New Roman; font-size: 18px;">
											<c:if test="${ item.tinhTrangLamViec == 'ranh' }">
									- Hiện tại: Đang rảnh
											</c:if>
											<c:if test="${ item.tinhTrangLamViec != 'ranh' }">
									- Hiện tại: Đang bận
											</c:if>
										</h5>

										<div class="stars" style="margin-left: 85px;">
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" style="color: #FF8C00;" fill="currentColor"
												class="bi bi-star-fill" viewBox="0 0 16 16">
  <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
</svg>
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" style="color: #FF8C00;" fill="currentColor"
												class="bi bi-star-fill" viewBox="0 0 16 16">
  <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
</svg>
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" style="color: #FF8C00;" fill="currentColor"
												class="bi bi-star-fill" viewBox="0 0 16 16">
  <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
</svg>
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" style="color: #FF8C00;" fill="currentColor"
												class="bi bi-star-fill" viewBox="0 0 16 16">
  <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
</svg>



											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" style="color: #FF8C00;" fill="currentColor"
												class="bi bi-star-half" viewBox="0 0 16 16">
  <path
													d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z" />
</svg>

										</div>
									</div>
								</div>

							</a>


						</div>

					</c:forEach>

				</div>
			</div>
		</div>
		<!-- Content row end -->
	</div>
	<!--/ Container end -->
</section>