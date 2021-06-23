package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ThongTinMapper implements RowMapper<ThongTin> {

	public ThongTin mapRow(ResultSet rs, int rowNum) throws SQLException {
		ThongTin taiKhoan = new ThongTin();
		taiKhoan.setId(rs.getInt("id"));
	    taiKhoan.setTuoi(rs.getInt("tuoi"));
		return taiKhoan;
	}
}
