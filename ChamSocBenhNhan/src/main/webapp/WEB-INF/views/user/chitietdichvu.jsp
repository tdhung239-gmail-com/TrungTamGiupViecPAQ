<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="row ">
	<div class="col-lg-12"
		style="bottom: 10px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); margin-top: 20px; background: linear-gradient(90deg, #69b7eb, #b3dbd3, #f4d6db);">
		<h1 class="display-8"
			style="margin: 20px; font-family: Times New Roman;">Chi tiết
			dịch vụ</h1>
	</div>
</div>

<!--Bảng giá dịch vụ --> 
<section id="news" class="news">
	<div class="container">
		<div class="row text-center">
			<div class="col-12">
				<h3 class="section-sub-title" id="h"
					style="color: red; font-family: Times New Roman; text-shadow: -0.25vmin -0.25vmin 0vmin #00000026; font-weight: bold;">BẢNG
					GIÁ DỊCH VỤ</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="table-responsive">
					<table class="table table-bordered"
						style="box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.2); background: linear-gradient(90deg, #99FF66, #99FF99, #99FF66); text-align: center;"
						id="dataTable">
						<thead>
							<tr
								style="text-align: center; font-size: 18px; font-family: Courier New;">
								<th style="">Loại Hình Giúp Việc</th>
								<th style="">Phí Dịch Vụ</th>
								<th style="">Lương Người Giúp Việc</th>
							</tr>
						</thead>
						<tfoot>
							<tr
								style="text-align: center; font-size: 18px; font-family: Courier New;">
								<th style="">Loại Hình Giúp Việc</th>
								<th style="">Phí Dịch Vụ</th>
								<th style="">Lương Người Giúp Việc</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ listdichvu}">

								<tr>
									<!--tên dịch vụ -->
									<td><label> ${ item.tenDichVu} </label></td>

									<td>
										<!--phí dịch vụ --> <label> <c:if
												test="${ item.phiDichVuTheoGio ==0 }"></c:if> <c:if
												test="${item.phiDichVuTheoGio !=0 }">
												<fmt:formatNumber value="${item.phiDichVuTheoGio}"
													type="currency" />
											</c:if> <c:if test="${ item.phiDichVuTheoNgay ==0 }"></c:if> <c:if
												test="${item.phiDichVuTheoNgay !=0 }">
												<fmt:formatNumber value="${item.phiDichVuTheoNgay}"
													type="currency" />
											</c:if> <c:if test="${ item.phiDichVuTheoThang ==0 }"></c:if> <c:if
												test="${item.phiDichVuTheoThang !=0 }">
												<fmt:formatNumber value="${item.phiDichVuTheoThang}"
													type="currency" />
											</c:if>
									</label> <!--đóng dịch vụ -->
									</td>

									<td>
										<!--lương --> <label> <c:if
												test="${ item.luongTheoGio ==0 }"></c:if> <c:if
												test="${item.luongTheoGio !=0 }">
												<fmt:formatNumber value="${item.luongTheoGio}"
													type="currency" /> / Giờ</c:if> <c:if
												test="${ item.luongTheoNgay ==0 }"></c:if> <c:if
												test="${item.luongTheoNgay !=0 }">
												<fmt:formatNumber value="${item.luongTheoNgay}"
													type="currency" /> / Ngày</c:if> <c:if
												test="${ item.luongTheoThang ==0 }"></c:if> <c:if
												test="${item.luongTheoThang !=0 }">
												<fmt:formatNumber value="${item.luongTheoThang}"
													type="currency" />/ Tháng</c:if>
									</label> <!--đóng lương -->
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<!--Đóng dịch vụ -->
 
<!--Giới thiệu dịch vụ -->
<section id="ts-features" class="ts-features">
	<div class="container">
		<div class="row">
			<div class="col-lg-12" style="text-align: justify;">
				<c:forEach var="item" items="${ ctdv }">
					<h2 class="into-sub-title text-center"
						style="color: red; font-family: Times New Roman;">Dịch vụ:
						${item.tenDichVu}</h2>
					</br>
					</br>
					<p style="font-size: 20px; font-weight: 600;">-
						${item.gioiThieuDichVu}</p>

					<section id="ts-features" class="ts-features">
						<div class="container">
							<img
								src="<c:url value="/assets/user/images/${item.hinhAnhDichVu}"/>"
								style="height: 100%; width: 100%;" alt="logoGiupViec">
						</div>
					</section>

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
						Người giúp việc ${item.tenDichVu} phải có lý lịch rõ ràng:
					</p>
					<p style="font-size: 20px; font-weight: 600;">-
						${item.dieuKienLyLich}</p>

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
						Người giúp việc ${item.tenDichVu} phải có kỹ năng cơ bản:
					</p>

					<p style="font-size: 20px; font-weight: 600;">- ${item.kyNang}</p>


					<section id="ts-features" class="ts-features">
						<div class="container">
							<img
								src="<c:url value="/assets/user/images/${item.hinhAnhKyNang}"/>"
								style="height: 100%; width: 100%;" alt="logoGiupViec">
						</div>
					</section>

				</c:forEach>

			</div>
			<!-- Col end -->
		</div>
		<!-- Row end -->
	</div>
	<!-- Container end -->
</section>

<!--Đóng giới thiệu dịch vụ -->

<!--đăng ký dịch vụ-->

<div class="container">
	<div class="row">
		<div class="col-xl-1 col-lg-8 col-md-9 col-11 "></div>

		<div class="col-xl-10 col-lg-8 col-md-9 col-11 ">

			<div class="cardd">

				<h3 class="into-sub-title text-center"
					style="color: red; font-family: Times New Roman;">Đăng ký dịch
					vụ</h3>
				<div class="form-card">
					<!-- Set id cho ma dv -->
					<c:forEach var="item" items="${ ctdv }">
						<c:set var="idDichVu" value="${item.maDichVu}" />
					</c:forEach>
					<c:forEach var="itemm" items="${ maxCustomer }">
						<c:set var="maxIdCustomer" value="${itemm.maKhachHang}" />
					</c:forEach>

					<form:form method="post"
						action="/ChamSocBenhNhan/saves/${idDichVu}/${maxIdCustomer}">

						<table style="width: 100%; text-align: left;">
							<!-- X -->
							<c:forEach var="item" items="${ ctdv }">
								<!-- tên khách hàng -->
								<tr>
									<td style="padding-left: 100px;font-style: italic; font-weight: bold;">Tên Khách Hàng<span
										class="text-danger"> *</span></td>
								</tr>
								<tr>
									<td style="padding-left: 100px;"><form:input
											path="tenKhachHang" size="62" required="required"   pattern="^([a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+['-]?)+$" /></td>
								<tr>

									<!-- đóng tên khách hàng -->

									<!-- sđt -->
								<tr>
									<td style="padding-left: 100px;font-style: italic; font-weight: bold;">Số Điện Thoại<span
										class="text-danger"> *</span></td>
								</tr>
								<tr>
									<td style="padding-left: 100px;"><form:input path="sdt"
											placeholder="0273456789" type="tel" pattern="^(0[1-9][0-9]{8}|1[89]00[0-9]{4})$" size="62" required="required" /></td>
								<tr>
									<!-- đóng sđt -->

									<!-- địa chỉ -->
								<tr>
									<td style="padding-left: 100px;font-style: italic; font-weight: bold;">Địa Chỉ Khách hàng<span
										class="text-danger"> *</span></td>
								</tr>
								<tr>
									<td style="padding-left: 100px;"><form:input path="diaChi"   pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ/-]+['-]?)+$"
											required="required" size="62" /></td>
								<tr>
									<!-- đóng địa chỉ -->

									<!-- địa chỉ sử dụng dịch vụ -->
								<tr>
									<td style="padding-left: 100px; font-style: italic; font-weight: bold;">Nhập Địa Chỉ Sử Dụng Dịch Vụ Trong Khu Vực ĐÀ NẴNG<span
										class="text-danger"> *</span></td>
								</tr>
								<tr>
									<td style="padding-left: 100px;font-style: italic;">Chọn Quận<span
										class="text-danger"> *</span></td>
								</tr>
								<tr>
                     				 <td style="padding-left: 100px;">
                     					 <form:select id="city" onchange="ChangeCityList()" required="required"	path="diaChiQuan" >
  											<option value="">-- Chọn Quận --</option> 
  											<option value="Cẩm Lệ">Cẩm Lệ</option> 
 											<option value="Hải Châu">Hải Châu</option> 
 										 	<option value="Liên Chiểu">Liên Chiểu</option> 
    										<option value="Ngũ Hành Sơn">Ngũ Hành Sơn</option> 
      										<option value="Sơn Trà">Sơn Trà</option> 
       									<option value="Thanh Khê">Thanh Khê</option> 
										</form:select>
									</td>
								
								<tr>
								<tr>
									<td style="padding-left: 100px;font-style: italic;">Chọn Phường<span class="text-danger"> *</span></td>
								</tr>
								
								<tr>
									<td style="padding-left: 100px;">
										<form:select id="citymodel" path="diaChiPhuong">
										<option value="">-- Chọn Phường --</option> 
											</form:select> 
									</td>
								<tr>
								<tr>
									<td style="padding-left: 100px;font-style: italic;">Nhập Địa Chỉ Kiệt<span
										class="text-danger"> *</span></td>
								</tr>
								<tr>
									<td style="padding-left: 100px;"><form:input
											path="diaChiKiet" required="required" size="62" pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ-/]+['-]?)+$" /></td>
								<tr>
									<!-- đóng địa chỉ sử dụng dịch vụ -->

									<!-- hieeurn thị tiêu đề ngày bắt đầu, giờ bắt đầu -->
								<tr>
									<td style="padding-left: 100px;font-style: italic; font-weight: bold;">Ngày bắt đầu<span
										class="text-danger"> *</span> <!-- x --> <c:if
											test="${ item.phiDichVuTheoGio ==0   }">
										</c:if> <c:if test="${item.phiDichVuTheoGio !=0  }">
											<label style="margin-left: 320px;font-style: italic; font-weight: bold;" > Giờ bắt đầu <span
												class="text-danger"> *</span></label>
										</c:if>
									</td>
								</tr>
								<!-- đóng hieeurn thị tiêu đề ngày bắt đầu, giờ bắt đầu -->

								<!-- nhập ngày bắt đầu, giờ bắt đầu-->
								<tr>
									<td style="padding-left: 100px;"><form:input type="date"
											id="hhh" path="ngayBatDau" required="required" /> <!-- ngay -->
										<c:if test="${ item.phiDichVuTheoGio ==0   }">

										</c:if> <c:if test="${item.phiDichVuTheoGio !=0  }">
											<form:input type="time" path="gioBatDau" required="required"
												cssStyle="margin-left:205px;width:220px;" />
										</c:if></td>
								</tr>
								<!-- đóng nhập ngày bắt đầu, giờ bắt đầu-->

								<!-- hieeurn thị tiêu đề ngày kết thúc, giờ kết thúc -->
								<tr>
									<td style="padding-left: 100px;font-style: italic; font-weight: bold;"><c:if
											test="${ item.phiDichVuTheoGio ==0  }">
									Ngày kết thúc<span class="text-danger"> *</span>
										</c:if> <c:if test="${item.phiDichVuTheoGio !=0 }">
  									 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
									</c:if> <!-- gio --> <c:if test="${ item.phiDichVuTheoGio ==0   }"></c:if>
										<c:if test="${item.phiDichVuTheoGio !=0  }">
											<label style="margin-left: 320px;font-style: italic; font-weight: bold;"> Giờ kết thúc <span
												class="text-danger"> *</span></label>
										</c:if></td>
								</tr>
								<!--đóng hieeurn thị tiêu đề ngày kết thúc, giờ kết thúc -->

								<!-- nhập ngày kết thúc, giờ kết thúc -->
								<tr>
									<td style="padding-left: 100px;"><c:if
											test="${ item.phiDichVuTheoGio ==0   }">
											<form:input type="date" path="ngayKetThuc"
												required="required" />
										</c:if> <c:if test="${item.phiDichVuTheoGio !=0  }">
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
</c:if> <!-- gio --> <c:if test="${ item.phiDichVuTheoGio ==0   }"></c:if> <c:if
											test="${item.phiDichVuTheoGio !=0  }">
											<form:input id="hh" type="time" path="gioKetThuc"
												required="required"
												cssStyle="margin-left:205px;width:220px;" />
										</c:if></td>
								</tr>
								<!-- đóng nhập ngày kết thúc, giờ kết thúc -->
							</c:forEach>
						</table>

						<div class="row justify-content-center">
							<div class="col-sm-6" style="margin: 20px;">
								<input type="submit" class="btn-block btn-primary"
									value="Đăng Ký" />
							</div>
						</div>
					</form:form>

				</div>
			</div>
		</div>
		<div class="col-xl-1 col-lg-8 col-md-9 col-11 text-center"></div>
		<!-- Col end -->
	</div>
	<!-- Row end -->
</div>
<script>
var citysAndModels = {};
citysAndModels['Cẩm Lệ'] = ['Hòa An', 'Hòa Phát', 'Hòa Thọ Đông', 'Hòa Thọ Tây', 'Hòa Xuân'];
citysAndModels['Hải Châu'] = ['Bình Hiên', 'Bình Thuận', 'Hải Châu 1', 'Hải Châu 2', 'Hòa Cường Bắc', 'Hòa Cường Nam', 'Thạch Thang', 'Thanh Bình', 'Phước Ninh'];
citysAndModels['Liên Chiểu'] = ['Hòa Hiệp Bắc', 'Hòa Hiệp Nam', 'Hòa Khánh Bắc', 'Hòa Khánh Nam', 'Hòa Minh'];
citysAndModels['Ngũ Hành Sơn'] = ['Hòa Hải', 'Hòa Quý', 'Khuê Mỹ', 'Mỹ An'];
citysAndModels['Sơn Trà'] = ['An Hải Bắc', 'An Hải Đông', 'An Hải Tây', 'Mân Thái', 'Nại Hiên Đông','Thọ Quang'];
citysAndModels['Thanh Khê'] = ['An Khê', 'Chính Gián', 'Hòa Khê', 'Thạc Gián', 'Tân Chính', 'Thanh Khê Đông', 'Thanh Khê Tây', 'Vĩnh Trung', 'Xuân Hà'];

function ChangeCityList() {
	
  var cityList = document.getElementById("city");
  var modelList = document.getElementById("citymodel");
  var vlcity = cityList.options[cityList.selectedIndex].value;
  
  while (modelList.options.length) {
    modelList.remove(0);
  }
  var citys = citysAndModels[vlcity];
    var i;
    for (i = 0; i < citys.length; i++) {
      var city = new Option(citys[i]);
      modelList.options.add(city);
  }
} 

</script>
<!--đóng đăng ký dịch vụ-->

<!--Những con số ấn tượng -->
<section id="ts-features" class="ts-features">
	<div class="container">
		<div class="row ">
			<div class="col-lg-6" style="margin: 0; padding: 0;">
				<img
					src="<c:url value="/assets/user/images/imageComment/giupviec_lh.jpg"/>"
					style="box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); height: 450px; width: 500px;"
					alt="HinhAnhDanhGiaGiupViec">
			</div>

			<div class="col-lg-6">

				<h1 class="display-8 "
					style="font-family: Times New Roman; color: #F4A460;">Những
					con số ấn tượng</h1>
				</br>
				<p
					style="font-family: Times New Roman; font-size: 20px; text-align: justify;">Với
					nhiều năm kinh nghiệm trong lĩnh vực giúp việc gia đình, FAQ tự hào
					đang là giải pháp dọn nhà tốt nhất và tiện lợi nhất cho phụ nữ
					Việt.</p>
				</br> </br>
				<div class="row " style="text-align: center;">
				<c:forEach var="item" items="${ tongGioLamcuaNam }">
					<div class="col-lg-4" style="border-right: solid 1px #DDDDDD;">
						<h1 class="display-8"
							style="font-family: Times New Roman; color: #66FFFF;">  <fmt:formatNumber value="${item.tongThanhTien}"
													type="NUMBER" /></h1>
						<p style="font-family: Times New Roman; font-size: 18px;">Giờ
							làm của nhân viên / năm hiện tại</p>
					</div>
					</c:forEach>
					<c:forEach var="item" items="${ tongKhachHangDuocPhucVu }">
					<div class="col-lg-4" style="border-right: solid 1px #DDDDDD;">
						<h1 class="display-8"
							style="font-family: Times New Roman; color: #66FFFF;">${ item.tongThanhTien }+</h1>
						<p style="font-family: Times New Roman; font-size: 18px;">Khách
							hàng được phục vụ</p>
					</div>
					</c:forEach>
					<div class="col-lg-4" style="border-right: solid 1px #DDDDDD;">
						<h1 class="display-8"
							style="font-family: Times New Roman; color: #66FFFF;">98%</h1>
						<p style="font-family: Times New Roman; font-size: 18px;">Khách
							hàng hài lòng</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Row end -->
	</div>
	<!-- Container end -->
</section>
<!--Đóng những con số ấn tượng -->




<!--  comment  -->
<section id="ts-features" class="ts-features"> 
 	<div class="container"
 		style="box-shadow: 0 6px 12px rgba(100, 100, 100, 12); border-radius: 10px 10px; background: #D3D3D3;">
	  	<div class="row ">
	 		<div class="col-lg-12"
	 			style="border-bottom: solid 1px #DDDDDD; bottom: 10px;">
	 			<h1 class="display-8"
  					style="margin: 20px; float: left; font-family: Times New Roman; color: #F4A460;">(${sizeCommentAll.size()})
 					Đánh giá</h1>
 				<c:forEach var="item" items="${ ctdv }">
 					<c:set var="idDichVu" value="${item.maDichVu}" />
 				</c:forEach>
 
		 		<c:if test="${ limit=='commentAll'  }">
		 			<a
	  					style="float: right; font-size: 23px; color: black; font-family: Times New Roman; margin-top: 28px;"
	 					href="${idDichVu}/recordCommentAll">>> Thu gọn đánh giá<<</a>
	 			</c:if>
				<c:if test="${ limit!='commentAll'  }">
	 				<a
	 					style="float: right; font-size: 23px; color: black; font-family: Times New Roman; margin-top: 28px;"
  						href="${idDichVu}/commentAll">>>Xem tất cả đánh giá<<</a>
 				</c:if>
 
 
 			</div>
 		</div>
 		<c:forEach var="item" items="${ ctdv }">
 			<c:set var="idDichVu" value="${item.maDichVu}" />
 		</c:forEach>
 		<form:form method="post"
 			action="/ChamSocBenhNhan/saveComment/${idDichVu}"
 			enctype="multipart/form-data">
 
		 	<div class="form-group">
			 	<form:input path="hoTen" size="49" required="required"
			 	pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ/-]+['-]?)+$"
			 		placeholder="enter name" />
			 	<form:textarea path="noiDung" required="required" rows="4" 
			 	pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ/-]+['-]?)+$"
			 	
			 		cols="100" placeholder="add comment" />
			 		<br><label style="font-size: 19px; color: black;">
			 
			  <label
			 		style="color: red;">*</label>Thêm ảnh:
			 	</label> &nbsp &nbsp &nbsp &nbsp <input type="file" name="profile" /> </br> <label
				 	style="font-size: 19px; color: black;"> <label
				 	style="color: red;">*</label>Thêm video:
				</label> &nbsp &nbsp  <input type="file" 
					name="profile2" />  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
				<button 
				 	style="background: red; background: linear-gradient(90deg, #faf0cd, #fab397);">Đánh
					giá</button> 
			</div> 
		</form:form> 
		<div class="row"> 
			<div class="col-lg-12" 
				style="text-align: justify; margin-left: 40px;"> 

				<!--  comment  --> 
				<c:if test="${ limit=='commentAll'  }"> 
					<c:set var="idComment" value="${ commentAll }" /> 
				</c:if> 
				<c:if test="${ limit!='commentAll'  }"> 
					<c:set var="idComment" value="${ comment }" /> 
				</c:if> 
				<c:forEach var="item" items="${ idComment }"> 

					<p 
						style="font-size: 23px; font-weight: bold; color: orange;  font-weight: 600;">-
						${item.hoTen} :</p> 
					<p style="font-size: 20px; font-weight: 600; margin-left: 15px;">${item.noiDung}</p> 
					<c:if test="${item.hinhAnh != ' '  }"> 
						<section id="ts-features" class="ts-features"> 
							<div class="container"> 
								<img 
									src="<c:url value="/assets/user/images/imageComment/${item.hinhAnh}"/>" 
									style="box-shadow: 0px 0px 3px 3px; height: 600px; width: 1000px; border-radius: 30px 30px;" 
									alt="HinhAnhDanhGiaGiupViec"> 
							</div> 
						</section> 
					</c:if>  

					<c:if test="${item.hinhAnh == 'NULL'  }"></c:if> 


					<c:if test="${not empty item.video }"> 
						<video 
							src="<c:url value="/assets/user/images/imageComment/${item.video}"/>" 
							width="1050" height="500" controls> 
						</video> 
					</c:if> 


				</c:forEach> 


			</div> 
			<!-- Col end -->
		</div> 
		<!-- Row end -->
	</div> 
	<!-- Container end -->

</section> 
<!--  comment close -->

${param.message} 
<!-- <button data-id="${ item.ida}" class="btn btn-mini btn-danger s"
	type="button">
	<span class="icon-remove"></span>
</button>
 


<content tag="script"> <script>
	$(".s").on("click", function() {
		var h = $("#hh").val();
		var hh = $("#hhh").val();
		alert(h);
		alert(hh);
	});
</script> </content> -->
