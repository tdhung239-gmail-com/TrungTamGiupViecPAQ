<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row ">
	<div class="col-lg-12"
		style="box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); margin-top: 20px; bottom: 10px; background: linear-gradient(90deg, #FFFAF0, #FFFAF0, #FFFAF0);">
		<h1 class="display-8"
			style="margin: 20px; font-family: Times New Roman;">Chi tiết
			tuyển dụng</h1>
	</div>
</div>
<c:forEach var="item" items="${ cttd }">

	<c:if test="${ item.tatBat == '0' }">
		<h1 style="text-align: center; color: red; margin: 80px;">Hiện
			tại trung tâm PAQ không tuyển dụng dịch vụ này!!!</h1>
	</c:if>
	<c:if test="${ item.tatBat == '1' }">
									
											
${param.message}
<section id="ts-features" class="ts-features">
			<div class="container">
				<div class="row">
					<div class="col-lg-12" style="text-align: justify;">

						<c:forEach var="item" items="${ cttd }">
							<h2 class="into-sub-title text-center"
								style="color: red; font-family: Times New Roman;">Tuyển
								dụng dịch vụ: ${item.tieuDeTuyenDung}</h2>
							</br>
							</br>
							<p style="font-size: 20px; font-weight: 600;">
								${item.moTaChung}</p>

							<section id="ts-features" class="ts-features">
								<div class="container">
									<img
										src="<c:url value="/assets/user/images/tuyendung/${item.hinhAnh}"/>"
										style="height: 600px; width: 100%;" alt="logoGiupViec">
								</div>
							</section>


						</c:forEach>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6" style="text-align: justify;">
						<c:forEach var="item" items="${ cttd }">
							<p
								style="font-size: 23px; color: red; font-weight: 600; font-style: italic;">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-check-circle"
									viewBox="0 0 16 16">
  							<path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  							<path
										d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
						</svg>
								Mô tả công việc:
							</p>
							<p style="font-size: 20px; font-weight: 600;">-
								${item.moTaCongViec}</p>
							<p
								style="font-size: 23px; color: red; font-weight: 600; font-style: italic;">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-check-circle"
									viewBox="0 0 16 16">
 							 <path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
							  <path
										d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
						</svg>
								Quyền lợi:
							</p>

							<p style="font-size: 20px; font-weight: 600;">-
								${item.quyenLoi}</p>

							<p
								style="font-size: 23px; color: red; font-weight: 600; font-style: italic;">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-check-circle"
									viewBox="0 0 16 16">
 							 <path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
							  <path
										d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
						</svg>
								Yêu cầu công việc:
							</p>

							<p style="font-size: 20px; font-weight: 600;">-
								${item.yeuCauCongViec}</p>
						</c:forEach>

					</div>



					<!-- Col end -->

					<div class="col-lg-6">

						<div class="cardd">

							<h3 class="into-sub-title text-center"
								style="color: red; font-family: Times New Roman;">Đăng ký
								tuyển dụng</h3>
							<div class="form-card">
								<!-- Set id cho ma dv -->

								<c:forEach var="item" items="${ cttd }">
									<c:set var="idTuyenDung" value="${item.maTuyenDung}" />
										<c:set var="maDichVu" value="${item.maDichVu}" />
									
								</c:forEach>

								<form:form method="post" enctype="multipart/form-data"
									action="/ChamSocBenhNhan/home/cttd/save/${idTuyenDung }/${maDichVu}">

									<table style="width: 100%; text-align: left;">
										<!-- X -->

										<!-- tên khách hàng -->
										<tr>
											<td style="">Họ tên<span class="text-danger"> *</span></td>
										</tr>
										<tr>
											<td style=""><form:input path="hoTen"  pattern="^([a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+['-]?)+$"
													required="required" size="43" /></td>
										<tr>
										<tr>
											<td style="">Năm sinh<span class="text-danger"> *</span></td>
										</tr>
										<tr>
											<td style=""><form:input type="date" path="namSinh"
													required="required" cssStyle="width:230px;" /></td>
										</tr>
										<tr>
											<td style="">Số điện thoại<span class="text-danger"> *</span></td>
										</tr>
										<tr>
											<td style=""><form:input required="required"
													 placeholder="0273456789" type="tel" pattern="^(0[1-9][0-9]{8}|1[89]00[0-9]{4})$" path="sdt" size="43" /></td>
										<tr>
										<tr>
											<td style="">Quê quán<span class="text-danger"> *</span></td>
											
										</tr>
										<tr>
											<td style=""><form:input required="required"   pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ/-]+['-]?)+$"
													path="queQuan" size="43" /></td>
										<tr>
										<tr>
											<td style="">Nơi cư trú hiện tại<span
												class="text-danger"> *</span></td>
										</tr>
										<tr>
											<td style=""><form:input required="required"  pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ/-]+['-]?)+$"
													path="noiCuTruHienTai" size="43" /></td>
										<tr>
										<tr>
											<td style="">Hình ảnh<span class="text-danger"> *</span></td>
										</tr>

										<tr>
											<td style=""><input type="file" required="required"
												name="profile" /></td>
										<tr>
											<!-- <tr>
											<td style="">Chọn dịch vụ <span class="text-danger">
													*</span></td>
										</tr>

										<tr>
											<td style="font-size: 18px; width: 120px;"><form:select
													path="maDichVu" items="${chonGiaTriDichVu}"
													style=" font-size: 18px; width: 230px;">

												</form:select></td>
										</tr>  -->
											<!-- đóng địa chỉ sử dụng dịch vụ -->
									</table>

									<div class="row justify-content-center">
										<div class="col-sm-6" style="margin: 20px;">
											<input type="submit" class="btn-block btn-primary"
												value="Đăng Ký" />
										</div>
									</div>

								</form:form>
								<div class="fb-post" style="margin-left: 10px;"
									data-href="https://www.facebook.com/permalink.php?story_fbid=111194267768432&amp;id=104630031758189"
									data-width="440" data-show-text="true">
									<blockquote
										cite="https://www.facebook.com/permalink.php?story_fbid=111194267768432&amp;id=104630031758189"
										class="fb-xfbml-parse-ignore">
										<p>Với mục tiêu “uy tín- chất lượng- nhanh chóng ”, mục
											tiêu hoạt động của Trung tâm chính là đảm bảo quyền lợi tuyệt
											đối...</p>
										Người đăng: <a
											href="https://www.facebook.com/Cho-Thu&#xea;-Ng&#x1b0;&#x1edd;i-Gi&#xfa;p-Vi&#x1ec7;c-104630031758189/">Cho
											Thuê Người Giúp Việc</a> vào&nbsp;<a
											href="https://www.facebook.com/permalink.php?story_fbid=111194267768432&amp;id=104630031758189">Chủ
											nhật, 25 tháng 4, 2021</a>
									</blockquote>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<!-- Row end -->
			<!-- Container end -->
		</section>
	</c:if>
</c:forEach>