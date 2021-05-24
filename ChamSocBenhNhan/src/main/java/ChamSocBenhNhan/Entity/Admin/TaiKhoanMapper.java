package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TaiKhoanMapper implements RowMapper<TaiKhoan> {

	public TaiKhoan mapRow(ResultSet rs, int rowNum) throws SQLException {
		TaiKhoan taiKhoan = new TaiKhoan();
		taiKhoan.setTenTaiKoan(rs.getString("TenTaiKhoan")); // giong vs sql
		taiKhoan.setMatKhau(rs.getInt("MatKhau"));
		return taiKhoan;
	}
}
