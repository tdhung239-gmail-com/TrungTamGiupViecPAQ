<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<section id="ts-features" class="ts-features">
	<div class="container"
		style="border: solid 2px red; box-shadow: 0 1px 5px rgba(0, 0, 0, 0.3); background: #FFFAFA;">
		<div class="row ">
			<div class="col-lg-12"
				style="border-bottom: solid 1px #DDDDDD; bottom: 10px;">
				<h1 class="display-8"
					style="margin-top: 40px; font-family: Times New Roman; text-align: center; color: red;">HÓA
					ĐƠN ĐĂNG KÝ DỊCH VỤ</h1>
				<p
					style="text-align: center; font-size: 20px; font-family: Times New Roman;">(Bản
					thể hiện của hóa đơn điện tử)</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12"
				style="text-align: justify; border-bottom: solid 1px #DDDDDD; bottom: 10px;">

				<h3
					style="color: red; font-family: Times New Roman; margin-top: 10px;">Trung
					tâm cho thuê người giúp việc FAQ</h3>

				<p style="font-size: 20px; font-weight: 600;">- Địa chỉ : 56/32
					Nguyễn Thành Hãn/ Đà Nẵng</p>
				<p style="font-size: 20px; font-weight: 600;">- Số điện thoại :
					0889195752</p>
			</div>
			<!-- Col end -->
		</div>
		<div class="row">
			<div class="col-lg-12" style="text-align: justify; bottom: 10px;">
				<c:forEach var="item" items="${ listdangkydichvu }">
					<p style="font-size: 20px; font-weight: 600; margin-top: 10px;">-
						Tên khách hàng : ${ item.tenKhachHang }</p>
					<p style="font-size: 20px; font-weight: 600;">- Địa chỉ : ${ item.diaChi }</p>
					<p style="font-size: 20px; font-weight: 600;">- Số điện thoại :
						${ item.sdt }</p>
					<p style="font-size: 20px; font-weight: 600;">- Địa chỉ sử dụng
						dịch vụ : ${ item.diaChiSuDungDichVu }</p>
					<p style="font-size: 20px; font-weight: 600;">- Mã số thuê (Tax
						code ) : ${ item.maDKDV }</p>
				</c:forEach>
			</div>
			<!-- Col end -->
		</div>
		<!-- Row end -->
		<table border="2" width="100%" cellpadding="2"
			style="text-align: center; margin-bottom: 15px;">
			<c:forEach var="item" items="${ listdangkydichvu }">

				<tr>
					<th rowspan="2">Tên dịch vụ</th>
					<c:if test="${item.gioBatDau =='00:00:00'   }">
						<th colspan="4">Thời gian làm việc</th>
					</c:if>
					<c:if test="${item.gioBatDau !='00:00:00'   }">
						<th colspan="3">Thời gian làm việc</th>

					</c:if>
					<th colspan="3">Tổng thời gian</th>
					<th rowspan="2">Phí dịch vụ</th>
					<th rowspan="2">Tổng tiền</th>

				</tr>
				<tr>
					<c:if test="${item.gioBatDau =='00:00:00'  }">
						<th>Ngày bắt đầu</th>
						<th>Ngày kết thúc</th>
					</c:if>
					<c:if test="${item.gioBatDau !='00:00:00' }">
						<th>Ngày làm việc</th>
					</c:if>

					<th>Giờ bắt đầu</th>
					<th>Giờ kết thúc</th>

					<th>Tổng tháng </br>(30 ngày)
					</th>
					<th>Tổng ngày</th>
					<th>Tổng giờ</th>
				</tr>
				<tr>

					<td><label>${ item.tenDichVu}</label></td>

					<!-- Ngày bắt đầu -->


					<!-- Ngày kết thúc -->

					<c:if test="${item.gioBatDau =='00:00:00'   }">
						<td><fmt:formatDate pattern="dd-MM-yyy"
								value="${ item.ngayBatDau }" /></td>
						<td><fmt:formatDate pattern="dd-MM-yyy"
								value="${ item.ngayKetThuc }" /></td>
					</c:if>
					<c:if test="${item.gioBatDau !='00:00:00'   }">
						<td><fmt:formatDate pattern="dd-MM-yyy"
								value="${ item.ngayBatDau }" /></td>
					</c:if>

					<!-- Giờ bắt đầu -->
					<c:if test="${item.gioBatDau == '00:00:00'  }">
						<td><label>NULL</label></td>
					</c:if>
					<c:if test="${item.gioBatDau !='00:00:00'  }">
						<td><label>${ item.gioBatDau }</label></td>
					</c:if>
					<!-- giờ kết thúc -->
					<c:if test="${item.gioKetThuc == '00:00:00'  }">
						<td><label>NULL</label></td>
					</c:if>
					<c:if test="${item.gioKetThuc !='00:00:00'  }">
						<td><label>${ item.gioKetThuc }</label></td>
					</c:if>

					<!--  Tổng tháng -->
					<c:if
						test="${item.luongTheoThang == '0' && item.luongTheoNgay != '0'|| item.luongTheoThang == '0' && item.luongTheoGio != '0'  }">
						<td><label>NULL</label></td>
					</c:if>
					<c:if
						test="${item.luongTheoThang != '0' && item.luongTheoNgay == '0'|| item.luongTheoThang != '0' && item.luongTheoGio == '0'  }">
						<td><label>${ item.tongThoiGianTheoThang} tháng</label></td>
					</c:if>



					<!-- Tổng ngày -->
					<c:if test="${item.luongTheoThang == '0'  }">
						<td><label>${ item.tongThoiGianTheoNgay} ngày</label></td>
					</c:if>
					<c:if test="${item.luongTheoThang != '0'  }">
						<td><label>có ${ item.tongThoiGianTheoNgay} ngày dư
								của dich vụ này (tháng)</label></td>
					</c:if>

					<!-- Tổng giờ -->
					<c:if test="${item.tongThoiGianTheoGio == '0'  }">
						<td><label>NULL</label></td>
					</c:if>
					<c:if test="${item.tongThoiGianTheoGio != '0'  }">
						<td><label>${ item.tongThoiGianTheoGio} giờ</label></td>
					</c:if>
					<!-- Tổng phí DV -->
					<td><label> <fmt:formatNumber
								value="${item.phiDichVu}" type="currency" />
					</label></td>

					<td><label> <fmt:formatNumber value="${item.tongTien}"
								type="currency" />
					</label></td>

				</tr>


			</c:forEach>

		</table>

		${param.message}
	</div>
	<!-- Container end -->
</section>