<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
	<li class="breadcrumb-item active">Thêm mới giới thệu tuyển dụng</li>
</ol>
${param.message}
<div class="outside"
	style="width: 80%; margin: 0 auto; padding-top: 50px; padding-bottom: 50px; min-height: 200px; background: #F5F5F5; border-radius: 10px 10px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);">

	<form:form method="post" enctype="multipart/form-data"
		action="/ChamSocBenhNhan/luuThemTuyenDung">
		<table
			style="margin: 0 auto; padding: 20px; padding-left: 130px; border-collapse: separate; border-spacing: 40px 20px;">
			<tr>
				<th colspan="2">
					<h3
						style="color: red; font-family: Arial;text-align:center; margin-bottom: 20px; font-weight: bold;">THÊM
						MỚI DỮ LIỆU GIỚI THIỆU TUYỂN DỤNG</h3>
				</th>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập tiêu đề tuyển dụng :&nbsp
					&nbsp</td>
				<td><form:input size="40" path="tieuDeTuyenDung"
						required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Mô tả chung :&nbsp &nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="moTaChung" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Chọn hình ảnh tải lên :&nbsp &nbsp</td>

				<td style=""><input required="required" type="file"
					name="profile" /></td>
			<tr>
			</tr>
			<tr>
				<td style="font-size: 18px;">Mô tả công việc :&nbsp &nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="moTaCongViec"
						required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập quyền lợi :&nbsp &nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="quyenLoi" required="required" /></td>
			</tr>
			<tr>
				<td style="font-size: 18px;">Nhập yêu cầu công việc :&nbsp
					&nbsp</td>
				<td><form:textarea rows = "5" cols = "60" path="yeuCauCongViec"
						required="required" /></td>
			</tr>

			<tr>
				<td style="font-size: 18px;">Chọn dịch vụ : &nbsp &nbsp</td>
				<td style="font-size: 18px; width: 120px;"><form:select
						path="maDichVu" items="${chonDichVu}">

					</form:select></td>
			</tr>

			<tr>

				<th colspan="2"><a
					style="margin-left: 23%; text-decoration: none; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
					href="<c:url value="/quan-li/tuyen-dung"/>">Trở về</a> <input
					style="margin-left: 10%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 20px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
					type="submit" value="Thêm mới" /></th>
			</tr>
		</table>
	</form:form>
</div>
