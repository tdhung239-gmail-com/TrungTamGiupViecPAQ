package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ListGiaDichVuMapper implements RowMapper<ListGiaDichVu> {

	public ListGiaDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListGiaDichVu list = new ListGiaDichVu();
		list.setMaDichVu(rs.getInt("maDichVu"));

		list.setLuongTheoGio(rs.getInt("luongTheoGio"));
		list.setLuongTheoNgay(rs.getInt("luongTheoNgay"));
		list.setLuongTheoThang(rs.getInt("luongTheoThang"));

		return list;
	}

}