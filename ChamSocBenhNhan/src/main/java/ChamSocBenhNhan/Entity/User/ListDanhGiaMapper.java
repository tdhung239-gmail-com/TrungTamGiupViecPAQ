package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ListDanhGiaMapper implements RowMapper<ListDangKyDichVu> {

	public ListDangKyDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListDangKyDichVu dg = new ListDangKyDichVu();
		dg.setMaDanhGia(rs.getInt("maDanhGia"));
		dg.setHoTen(rs.getString("hoTen"));
		dg.setNoiDung(rs.getString("noiDung"));
		dg.setHinhAnh(rs.getString("hinhAnh"));
		dg.setVideo(rs.getString("video"));
		dg.setMaDichVu(rs.getInt("maDichVu"));
		return dg;
	}
}