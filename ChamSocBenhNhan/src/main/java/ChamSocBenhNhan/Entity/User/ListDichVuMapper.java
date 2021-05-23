package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ListDichVuMapper implements RowMapper<ListNhanVienvaDichVu> {

	public ListNhanVienvaDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListNhanVienvaDichVu list = new ListNhanVienvaDichVu();
		list.setMaDichVu(rs.getInt("maDichVu")); 
		list.setTenDichVu(rs.getString("tenDichVu"));
		list.setGioiThieuDichVu(rs.getString("gioiThieuDichVu"));
		list.setHinhAnhDichVu(rs.getString("hinhAnhDichVu"));
		list.setDieuKienLyLich(rs.getString("dieuKienLyLich"));
		list.setKyNang(rs.getString("kyNang"));
		list.setHinhAnhKyNang(rs.getString("hinhAnhKyNang"));
		list.setLuongTheoGio(rs.getInt("luongTheoGio"));
		list.setLuongTheoNgay(rs.getInt("luongTheoNgay"));
		list.setLuongTheoThang(rs.getInt("luongTheoThang"));
		list.setPhiDichVuTheoGio(rs.getInt("phiDichVuTheoGio"));
		list.setPhiDichVuTheoNgay(rs.getInt("phiDichVuTheoNgay"));
		list.setPhiDichVuTheoThang(rs.getInt("phiDichVuTheoThang"));
		return list;
	}

}