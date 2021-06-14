<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<table border="2" width="70%" cellpadding="2">
	<tr>
		<th rowspan="2">Mã code</th>
		<th rowspan="2">Mã dịch vụ</th>
		<th rowspan="2">Tên khách hàng</th>
		<th rowspan="2">SDT</th>
		<th rowspan="2">Tên dịch vụ</th>
		<th colspan="4">Mốc thời gian làm việc</th>
		<th colspan="3">Tổng thời gian làm việc</th>
		<th rowspan="2">Địa chỉ sử dụng</th>
		<th rowspan="2">Phí DV</th>

		<th rowspan="2">Tổng tiền</th>

	</tr>
	<tr>

		<th>Giờ bắt đầu</th>
		<th>Giờ kết thúc</th>
		<th>Ngày bắt đầu</th>
		<th>Ngày kết thúc</th>
		<th>Tổng tháng </br>(30 ngày)
		</th>
		<th>Tổng ngày</th>
		<th>Tổng giờ</th>

	</tr>
	<c:forEach var="item" items="${ listdangkydichvu }">
		<tr>
			<td><label>${ item.maDKDV}</label></td>
			<td><label>${ item.maDichVu}</label></td>
			<td><label>${ item.tenKhachHang}</label></td>
			<td><label>${ item.sdt}</label></td>
			<td><label>${ item.tenDichVu}</label></td>
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
			<!-- Ngày bắt đầu -->
			<td><fmt:formatDate pattern="dd-MM-yyy"
					value="${ item.ngayBatDau }" /></td>

			<!-- Ngày kết thúc -->

			<c:if test="${item.ngayKetThuc == '1111-01-01'  }">
				<td><label>NULL</label></td>
			</c:if>
			<c:if test="${item.ngayKetThuc !='1111-01-01'  }">
				<td><fmt:formatDate pattern="dd-MM-yyy"
						value="${ item.ngayKetThuc }" /></td>
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
				<td><label>có ${ item.tongThoiGianTheoNgay} ngày dư của
						dich vụ này (tháng)</label></td>
			</c:if>

			<!-- Tổng giờ -->
			<c:if test="${item.tongThoiGianTheoGio == '0'  }">
				<td><label>NULL</label></td>
			</c:if>
			<c:if test="${item.tongThoiGianTheoGio != '0'  }">
				<td><label>${ item.tongThoiGianTheoGio} giờ</label></td>
			</c:if>
			<!-- Địa chỉ -->
			<td><label>${ item.diaChiSuDungDichVu}</label></td>
			
			<!-- Tổng phí DV -->
			<td><label> <fmt:formatNumber value="${item.phiDichVu}"
						type="currency" />
			</label></td>
			
			
			<td><label> <fmt:formatNumber value="${item.tongTien}"
						type="currency" />
			</label></td>

		</tr>


	</c:forEach>

</table>
<c:forEach var="item" items="${ sum }">
	<label> Tổng thành tiền: <fmt:formatNumber
			value="${item.tongThanhTien}" type="currency" />
	</label>
</c:forEach>


