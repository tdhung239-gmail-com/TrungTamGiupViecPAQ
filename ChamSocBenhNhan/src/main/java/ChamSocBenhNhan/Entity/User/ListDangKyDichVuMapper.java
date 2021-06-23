package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ListDangKyDichVuMapper implements RowMapper<ListDangKyDichVu> {

	public ListDangKyDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListDangKyDichVu list = new ListDangKyDichVu();
		list.setMaDKDV(rs.getInt("maDKDV"));
		list.setMaDichVu(rs.getInt("maDichVu"));
		list.setMaKhachHang(rs.getInt("maKhachHang"));
		list.setTenKhachHang(rs.getString("tenKhachHang"));
		list.setSdt(rs.getBigDecimal("sdt"));
		list.setDiaChi(rs.getString("diaChi"));
		list.setTenDichVu(rs.getString("tenDichVu"));
		list.setDiaChiSuDungDichVu(rs.getString("diaChiSuDungDichVu"));
		list.setGioBatDau(rs.getString("gioBatDau"));
		list.setGioKetThuc(rs.getString("gioKetThuc"));
		list.setNgayBatDau(rs.getDate("ngayBatDau"));
		list.setNgayKetThuc(rs.getDate("ngayKetThuc"));
		list.setLuongTheoNgay(rs.getInt("luongTheoNgay"));
		list.setLuongTheoThang(rs.getInt("luongTheoThang"));
		list.setPhiDichVuTheoGio(rs.getInt("phiDichVuTheoGio"));
		list.setPhiDichVuTheoNgay(rs.getInt("phiDichVuTheoNgay"));
		list.setPhiDichVuTheoThang(rs.getInt("phiDichVuTheoThang"));
		list.setTongThoiGianTheoNgay(rs.getInt("tongThoiGianTheoNgay"));
		list.setTongThoiGianTheoThang(rs.getInt("tongThoiGianTheoThang"));
		list.setTongThoiGianTheoGio(rs.getString("tongThoiGianTheoGio"));;
		list.setPhiDichVu(rs.getInt("phiDichVu"));
		list.setTongTien(rs.getInt("tongTien"));
		list.setTongThanhTien(rs.getInt("tongThanhTien"));
		list.setTinhTrangThanhToan(rs.getString("tinhTrangThanhToan"));
		return list;
	}

}
