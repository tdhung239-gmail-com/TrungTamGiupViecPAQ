package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class KhachHangMapper implements RowMapper<MaxIdCT> {

	public MaxIdCT mapRow(ResultSet rs, int rowNum) throws SQLException {
		MaxIdCT list = new MaxIdCT();
		list.setMaKhachHang(rs.getInt("maKhachHang"));
		return list;
	}

}
