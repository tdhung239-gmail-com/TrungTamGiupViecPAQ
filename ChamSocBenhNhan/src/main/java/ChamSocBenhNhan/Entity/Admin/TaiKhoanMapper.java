package ChamSocBenhNhan.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TaiKhoanMapper implements RowMapper<TaiKhoan> {

	public TaiKhoan mapRow(ResultSet rs, int rowNum) throws SQLException {
		TaiKhoan taiKhoan = new TaiKhoan();
		taiKhoan.setTenTaiKhoan(rs.getString("tenTaiKhoan"));
		taiKhoan.setMatKhau(rs.getString("matKhau"));
		return taiKhoan;
	}
}
