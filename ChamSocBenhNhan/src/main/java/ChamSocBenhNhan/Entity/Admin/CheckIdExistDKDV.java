package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

public class CheckIdExistDKDV implements RowMapper<ListDangKyDichVu> {

	public ListDangKyDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListDangKyDichVu list = new ListDangKyDichVu();
		list.setMaDKDV(rs.getInt("maDKDV"));
		return list;
	}

}

