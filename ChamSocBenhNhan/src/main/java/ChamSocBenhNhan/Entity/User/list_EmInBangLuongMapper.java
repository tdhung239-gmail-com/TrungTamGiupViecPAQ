package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class list_EmInBangLuongMapper implements RowMapper<list_EmInBangLuong> {

	public list_EmInBangLuong mapRow(ResultSet rs, int rowNum) throws SQLException {
		list_EmInBangLuong list = new list_EmInBangLuong();

		list.setMaHSNV(rs.getInt("maHSNV"));
		// list.setHoTen(rs.getString("hoTen"));
		list.setNgayBatDau(rs.getDate("ngayBatDau"));
		list.setNgayKetThuc(rs.getDate("ngayKetThuc"));
		list.setMaDKDV(rs.getInt("maDKDV"));
		// list.setTinhTrangDuyetHoSo(rs.getString("tinhTrangDuyetHoSo"));
		// list.setMaDichVu(rs.getInt("maDichVu"));

		return list;
	}

}