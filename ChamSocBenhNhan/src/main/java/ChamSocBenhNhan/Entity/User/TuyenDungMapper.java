package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TuyenDungMapper implements RowMapper<TuyenDung> {

	public TuyenDung mapRow(ResultSet rs, int rowNum) throws SQLException {
		TuyenDung list = new TuyenDung();
		list.setMaDichVu(rs.getInt("maDichVu"));
		list.setMaTuyenDung(rs.getInt("maTuyenDung"));
		list.setMoTaChung(rs.getString("moTaChung"));
		list.setHinhAnh(rs.getString("hinhAnh"));
		list.setMoTaCongViec(rs.getString("moTaCongViec"));
		list.setQuyenLoi(rs.getString("quyenLoi"));
		list.setTieuDeTuyenDung(rs.getString("tieuDeTuyenDung"));
		list.setYeuCauCongViec(rs.getString("yeuCauCongViec"));
		list.setTatBat(rs.getInt("tatBat"));

		return list;
	}

}
