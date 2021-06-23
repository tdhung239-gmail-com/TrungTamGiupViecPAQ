<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${ not empty okee   }">

	<main>
		${param.message}
		<div class="container-fluid">
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a
					href="<c:url value="/quan-li/${okee }/1a1234Wq6cho4htue7${okee2 }"/>">Dashboard</a></li>
				<li class="breadcrumb-item active">Bảng đăng ký dịch vụ</li>
			</ol>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> DataTable
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
									<th width="80" >Chức năng</th>

								</tr>

							</thead>
							<tfoot>

							</tfoot>
							<tbody>


								<c:forEach var="item" items="${ qldkdv }">
									<tr>
										<td style="font-weight: bold;"><label>${ item.maDKDV}</label></td>

										<td><label>${ item.tenKhachHang}(${ item.maKhachHang})</label></td>
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
											<td><label>${ item.tongThoiGianTheoGio}</label></td>
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
										<td><a class="funtion"
											style="text-align: justify; border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); text-decoration: none;"
											href="SuaDKDV/${item.maDKDV}/${item.maDichVu}">Chỉnh sửa</a>
											</br> </br> <label> <a class="funtion"
												style="border-radius: 10px 10px; background: black; color: white; padding: 5px 5px; text-decoration: none; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);"
												href="xoaDKDV/${item.maDKDV}">Xóa</a>
												
												<br>
												<br>
										</label> <label><a
												
												href="/ChamSocBenhNhan/quan-li/khach-hang/${item.maKhachHang}">Xem
													hồ sơ khách hàng</a> </label></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>

						<div class="dropdown">
							<span
								style="background: linear-gradient(90deg, aqua, #CCFFFF); border-radius: 5px 5px; color: #888888; font-weight: bold; font-size: 23px; padding: 5px 5px; border: white; box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%);">Thêm
								mới</span>
							<div class="dropdown-content">
								<c:forEach var="item" items="${ listChonDV }">
									<a href="them/${item.maDichVu}">Đăng Ký Dich Vụ
										${item.tenDichVu }</a>
									</br>
								</c:forEach>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</main>

</c:if>
<c:if test="${empty okee  }"></c:if>