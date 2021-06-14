package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CheckDKDVOfBangLuongMapper implements RowMapper<CheckDangKyDichVuOfBangLuong> {

	public CheckDangKyDichVuOfBangLuong mapRow(ResultSet rs, int rowNum) throws SQLException {
		CheckDangKyDichVuOfBangLuong list = new CheckDangKyDichVuOfBangLuong();
		//list.setMaDKDV(rs.getInt("maDKDV"));
		//list.setGioBatDau(rs.getString("gioBatDau"));
		//list.setGioKetThuc(rs.getString("gioKetThuc"));
		list.setNgayBatDau(rs.getDate("ngayBatDau"));
		list.setNgayKetThuc(rs.getDate("ngayKetThuc"));
		return list;
	}

}