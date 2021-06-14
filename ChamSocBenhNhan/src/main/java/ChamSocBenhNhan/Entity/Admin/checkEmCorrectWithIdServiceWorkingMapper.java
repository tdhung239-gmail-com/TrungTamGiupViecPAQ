package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class checkEmCorrectWithIdServiceWorkingMapper implements RowMapper<BangLuong> {

	public BangLuong mapRow(ResultSet rs, int rowNum) throws SQLException {
		BangLuong list = new BangLuong();
		
		list.setMaHSNV(rs.getInt("maHSNV"));
		list.setHoTen(rs.getString("hoTen"));
		
		//list.setMaDKDV(rs.getInt("maDKDV"));
		//list.setTinhTrangDuyetHoSo(rs.getString("tinhTrangDuyetHoSo"));
		list.setMaDichVu(rs.getInt("maDichVu"));
		
		return list;
	}

}
