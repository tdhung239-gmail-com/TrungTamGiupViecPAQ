package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ChonTenNhanVienMapper   implements RowMapper<ChonNhanVien> {

	public ChonNhanVien mapRow(ResultSet rs, int rowNum) throws SQLException {
		ChonNhanVien list = new ChonNhanVien();
		list.setHoTen(rs.getString("hoTen")); 
		
		return list;
	}

}