package ChamSocBenhNhan.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ListNhanVienMapper implements RowMapper<ListNhanVienvaDichVu> {

	public ListNhanVienvaDichVu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListNhanVienvaDichVu list = new ListNhanVienvaDichVu();
		list.setMaDichVu(rs.getInt("maDichVu")); 
		list.setTenDichVu(rs.getString("tenDichVu"));
		list.setMaHSNV(rs.getInt("maHSNV")); 
		list.setHoTen(rs.getString("hoTen"));
		list.setSdt(rs.getBigDecimal("sdt"));
		list.setNamSinh(rs.getDate("namSinh"));
		list.setQueQuan(rs.getString("queQuan"));
		list.setNoiCuTruHienTai(rs.getString("noiCuTruHienTai"));
		list.setHinhanh(rs.getString("hinhanh"));
		list.setTinhTrangDuyetHoSo(rs.getString("tinhTrangDuyetHoSo")); 
		list.setTinhTrangLamViec(rs.getString("tinhTrangLamViec")); 
		return list;
	}

}
