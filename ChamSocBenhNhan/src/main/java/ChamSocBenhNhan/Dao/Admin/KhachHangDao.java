package ChamSocBenhNhan.Dao.Admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import ChamSocBenhNhan.Entity.Admin.ChonKhachHang;
import ChamSocBenhNhan.Entity.Admin.ChonMaKhachHangMapper;
import ChamSocBenhNhan.Entity.Admin.LienHe;
import ChamSocBenhNhan.Entity.Admin.LienHeMapper;
import ChamSocBenhNhan.Entity.Admin.ListKhachHangMapper;
import ChamSocBenhNhan.Entity.Admin.MaxIdCT;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ChonGiatriDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.chonDichVuMapper;

@Repository
public class KhachHangDao extends BaseDao { 

	public List<ListDangKyDichVu> getViewQlKhachHang(String maKhachHang) {
		List<ListDangKyDichVu> list = new ArrayList<ListDangKyDichVu>();
		String sql = null;
		if ("all".equals(maKhachHang)) {
			sql = "SELECT * from khachhang";
		} else {
			sql = "SELECT * from khachhang where maKhachHang = " + maKhachHang + "";
		}
		list = _jdbcTemplate.query(sql, new ListKhachHangMapper());
		return list;
	}

	public Map<String, String> getChonTinhTrangDuyetHoSo() {

		Map<String, String> states = new HashMap<String, String>();
		states.put("chua", "chưa");
		states.put("xong", "đã thanh toán");

		return states;
	}

	public Map<String, String> getChonTinhTrangLamViec() {

		Map<String, String> states = new HashMap<String, String>();
		states.put("ban", "bận");
		states.put("ranh", "rãnh");
		return states;
	}

	public Map<ChonDichVu, ChonDichVu> getChonDichVu() {
		List<ChonDichVu> listTen = new ArrayList<ChonDichVu>();
		List<ChonDichVu> listMa = new ArrayList<ChonDichVu>();
		String sql2 = "SELECT maDichVu FROM dichvu";
		listMa = _jdbcTemplate.query(sql2, new ChonGiatriDichVuMapper());
		String sql = "SELECT tenDichVu FROM dichvu ";
		listTen = _jdbcTemplate.query(sql, new chonDichVuMapper());
		Map<ChonDichVu, ChonDichVu> phones = new HashMap<ChonDichVu, ChonDichVu>();
		for (int i = 0; i < listTen.size(); i++) {
			phones.put(listMa.get(i), listTen.get(i));

		}
		// System.out.println(phones);
		return phones;
	}

	public int luuThemKhachHang(ListDangKyDichVu kh) {
		List<MaxIdCT> maxCT = _jdbcTemplate.query("SELECT MAX(maKhachHang) as maKhachHang FROM khachhang",
				new ChamSocBenhNhan.Entity.Admin.KhachHangMapper());
		Integer maxId = Integer.parseInt(maxCT.get(0).toString());
		if (maxId == 0) {
			maxId = 1;
		} else {
			maxId++;
		}
		String sql = "insert into khachhang(maKhachHang,tenKhachHang,sdt,diaChi)values('" + maxId + "','"
				+ kh.getTenKhachHang() + "','" + kh.getSdt() + "','" + kh.getDiaChi() + "')";
		return _jdbcTemplate.update(sql);

	}

	public ListDangKyDichVu getSuaKhachHang(Integer maKhachHang) {
		String sql = "SELECT maKhachHang, tenKhachHang, sdt, diaChi from khachhang where maKhachHang=?";
		return _jdbcTemplate.queryForObject(sql, new Object[] { maKhachHang },
				new BeanPropertyRowMapper<ListDangKyDichVu>(ListDangKyDichVu.class));

	}

	public int luuSuaKhachHang(ListDangKyDichVu p) {
		// if(sđt khogn phải kiểu ỉnt)
		String sql = "update khachhang set tenKhachHang='" + p.getTenKhachHang() + "', sdt='" + p.getSdt()
				+ "',diaChi='" + p.getDiaChi() + "' where maKhachHang=" + p.getMaKhachHang() + "";
		return _jdbcTemplate.update(sql);

	}

	public int xoaKhachHang(int id) {
		String sqlCheck = "SELECT dangkydichvu.maKhachHang from dangkydichvu where dangkydichvu.maKhachHang = "
				+ id + "";
		List<ChonKhachHang> listE_InBL = _jdbcTemplate.query(sqlCheck, new ChonMaKhachHangMapper());
		if (listE_InBL.isEmpty() ) {
			String sqld = "delete from khachhang where maKhachHang=" + id + "";
			return _jdbcTemplate.update(sqld);
		}
		return 0;
	}

	public List<LienHe> getViewQlLienHe() { 
		List<LienHe> list = new ArrayList<LienHe>(); 

		String sql = "SELECT malienhe,tenlienhe,email,sdt,thongdiep from lienhe "; 

		list = _jdbcTemplate.query(sql, new LienHeMapper()); 
		return list; 
	} 

	public int xoaLienHe(int id) { 
		String sql = "delete from lienhe where maLienHe=" + id + ""; 
		return _jdbcTemplate.update(sql); 
	} 

}
