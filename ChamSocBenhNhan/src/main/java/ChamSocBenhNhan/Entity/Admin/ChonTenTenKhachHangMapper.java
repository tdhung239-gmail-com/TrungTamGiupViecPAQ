package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ChonTenTenKhachHangMapper implements RowMapper<ChonKhachHang> {

	public ChonKhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
		ChonKhachHang list = new ChonKhachHang();
		list.setTenKhachHang(rs.getString("tenKhachHang"));

		return list;
	}

}