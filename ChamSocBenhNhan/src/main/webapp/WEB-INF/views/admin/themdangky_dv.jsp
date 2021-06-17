<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
	<li class="breadcrumb-item active">Thêm mới đăng ký dịch vụ</li>
</ol>
${param.message}
<div class="outside"
	style="width: 80%; margin: 0 auto; padding-top: 50px; padding-bottom: 50px; min-height: 200px; background: #F5F5F5; border-radius: 10px 10px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);">

	<c:forEach var="item" items="${ listChonDVTheoMaDV }">
		<form:form method="post" enctype="multipart/form-data"
			action="/ChamSocBenhNhan/luuThemDKDV/${item.maDichVu}">
			<table
				style="margin: 0 auto; padding: 20px; border-collapse: separate; border-spacing: 40px 20px;">
				<tr>
					<th colspan="2">
						<h3
							style="color: red; text-align: center; font-family: Arial; margin-bottom: 20px; font-weight: bold;">THÊM
							MỚI DỮ LIỆU ĐĂNG KÝ DỊCH VỤ</h3>
					</th>
				</tr>

				<tr>
					<td style="font-size: 18px;">Chọn mã khách hàng : &nbsp &nbsp</td>
					<td style="font-size: 18px; width: 120px;"><form:select
							path="maKhachHang" items="${chonKhachHang}">

						</form:select></td>
				</tr>
				<tr>
					<td style="font-size: 18px;">Ngày bắt đầu :&nbsp &nbsp</td>
					<td style="font-size: 18px; width: 230px;"><form:input
							type="date" size="60" path="ngayBatDau" required="required" /></td>
				</tr>


				<tr>
					<c:if test="${ item.phiDichVuTheoGio ==0   }">
						<td style="font-size: 18px;">Ngày kết thúc :&nbsp &nbsp</td>
						<td style="font-size: 18px; width: 230px;"><form:input
								type="date" size="60" path="ngayKetThuc" required="required" /></td>
					</c:if>
				</tr>

				<c:if test="${item.phiDichVuTheoGio !=0  }">
					<tr>
						<td style="font-size: 18px;">Giờ bắt đầu :&nbsp &nbsp</td>
						<td style="font-size: 18px; width: 230px;"><form:input
								type="time" size="60" path="gioBatDau" required="required" /></td>
					</tr>
				</c:if>


				<c:if test="${item.phiDichVuTheoGio !=0  }">
					<tr>
						<td style="font-size: 18px;">Giờ kết thúc :&nbsp &nbsp</td>
						<td style="font-size: 18px; width: 230px;"><form:input
								type="time" size="60" path="gioKetThuc" required="required" /></td>
					</tr>
				</c:if>

				<tr>
					<td style="font-size: 18px;">Địa chỉ sử dụng dịch vụ :&nbsp
						&nbsp</td>
					<td><form:input size="30" path="diaChiSuDungDichVu" required="required" /></td>
				</tr>


				<tr>
					<th colspan="2"><a
						style="margin-left: 23%; text-decoration: none; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #EEEEEE, #fab397); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
						href="<c:url value="/quan-li/dang-ky-dich-vu/all"/>">Trở về</a> <input
						style="margin-left: 10%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #EEEEEE, #fab397); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
						type="submit" value="Thêm mới" /></th>
				</tr>
			</table>
		</form:form>
	</c:forEach>


</div>
