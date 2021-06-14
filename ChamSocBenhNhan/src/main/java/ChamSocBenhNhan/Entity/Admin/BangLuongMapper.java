package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BangLuongMapper implements RowMapper<BangLuong> {

	public BangLuong mapRow(ResultSet rs, int rowNum) throws SQLException {
		BangLuong list = new BangLuong();
		list.setIdBangLuong(rs.getInt("idBangLuong"));
		
		list.setMaHSNV(rs.getInt("maHSNV"));
		list.setHoTen(rs.getString("hoTen"));
		
		list.setMaDKDV(rs.getInt("maDKDV"));
		list.setMaDichVu(rs.getInt("maDichVu"));
		
		list.setTongThanhTien(rs.getInt("tongThanhTien"));
		
		list.setTinhTrangThanhToan(rs.getString("tinhTrangThanhToan"));
		return list;
	}

}
