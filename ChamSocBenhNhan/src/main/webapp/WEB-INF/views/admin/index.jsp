<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:if test="${ not empty okee   }">
${param.message}
<main>
	<div class="container-fluid">
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item active">Dashboard</li>
		</ol>

		<div class="row">
			<div class="col-xl-6">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-chart-area mr-1"></i> Area Chart Example
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="40"></canvas>
					</div>
				</div>
			</div>
			<div class="col-xl-6">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-chart-bar mr-1"></i> Bar Chart Example
					</div>
					<div class="card-body">
						<canvas id="myBarChart" width="100%" height="40"></canvas>
					</div>
				</div>
			</div>
		</div>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> DataTable Example
			</div>
			<div class="select">
				<form:form method="post"
					action="/ChamSocBenhNhan/locThongKe/${okee }/1a1234Wq6cho4htue7${okee2 }"
					enctype="multipart/form-data">
					Chọn tháng năm lọc: 
					<form:select path="giaTriThang" items="${getChonThang}">
					</form:select>
					<form:select path="giaTriNam" items="${getChonNam}">
					</form:select>
					<input
						style="margin-left: 1%; margin-top: 40px; font-weight: bold; padding: 10px; color: red; border-radius: 10px 10px; font-size: 15px; background: linear-gradient(90deg, #FFEFD5, #FFEBCD); border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
						type="submit" value="Lọc" />

				</form:form>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable"
						style="text-align: center;">
						<thead>
							<tr>
								<th>Mã code</th>
								<th>Tên khách hàng</th>
								<th>Tên dịch vụ (mã dịch vụ)</th>
								<th>Giờ bắt đầu</th>
								<th>Giờ kết thúc</th>
								<th>Ngày bắt đầu</th>
								<th>Ngày kết thúc</th>
								<th>Tổng tháng </br>(30 ngày)
								</th>
								<th>Tổng ngày</th>
								<th>Tổng giờ</th>
								<th>Địa chỉ làm việc</th>
								<th>Phí DV</th>
								<th>Tổng tiền</th>
								<th>Tình trạng thanh toán</th>

							</tr>

						</thead>
						<tfoot>

						</tfoot>
						<tbody>


							<c:forEach var="item" items="${ qldkdv }">
								<tr>
									<td style="font-weight: bold;"><label>${ item.maDKDV}</label></td>

									<td><label>${ item.tenKhachHang}</label></td>
									<td><label>${ item.tenDichVu} (${ item.maDichVu})</label></td>
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
										<td><label>có ${ item.tongThoiGianTheoNgay} ngày
												dư của dich vụ này (tháng)</label></td>
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
									<td><label> <fmt:formatNumber
												value="${item.phiDichVu}" type="currency" />
									</label></td>


									<td><label> <fmt:formatNumber
												value="${item.tongTien}" type="currency" />
									</label></td>
									<td><label><c:if
												test="${item.tinhTrangThanhToan == 'chua'  }">
											chưa thanh toán
										</c:if> <c:if test="${item.tinhTrangThanhToan != 'chua'  }">
											 đã thanh toán
										</c:if></label></td>

								</tr>
							</c:forEach>

						</tbody>
					</table>
					<c:forEach var="item" items="${ sum }">
						<label
							style="color: red; font-size: 22px; font-style: italic; font-weight: bold;">
							Tổng thành tiền: <fmt:formatNumber value="${item.tongThanhTien}"
								type="currency" />
						</label>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<input style="display: none;" id="thang1" value=" ${ thang1}" /> 
	<input
		style="display: none;" id="thang2" value=" ${ thang2}" /> <input
		style="display: none;" id="thang3" value=" ${ thang3}" /> <input
		style="display: none;" id="thang4" value=" ${ thang4}" /> <input
		style="display: none;" id="thang5" value=" ${ thang5}" /> <input
		style="display: none;" id="thang6" value=" ${ thang6}" /> <input
		style="display: none;" id="thang7" value=" ${ thang7}" /> <input
		style="display: none;" id="thang8" value=" ${ thang8}" /> <input
		style="display: none;" id="thang9" value=" ${ thang9}" /> <input
		style="display: none;" id="thang10" value=" ${ thang10}" /> <input
		style="display: none;" id="thang11" value=" ${ thang11}" /> <input
		style="display: none;" id="thang12" value=" ${ thang12}" />
</main>
</c:if>