package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LienHeMapper implements RowMapper<LienHe> {

	public LienHe mapRow(ResultSet rs, int rowNum) throws SQLException {
		LienHe list = new LienHe();
		list.setMalienhe(rs.getInt("malienhe"));
		list.setTenlienhe(rs.getString("tenlienhe"));
		list.setEmail(rs.getString("email"));
		list.setSdt(rs.getBigDecimal("sdt"));
		list.setThongdiep(rs.getString("thongdiep"));
		return list;
	}

}
