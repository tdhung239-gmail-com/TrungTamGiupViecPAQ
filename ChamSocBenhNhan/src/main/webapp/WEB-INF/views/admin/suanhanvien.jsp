<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
	<li class="breadcrumb-item active">Cập nhật lại nhân viên</li>
</ol>
${param.message}
<div class="outside"
	style="width: 80%; margin: 0 auto; padding-top: 50px; padding-bottom: 10px; min-height: 200px; background: #F5F5F5; border-radius: 10px 10px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);">

	<form:form method="post" action="/ChamSocBenhNhan/luuSuaNhanVien"
		enctype="multipart/form-data">
		<table
			style="margin: 0 auto; padding: 20px; border-collapse: separate; border-spacing: 40px 20px;">
			<tr>
				<th colspan="2">
					<h3
						style="color: red; text-align:center; font-family: Arial; margin-bottom: 20px; font-weight: bold;">CHỈNH
						SỬA DỮ LIỆU NHÂN VIÊN</h3>
				</th>
			</tr>
			<tr>
				<td></td>
				<td><form:hidden path="maHSNV" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập tên nhân viên :&nbsp &nbsp</td>
				<td><form:input size="30" path="hoTen" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập số điện thoại :&nbsp &nbsp</td>
				<td><form:input path="sdt" size="30" required="required"  minlength="9" maxlength="10" type="tel" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập năm sinh :&nbsp &nbsp</td>
				<td style="font-size: 18px; width: 230px;"><form:input
						type="date" size="60" path="namSinh" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập quê quán :&nbsp &nbsp</td>
				<td><form:input size="30" path="queQuan" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập nơi cư trú hiện tại :&nbsp
					&nbsp</td>
				<td><form:input size="30" path="noiCuTruHienTai" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Chọn hình ảnh khác tải lên </br> (không
					chọn nếu muốn giữ hình cũ) :&nbsp &nbsp
				</td>

				<td style=""><input type="file" name="profile" /> <form:hidden
					path="hinhanh" /></td>
			<tr>
			<tr>
				<td style="font-size: 18px;">Chọn tình trạng làm việc : &nbsp &nbsp
				</td>
				<td style="font-size: 18px; width: 120px;"><form:select
						path="tinhTrangLamViec" items="${chonTinhTrangLV}">

					</form:select></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Chọn dịch vụ : &nbsp &nbsp
				</td>
				<td style="font-size: 18px; width: 120px;"><form:select
						path="maDichVu" items="${chonDichVu}">

					</form:select></td>
			</tr>

			<tr>

				<th colspan="2"><a
					style="margin-left: 23%; text-decoration: none; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
					href="<c:url value="/quan-li/nhan-vien/all"/>">Trở về</a> <input
					style="margin-left: 10%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
					type="submit" value="Cập nhật" /></th>
			</tr>
		</table>
	</form:form>
</div>
