package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ChonGiatriDichVuMapper implements RowMapper<ChonDichVu> {

	public ChonDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ChonDichVu list = new ChonDichVu();
		list.setMaDichVu(rs.getInt("maDichVu")); 
		
		return list;
	}

}