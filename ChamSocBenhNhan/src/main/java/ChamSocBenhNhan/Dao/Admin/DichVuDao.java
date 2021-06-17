package ChamSocBenhNhan.Dao.Admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListDanhGiaMapper;
import ChamSocBenhNhan.Entity.User.ListDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListNhanVienMapper;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Entity.User.TuyenDung;
import ChamSocBenhNhan.Entity.User.TuyenDungMapper;

@Repository
public class DichVuDao extends BaseDao {
	public List<ListNhanVienvaDichVu> getViewQLDichVu() {
		List<ListNhanVienvaDichVu> list = new ArrayList<ListNhanVienvaDichVu>();
		String sql = "SELECT * FROM dichvu";
		list = _jdbcTemplate.query(sql, new ListDichVuMapper());
		return list;
	}

	public List<ListNhanVienvaDichVu> getViewQLDichVuTheoMDV(Integer maDichVu) {
		List<ListNhanVienvaDichVu> list = new ArrayList<ListNhanVienvaDichVu>();
		String sql = "SELECT * FROM dichvu where maDichVu = " + maDichVu + "";
		list = _jdbcTemplate.query(sql, new ListDichVuMapper());
		return list;
	}

	public int luuThemDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			ListNhanVienvaDichVu td) {

		byte[] data = file.getBytes();
		byte[] data2 = file2.getBytes();
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + file.getOriginalFilename();
		String fileName;
		String path2 = s2.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + file2.getOriginalFilename();
		String fileName2;
		if (path != "" && path2 != "") {
			try {
				FileOutputStream fos = new FileOutputStream(path);
				FileOutputStream fos2 = new FileOutputStream(path2);
				fos.write(data);
				fos2.write(data2);
				fos.close();
				fos2.close();
				System.out.println("file upload");
				fileName = file.getOriginalFilename();
				fileName2 = file2.getOriginalFilename();
				if (td.getLuongTheoGio() == null) {
					td.setLuongTheoGio(0);
					td.setPhiDichVuTheoGio(0);
				}
				if (td.getLuongTheoNgay() == null) {
					td.setLuongTheoNgay(0);
					td.setPhiDichVuTheoNgay(0);
				}
				if (td.getLuongTheoThang() == null) {
					td.setLuongTheoThang(0);
					td.setPhiDichVuTheoThang(0);
				}
				String sql = "insert into dichvu(tenDichVu,gioiThieuDichVu,hinhAnhDichVu,dieuKienLyLich,kyNang,hinhAnhKyNang,luongTheoGio,luongTheoNgay,luongTheoThang,phiDichVuTheoGio,phiDichVuTheoNgay,phiDichVuTheoThang)values('"
						+ td.getTenDichVu() + "','" + td.getGioiThieuDichVu() + "','" + fileName + "','"
						+ td.getDieuKienLyLich() + "','" + td.getKyNang() + "','" + fileName2 + "','"
						+ td.getLuongTheoGio() + "','" + td.getLuongTheoNgay() + "','" + td.getLuongTheoThang() + "','"
						+ td.getPhiDichVuTheoGio() + "','" + td.getPhiDichVuTheoNgay() + "','"
						+ td.getPhiDichVuTheoThang() + "')";
				return _jdbcTemplate.update(sql);

			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("upload eror");
			}

		}
		return 0;

	}

	public ListNhanVienvaDichVu getSuaDichVu(int maDichVu) {
		String sql = "SELECT * from dichvu where maDichVu=?";
		return _jdbcTemplate.queryForObject(sql, new Object[] { maDichVu },
				new BeanPropertyRowMapper<ListNhanVienvaDichVu>(ListNhanVienvaDichVu.class));

	}

	public int luuSuaDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			ListNhanVienvaDichVu p) {

		byte[] data = file.getBytes();
		byte[] data2 = file2.getBytes();
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + file.getOriginalFilename();
		String fileName;
		String path2 = s2.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + file2.getOriginalFilename();
		String fileName2;
		if (path != "") {
			try {
				FileOutputStream fos = new FileOutputStream(path);
				fos.write(data);
				fos.close();
				System.out.println("file upload1");
				fileName = file.getOriginalFilename();
				if (p.getLuongTheoGio() == null) {
					p.setLuongTheoGio(0);
					p.setPhiDichVuTheoGio(0);
				}
				if (p.getLuongTheoNgay() == null) {
					p.setLuongTheoNgay(0);
					p.setPhiDichVuTheoNgay(0);
				}
				if (p.getLuongTheoThang() == null) {
					p.setLuongTheoThang(0);
					p.setPhiDichVuTheoThang(0);
				}
				String sql = "update dichvu set tenDichVu='" + p.getTenDichVu() + "', gioiThieuDichVu='"
						+ p.getGioiThieuDichVu() + "',hinhAnhDichVu='" + fileName + "',dieuKienLyLich='"
						+ p.getDieuKienLyLich() + "',kyNang='" + p.getKyNang() + "',luongTheoNgay='" + p.getLuongTheoNgay() + "',luongTheoGio='" + p.getLuongTheoGio() + "',luongTheoThang='"
						+ p.getLuongTheoThang() + "',phiDichVuTheoGio='" + p.getPhiDichVuTheoGio()
						+ "',phiDichVuTheoNgay='" + p.getPhiDichVuTheoNgay() + "',phiDichVuTheoThang='"
						+ p.getPhiDichVuTheoThang() + "' where maDichVu=" + p.getMaDichVu() + "";
				return _jdbcTemplate.update(sql);

			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("upload eror1");
			}
		}
		if (path2 != "") {
			try {
				FileOutputStream fos2 = new FileOutputStream(path2);
				fos2.write(data2);
				fos2.close();
				System.out.println("file upload2");
				fileName2 = file2.getOriginalFilename();
				if (p.getLuongTheoGio() == null) {
					p.setLuongTheoGio(0);
					p.setPhiDichVuTheoGio(0);
				}
				if (p.getLuongTheoNgay() == null) {
					p.setLuongTheoNgay(0);
					p.setPhiDichVuTheoNgay(0);
				}
				if (p.getLuongTheoThang() == null) {
					p.setLuongTheoThang(0);
					p.setPhiDichVuTheoThang(0);
				}
				String sql = "update dichvu set tenDichVu='" + p.getTenDichVu() + "', gioiThieuDichVu='"
						+ p.getGioiThieuDichVu() + "',dieuKienLyLich='" + p.getDieuKienLyLich() + "',kyNang='"
						+ p.getKyNang() + "',hinhAnhKyNang='" + fileName2 + "',luongTheoGio='" + p.getLuongTheoGio()
						+ "',luongTheoNgay='" + p.getLuongTheoNgay() + "',luongTheoThang='" + p.getLuongTheoThang()
						+ "',phiDichVuTheoGio='" + p.getPhiDichVuTheoGio() + "',phiDichVuTheoNgay='"
						+ p.getPhiDichVuTheoNgay() + "',phiDichVuTheoThang='" + p.getPhiDichVuTheoThang()
						+ "' where maDichVu=" + p.getMaDichVu() + "";
				return _jdbcTemplate.update(sql);

			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("upload eror2");
				if (p.getLuongTheoGio() == null) {
					p.setLuongTheoGio(0);
					p.setPhiDichVuTheoGio(0);
				}
				if (p.getLuongTheoNgay() == null) {
					p.setLuongTheoNgay(0);
					p.setPhiDichVuTheoNgay(0);
				}
				if (p.getLuongTheoThang() == null) {
					p.setLuongTheoThang(0);
					p.setPhiDichVuTheoThang(0);
				}
				String sql = "update dichvu set tenDichVu='" + p.getTenDichVu() + "', gioiThieuDichVu='"
						+ p.getGioiThieuDichVu() + "',dieuKienLyLich='" + p.getDieuKienLyLich() + "',kyNang='"
						+ p.getKyNang() + "',luongTheoGio='" + p.getLuongTheoGio() + "',luongTheoNgay='"
						+ p.getLuongTheoNgay() + "',luongTheoThang='" + p.getLuongTheoThang() + "',phiDichVuTheoGio='"
						+ p.getPhiDichVuTheoGio() + "',phiDichVuTheoNgay='" + p.getPhiDichVuTheoNgay()
						+ "',phiDichVuTheoThang='" + p.getPhiDichVuTheoThang() + "' where maDichVu=" + p.getMaDichVu()
						+ "";
				return _jdbcTemplate.update(sql);
			}
		}
		return 0;

	}

	public int xoadichVu(int id) {
		String sqlnhanvien = "SELECT hosonhanvien.maDichVu,hosonhanvien.maHSNV,dichvu.tenDichVu,hoTen,sdt,namSinh,queQuan,noiCuTruHienTai,hinhanh,tinhTrangLamViec,tinhTrangDuyetHoSo FROM `hosonhanvien`,dichvu WHERE hosonhanvien.maDichVu = dichvu.maDichVu AND hosonhanvien.maDichVu = '"
				+ id + "'";
		List<ListNhanVienvaDichVu> listnv = _jdbcTemplate.query(sqlnhanvien, new ListNhanVienMapper());

		//

		String sqltuyendung = "SELECT * FROM tuyendung where maDichVu = " + id + "";
		List<TuyenDung> listtuyendung = _jdbcTemplate.query(sqltuyendung, new TuyenDungMapper());

		//

		List<ListDangKyDichVu> lisdanhgia = _jdbcTemplate.query("select * from danhgia where maDichVu ="+id+"", new ListDanhGiaMapper());

		//
		String sqldkdv = "SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,tenDichVu,diaChi,sdt,diaChiSuDungDichVu,"
				+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
				+ ", 5 as tongThoiGianTheoNgay" + ",6 as tongThoiGianTheoThang" + ",7 as tongThoiGianTheoGio"
				+ ", 8 as phiDichVu" + ",9 as tongTien, 5 as tongThanhTien "
				+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang and `dangkydichvu`.maDichVu = "
				+ id + "";
		List<ListDangKyDichVu> listdkdv = _jdbcTemplate.query(sqldkdv, new ListDangKyDichVuMapper());

		if (listnv.isEmpty()) {
System.out.println("1");
			if (lisdanhgia.isEmpty()) {
				System.out.println("2");
				if (listtuyendung.isEmpty()) {
					System.out.println("3");
					if (listdkdv.isEmpty()) {
						System.out.println("4");
						String sql = "delete from dichvu where maDichVu=" + id + "";
						return _jdbcTemplate.update(sql);
					} else

					{
						return 5;
					}
				} else {
					return 6;
				}
			} else {
				return 7;
			}

		}

		return 8;

	}

}
