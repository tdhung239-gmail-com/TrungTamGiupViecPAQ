package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class chonDichVuMapper implements RowMapper<ChonDichVu> {

	public ChonDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ChonDichVu list = new ChonDichVu();
		list.setTenDichVu(rs.getString("tenDichVu"));
		return list;
	}

}