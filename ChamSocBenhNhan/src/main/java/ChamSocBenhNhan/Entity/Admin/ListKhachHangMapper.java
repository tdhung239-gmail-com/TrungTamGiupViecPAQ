package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

public class ListKhachHangMapper implements RowMapper<ListDangKyDichVu> {

	public ListDangKyDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListDangKyDichVu list = new ListDangKyDichVu();
		list.setMaKhachHang(rs.getInt("maKhachHang"));
		list.setTenKhachHang(rs.getString("tenKhachHang"));
		list.setSdt(rs.getBigDecimal("sdt"));
		list.setDiaChi(rs.getString("diaChi"));
		
		return list;
	}

}
