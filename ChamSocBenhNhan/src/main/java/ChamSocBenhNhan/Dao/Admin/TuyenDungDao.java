package ChamSocBenhNhan.Dao.Admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ChonGiatriDichVuMapper;
import ChamSocBenhNhan.Entity.User.TuyenDung;
import ChamSocBenhNhan.Entity.User.TuyenDungMapper;
import ChamSocBenhNhan.Entity.User.chonDichVuMapper;

@Repository
public class TuyenDungDao extends BaseDao {
	public List<TuyenDung> getViewQLTuyenDung() {
		List<TuyenDung> list = new ArrayList<TuyenDung>();
		String sql = "SELECT * FROM tuyendung";
		list = _jdbcTemplate.query(sql, new TuyenDungMapper());
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

	public int luuThemTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ChonDichVu dv, TuyenDung td) {
		List<TuyenDung> list = new ArrayList<TuyenDung>();
		String sqlMaDV = "SELECT * FROM tuyendung";
		list = _jdbcTemplate.query(sqlMaDV, new TuyenDungMapper());
		int check = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).toString().equals(dv.getMaDichVu().toString())) {
				check++;
			}
		}
		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + "tuyendung" + File.separator + file.getOriginalFilename();
		String fileName;
		if (path != "" && check == 0) {
			try {
				FileOutputStream fos = new FileOutputStream(path);
				fos.write(data);
				fos.close();
				System.out.println("file upload");
				fileName = file.getOriginalFilename();

				String sql = "insert into tuyendung(tieuDeTuyenDung,moTaChung,hinhAnh,moTaCongViec,quyenLoi,yeuCauCongViec,maDichVu,tatBat)values('"
						+ td.getTieuDeTuyenDung() + "','" + td.getMoTaChung() + "','" + fileName + "','"
						+ td.getMoTaCongViec() + "','" + td.getQuyenLoi() + "','" + td.getYeuCauCongViec() + "','"
						+ dv.getMaDichVu() + "','1')";
				return _jdbcTemplate.update(sql);

			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("upload eror");
			}

		}
		return 0;

	}

	public TuyenDung getSuaTuyenDung(int maTuyenDung) {
		String sql = "SELECT * from tuyendung where maTuyenDung=?";
		return _jdbcTemplate.queryForObject(sql, new Object[] { maTuyenDung },
				new BeanPropertyRowMapper<TuyenDung>(TuyenDung.class));

	}

	public int luuSuaTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s, TuyenDung p,
			ChonDichVu dv) {

		List<TuyenDung> listCheckMaDVTaiMaTD = new ArrayList<TuyenDung>();
		String sqllistCheckMaDVTaiMaTD = "SELECT * FROM tuyendung where maTuyenDung='" + p.getMaTuyenDung() + "'";
		listCheckMaDVTaiMaTD = _jdbcTemplate.query(sqllistCheckMaDVTaiMaTD, new TuyenDungMapper());
		if (listCheckMaDVTaiMaTD.get(0).toString().equals(dv.getMaDichVu().toString())) {

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

					String sql = "update tuyendung set tieuDeTuyenDung='" + p.getTieuDeTuyenDung() + "', moTaChung='"
							+ p.getMoTaChung() + "',hinhAnh='" + fileName + "',moTaCongViec='" + p.getMoTaCongViec()
							+ "',quyenLoi='" + p.getQuyenLoi() + "',yeuCauCongViec='" + p.getYeuCauCongViec()
							+ "',maDichVu='" + dv.getMaDichVu() + "' where maTuyenDung=" + p.getMaTuyenDung() + "";
					return _jdbcTemplate.update(sql);

				} catch (IOException e) {
					e.printStackTrace();
					System.out.println("upload eror");

					String sql = "update tuyendung set tieuDeTuyenDung='" + p.getTieuDeTuyenDung() + "', moTaChung='"
							+ p.getMoTaChung() + "',moTaCongViec='" + p.getMoTaCongViec() + "',quyenLoi='"
							+ p.getQuyenLoi() + "',yeuCauCongViec='" + p.getYeuCauCongViec() + "',maDichVu='"
							+ dv.getMaDichVu() + "' where maTuyenDung=" + p.getMaTuyenDung() + "";
					return _jdbcTemplate.update(sql);
				}
			}
		} else {
			List<TuyenDung> list = new ArrayList<TuyenDung>();
			String sqlMaDV = "SELECT * FROM tuyendung";
			list = _jdbcTemplate.query(sqlMaDV, new TuyenDungMapper());
			int check = 0;
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).toString().equals(dv.getMaDichVu().toString())) {
					check++;
				}
			}
			byte[] data = file.getBytes();
			String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
					+ "images" + File.separator + "nhanvien" + File.separator + file.getOriginalFilename();
			String fileName = null;
			if (path != "" && check == 0) {
				try {
					FileOutputStream fos = new FileOutputStream(path);
					fos.write(data);
					fos.close();
					System.out.println("file upload");
					fileName = file.getOriginalFilename();

					String sql = "update tuyendung set tieuDeTuyenDung='" + p.getTieuDeTuyenDung() + "', moTaChung='"
							+ p.getMoTaChung() + "',hinhAnh='" + fileName + "',moTaCongViec='" + p.getMoTaCongViec()
							+ "',quyenLoi='" + p.getQuyenLoi() + "',yeuCauCongViec='" + p.getYeuCauCongViec()
							+ "',maDichVu='" + dv.getMaDichVu() + "' where maTuyenDung=" + p.getMaTuyenDung() + "";
					return _jdbcTemplate.update(sql);

				} catch (IOException e) {
					e.printStackTrace();
					System.out.println("upload eror");

					String sql = "update tuyendung set tieuDeTuyenDung='" + p.getTieuDeTuyenDung() + "', moTaChung='"
							+ p.getMoTaChung() + "',moTaCongViec='" + p.getMoTaCongViec() + "',quyenLoi='"
							+ p.getQuyenLoi() + "',yeuCauCongViec='" + p.getYeuCauCongViec() + "',maDichVu='"
							+ dv.getMaDichVu() + "' where maTuyenDung=" + p.getMaTuyenDung() + "";
					return _jdbcTemplate.update(sql);
				}
			}

		}
		return 0;

	}

	public int xoaTuyenDung(int id) {

		String sql = "delete from tuyendung where maTuyenDung=" + id + "";
		return _jdbcTemplate.update(sql);

	}

	public int tatBatTuyenDung(int id, int tatBat) {
		String sql = "update tuyendung set tatBat=" + tatBat + " where maTuyenDung=" + id + "";
		return _jdbcTemplate.update(sql);

	}

}
