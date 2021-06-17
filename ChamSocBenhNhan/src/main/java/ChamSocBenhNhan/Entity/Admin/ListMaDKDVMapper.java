package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ListMaDKDVMapper implements RowMapper<ListtMaDKDV> {

	public ListtMaDKDV mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListtMaDKDV list = new ListtMaDKDV();
		list.setMaDKDV(rs.getInt("maDKDV"));
		return list;
	}

}
