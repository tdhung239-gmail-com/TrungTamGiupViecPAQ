package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TongDonDangKyDichVuMapper implements RowMapper<ListDangKyDichVu> {

	public ListDangKyDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListDangKyDichVu list = new ListDangKyDichVu();
		list.setMaDKDV(rs.getInt("maDKDV"));
		return list;
	}

}