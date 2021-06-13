package ChamSocBenhNhan.Dao.Admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListDanhGiaMapper;

@Repository
public class DanhGiaDao extends BaseDao {

	public List<ListDangKyDichVu> getViewQlDanhGia() {
		return _jdbcTemplate.query("select * from danhgia", new ListDanhGiaMapper());
	}

	public int xoaDanhGia(int id) {
		String sql = "delete from danhgia where maDanhGia=" + id + "";
		return _jdbcTemplate.update(sql);
	}
}
