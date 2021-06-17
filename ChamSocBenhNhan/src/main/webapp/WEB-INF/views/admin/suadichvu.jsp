<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
	<li class="breadcrumb-item active">Cập nhật lại giới thiệu dịch vụ</li>
</ol>
${param.message}
<div class="outside"
	style="width: 80%; margin: 0 auto; padding-top: 50px; padding-bottom: 10px; min-height: 200px; background: #F5F5F5; border-radius: 10px 10px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);">

	<form:form method="post" action="/ChamSocBenhNhan/luuSuaDichVu"
		enctype="multipart/form-data">
		<table
			style="margin: 0 auto; padding: 20px; border-collapse: separate; border-spacing: 40px 20px;">
			<tr>
				<th colspan="2">
					<h3
						style="color: red; text-align: center; font-family: Arial; margin-bottom: 20px; font-weight: bold;">CHỈNH
						SỬA DỮ LIỆU GIỚI THIỆU DỊCH VỤ</h3>
				</th>
			</tr>
			<tr>
				<td></td>
				<td><form:hidden path="maDichVu" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập tên dịch vụ :&nbsp &nbsp</td>
				<td><form:input size="58" path="tenDichVu" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập giới thiệu dịch vụ :&nbsp
					&nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="gioiThieuDichVu"
						required="required" /></td>
			</tr>

			<tr>
				<td style="font-size: 18px;">Chọn hình hình ảnh dịch vụ </br>(Tải
					hình ảnh lên nếu bạn muốn thay đổi ảnh) :&nbsp &nbsp
				</td>
				<td style=""><input type="file" name="profile" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Điều kiện lý lịch :&nbsp &nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="dieuKienLyLich"
						required="required" /></td>
			</tr>

			<tr>
				<td style="font-size: 18px;">Nhập kỹ năng :&nbsp &nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="kyNang" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Chọn hình hình ảnh kỹ năng </br>(Tải
					hình ảnh lên nếu bạn muốn thay đổi ảnh) :&nbsp &nbsp
				</td>
				<td style=""><input type="file" name="profile2" /></td>
			</tr>
			<c:forEach var="item" items="${ dichvutheomadv }">
				<c:if test="${item.luongTheoGio!=0 }">
					<tr>
						<td style="font-size: 18px;">Nhập lương theo giờ :&nbsp &nbsp</td>
						<td><form:input size="58" path="luongTheoGio"
								required="required" /></td>
					</tr>
					<tr>
						<td style="font-size: 18px;">Nhập phí dịch vụ theo giờ:&nbsp
							&nbsp</td>
						<td><form:input size="58" path="phiDichVuTheoGio"
								required="required" /></td>
					</tr>

				</c:if>
				<c:if test="${item.luongTheoGio==0 }"></c:if>
				<c:if test="${item.luongTheoNgay!=0 }">
					<tr>
						<td style="font-size: 18px;">Nhập lương theo ngày :&nbsp
							&nbsp</td>
						<td><form:input size="58" path="luongTheoNgay"
								required="required" /></td>
					</tr>
					<tr>
						<td style="font-size: 18px;">Nhập phí dịch vụ theo ngày:&nbsp
							&nbsp</td>
						<td><form:input size="58" path="phiDichVuTheoNgay"
								required="required" /></td>
					</tr>

				</c:if>
				<c:if test="${item.luongTheoNgay==0 }"></c:if>

				<c:if test="${item.luongTheoThang!=0 }">
					<tr>
						<td style="font-size: 18px;">Nhập lương theo tháng :&nbsp
							&nbsp</td>
						<td><form:input size="58" path="luongTheoThang"
								required="required" /></td>
					</tr>


					<tr>
						<td style="font-size: 18px;">Nhập phí dịch vụ theo
							tháng:&nbsp &nbsp</td>
						<td><form:input size="58" path="phiDichVuTheoThang"
								required="required" /></td>
					</tr>
				</c:if>
				<c:if test="${item.luongTheoThang==0 }"></c:if>
			</c:forEach>

			<tr>

				<th colspan="2"><a
					style="margin-left: 23%; text-decoration: none; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
					href="<c:url value="/quan-li/dich-vu"/>">Trở về</a> <input
					style="margin-left: 10%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
					type="submit" value="Cập nhật" /></th>
			</tr>
		</table>
	</form:form>
</div>
