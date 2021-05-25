package ChamSocBenhNhan.Dao.Admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Dao.User.Compare;
import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.Admin.BangLuongMapper;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ChonGiatriDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListNhanVienMapper;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Entity.User.chonDichVuMapper;

@Repository
public class NhanVienDao extends BaseDao {

	public List<ListNhanVienvaDichVu> getViewQlNhanVien(String maNhanVien) {
		List<ListNhanVienvaDichVu> list = new ArrayList<ListNhanVienvaDichVu>();
		String sql = null;
		if ("all".equals(maNhanVien)) {
			sql = "SELECT hosonhanvien.maDichVu,hosonhanvien.maHSNV,dichvu.tenDichVu,hoTen,sdt,namSinh,queQuan,noiCuTruHienTai,hinhanh,tinhTrangLamViec,tinhTrangDuyetHoSo FROM `hosonhanvien`,dichvu WHERE hosonhanvien.maDichVu = dichvu.maDichVu AND hosonhanvien.tinhTrangDuyetHoSo='xong'";
		} else {
			sql = "SELECT hosonhanvien.maDichVu,hosonhanvien.maHSNV,dichvu.tenDichVu,hoTen,sdt,namSinh,queQuan,noiCuTruHienTai,hinhanh,tinhTrangLamViec,tinhTrangDuyetHoSo FROM `hosonhanvien`,dichvu WHERE hosonhanvien.maDichVu = dichvu.maDichVu AND hosonhanvien.tinhTrangDuyetHoSo='xong' AND maHSNV = '"
					+ maNhanVien + "'";
		}
		list = _jdbcTemplate.query(sql, new ListNhanVienMapper());
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

	public int luuNhanVien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s, ChonDichVu dv,
			ListNhanVienvaDichVu hsnv) {

		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + "nhanvien" + File.separator + file.getOriginalFilename();
		String fileName;
		if (path != "") {
			try {
				FileOutputStream fos = new FileOutputStream(path);
				fos.write(data);
				fos.close();
				System.out.println("file upload");
				fileName = file.getOriginalFilename();
				Date newDate2 = new Date();
				java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
				if (hsnv.getSdt().toString().length() >= 9 || hsnv.getSdt().toString().length() <= 11) {

					if (Compare.checkDateThan16Year(hsnv.getNamSinh(), newDateSql2)) {
						String sql = "insert into hosonhanvien(hoTen,namSinh,sdt,queQuan,noiCuTruHienTai,hinhanh, tinhTrangLamViec, tinhTrangDuyetHoSo,maDichVu)values('"
								+ hsnv.getHoTen() + "','" + hsnv.getNamSinh() + "','" + hsnv.getSdt() + "','"
								+ hsnv.getQueQuan() + "','" + hsnv.getNoiCuTruHienTai() + "','" + fileName
								+ "','ranh','xong','" + dv.getMaDichVu() + "')";
						return _jdbcTemplate.update(sql);
					} else {
						return 0;
					}
				} else {
					return 5;
				}
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("upload eror");
			}

		}
		return 0;

	}

	public ListNhanVienvaDichVu getSuaNhanVien(int maHSNV) {
		String sql = "SELECT hosonhanvien.maHSNV,hoTen,namSinh,queQuan,noiCuTruHienTai,hinhanh,maDichVu,sdt from hosonhanvien where maHSNV=?";
		return _jdbcTemplate.queryForObject(sql, new Object[] { maHSNV },
				new BeanPropertyRowMapper<ListNhanVienvaDichVu>(ListNhanVienvaDichVu.class));

	}

	public int luuSuaNhanvien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ListNhanVienvaDichVu p, ChonDichVu dv) {

		String sqlGetMaDichVuCu = "SELECT maDichVu FROM hosonhanvien where hosonhanvien.maHSNV=" + p.getMaHSNV() + "";
		List<ChonDichVu> listGetMaDichVuCu = _jdbcTemplate.query(sqlGetMaDichVuCu, new ChonGiatriDichVuMapper());
		ChonDichVu maDichVucu = listGetMaDichVuCu.get(0);

		Date newDate2 = new Date();
		java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());

		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + "nhanvien" + File.separator + file.getOriginalFilename();
		String fileName = null;
		if (path != "") {
			try {
				FileOutputStream fos = new FileOutputStream(path);
				fos.write(data);
				fos.close();
				System.out.println("file upload");
				fileName = file.getOriginalFilename();
				if (p.getSdt().toString().length() >= 9 || p.getSdt().toString().length() <= 11) {

					if (Compare.checkDateThan16Year(p.getNamSinh(), newDateSql2)) {

						if (maDichVucu.toString().equals(p.getMaDichVu().toString())) {

							String sql = "update hosonhanvien set hoTen='" + p.getHoTen() + "', namSinh='"
									+ p.getNamSinh() + "',queQuan='" + p.getQueQuan() + "',sdt='" + p.getSdt()
									+ "',noiCuTruHienTai='" + p.getNoiCuTruHienTai() + "',hinhanh='" + fileName
									+ "',maDichVu='" + dv.getMaDichVu() + "' where maHSNV=" + p.getMaHSNV() + "";
							return _jdbcTemplate.update(sql);
						} else {

							String sqlCheck = "SELECT bangluong.maHSNV,hoTen,maDichVu,idBangLuong,bangluong.maDKDV,bangluong.tinhTrangThanhToan, 5 as tongThanhTien FROM bangluong,hosonhanvien where hosonhanvien.maHSNV = bangluong.maHSNV and bangluong.maHSNV = "
									+ p.getMaHSNV() + "";
							List<BangLuong> listE_InBL = _jdbcTemplate.query(sqlCheck, new BangLuongMapper());
							if (listE_InBL.isEmpty()) {
								String sql = "update hosonhanvien set hoTen='" + p.getHoTen() + "', namSinh='"
										+ p.getNamSinh() + "',queQuan='" + p.getQueQuan() + "',sdt='" + p.getSdt()
										+ "',noiCuTruHienTai='" + p.getNoiCuTruHienTai() + "',hinhanh='" + fileName
										+ "',maDichVu='" + dv.getMaDichVu() + "' where maHSNV=" + p.getMaHSNV() + "";
								return _jdbcTemplate.update(sql);
							} else {
								return 11;
							}
						}

					} else {
						return 0;
					}
				}

				else {
					return 5;
				}

			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("upload eror");
				if (p.getSdt().toString().length() >= 9 || p.getSdt().toString().length() <= 11) {

					if (Compare.checkDateThan16Year(p.getNamSinh(), newDateSql2)) {

						if (maDichVucu.toString().equals(p.getMaDichVu().toString())) {

							String sql = "update hosonhanvien set hoTen='" + p.getHoTen() + "', namSinh='"
									+ p.getNamSinh() + "',queQuan='" + p.getQueQuan() + "',sdt='" + p.getSdt()
									+ "',noiCuTruHienTai='" + p.getNoiCuTruHienTai() + "',hinhanh='" + p.getHinhanh()
									+ "',maDichVu='" + dv.getMaDichVu() + "' where maHSNV=" + p.getMaHSNV() + "";
							return _jdbcTemplate.update(sql);
						} else {
							String sqlCheck = "SELECT bangluong.maHSNV,hoTen,maDichVu,idBangLuong,bangluong.maDKDV,bangluong.tinhTrangThanhToan, 5 as tongThanhTien FROM bangluong,hosonhanvien where hosonhanvien.maHSNV = bangluong.maHSNV and bangluong.maHSNV = "
									+ p.getMaHSNV() + "";
							List<BangLuong> listE_InBL = _jdbcTemplate.query(sqlCheck, new BangLuongMapper());
							if (listE_InBL.isEmpty()) {
								String sql = "update hosonhanvien set hoTen='" + p.getHoTen() + "', namSinh='"
										+ p.getNamSinh() + "',queQuan='" + p.getQueQuan() + "',sdt='" + p.getSdt()
										+ "',noiCuTruHienTai='" + p.getNoiCuTruHienTai() + "',hinhanh='"
										+ p.getHinhanh() + "',maDichVu='" + dv.getMaDichVu() + "' where maHSNV="
										+ p.getMaHSNV() + "";
								return _jdbcTemplate.update(sql);
							} else {
								return 11;
							}
						}

					} else {
						return 0;
					}
				} else {
					return 5;
				}

			}
		}
		return 0;

	}

	public int xoaNhanVien(int id) {
		String sqlCheck = "SELECT bangluong.maHSNV,hoTen,maDichVu,idBangLuong,bangluong.maDKDV,bangluong.tinhTrangThanhToan, 5 as tongThanhTien FROM bangluong,hosonhanvien where hosonhanvien.maHSNV = bangluong.maHSNV and bangluong.maHSNV = "
				+ id + "";
		List<BangLuong> listE_InBL = _jdbcTemplate.query(sqlCheck, new BangLuongMapper());
		if (listE_InBL.isEmpty()) {
			String sql = "delete from hosonhanvien where maHSNV=" + id + "";
			return _jdbcTemplate.update(sql);
		}
		return 0;

	}

	//

	public List<ListNhanVienvaDichVu> getViewQLDangKyTimViec() {
		List<ListNhanVienvaDichVu> list = new ArrayList<ListNhanVienvaDichVu>();

		String sql = "SELECT hosonhanvien.maDichVu,hosonhanvien.maHSNV,dichvu.tenDichVu,hoTen,sdt,namSinh,queQuan,noiCuTruHienTai,hinhanh,tinhTrangLamViec,tinhTrangDuyetHoSo FROM `hosonhanvien`,dichvu WHERE hosonhanvien.maDichVu = dichvu.maDichVu AND hosonhanvien.tinhTrangDuyetHoSo='chua'";

		list = _jdbcTemplate.query(sql, new ListNhanVienMapper());
		return list;
	}

	public int duyetDKTV(int maHSNV) {
		String sql = "update hosonhanvien set tinhTrangDuyetHoSo='xong' where maHSNV=" + maHSNV + "";
		return _jdbcTemplate.update(sql);
	}

	public int xoaDKTV(int id) {

		String sql = "delete from hosonhanvien where maHSNV=" + id + "";
		return _jdbcTemplate.update(sql);

	}

}
