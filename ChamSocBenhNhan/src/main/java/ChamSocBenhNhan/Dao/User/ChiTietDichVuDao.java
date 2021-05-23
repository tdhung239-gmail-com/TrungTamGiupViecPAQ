package ChamSocBenhNhan.Dao.User;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.Admin.BangLuongMapper;
import ChamSocBenhNhan.Entity.User.KhachHangMapper;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListDanhGiaMapper;
import ChamSocBenhNhan.Entity.User.ListDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Repository
public class ChiTietDichVuDao extends BaseDaoUser {
	public List<ListNhanVienvaDichVu> getServiceById(int id) {
		return _jdbcTemplate.query("select * from dichvu where maDichVu=" + id + "", new ListDichVuMapper());
	}

	public List<ListDangKyDichVu> getCommentById(int id, String limit) {
		return _jdbcTemplate.query("select * from danhgia where maDichVu=" + id + "" + limit + "",
				new ListDanhGiaMapper());
	}

	public List<ListDangKyDichVu> getSizeCommentById(int maDichVu) {
		return _jdbcTemplate.query("select * from danhgia where maDichVu=" + maDichVu + "", new ListDanhGiaMapper());
	}

	public int saverRegister(ListDangKyDichVu p, int maDichVu, int maKhachHang) {
		String nu = "chua"; 
		Integer kq = 0;
		if (maKhachHang == 0) {
			maKhachHang = 1;
		} else {
			maKhachHang++;
		}

		if (p.getGioBatDau() == null) {
			p.setGioBatDau("00:00");
			p.setGioKetThuc("00:00");

		} else {
			Date newDate2 = new Date();
			java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
			String timeNew = new SimpleDateFormat("HH:mm").format(newDate2);
			if (p.getNgayBatDau().after(newDateSql2) && Compare.checkTime(p.getGioBatDau(), "07:00")
					&& Compare.checkTime("17:00", p.getGioKetThuc())
					|| (Compare.checkDateEqual(p.getNgayBatDau().toString(), newDateSql2.toString())
							&& Compare.checkTime(p.getGioBatDau(), timeNew))
							&& Compare.checkTime(p.getGioBatDau(), "07:00")
							&& Compare.checkTime("17:00", p.getGioKetThuc())) {

				if (Compare.checkTimeThan1Hour(p.getGioKetThuc(), p.getGioBatDau())) {
					//java.sql.Date sqlStartDate = ChuyenDoi.ChuyenDoiNgay(p.getNgayBatDau());

					p.setNgayKetThuc(p.getNgayBatDau());

					String sqlKhachHang = "insert into khachHang(maKhachHang,tenKhachHang,sdt,diaChi)values('"
							+ maKhachHang + "','" + p.getTenKhachHang() + "','" + p.getSdt() + "','" + p.getDiaChi()
							+ "')";
					_jdbcTemplate.update(sqlKhachHang);
					String sql = "insert into dangkydichvu(maDichVu,maKhachHang,diaChiSuDungDichVu,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,tinhTrangThanhToan)values('"
							+ maDichVu + "','" + maKhachHang + "','" + p.getDiaChiSuDungDichVu() + "','"
							+ p.getNgayBatDau() + "','" + p.getNgayKetThuc() + "','" + p.getGioBatDau() + "' ,'"
							+ p.getGioKetThuc() + "','" + nu + "')";
					kq = _jdbcTemplate.update(sql);
					System.out.println(kq);

					return kq;
				} else {
					kq = 10;
					return kq;
				}

			} else {

				kq = 0;
				return kq;
			}

		}

		if (p.getNgayKetThuc() != null) {

			Date newDate2 = new Date();
			java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
			if (p.getNgayBatDau().before(p.getNgayKetThuc()) && Compare.checkDate(p.getNgayBatDau(), newDateSql2)) {
				String sqlKhachHang = "insert into khachHang(maKhachHang,tenKhachHang,sdt,diaChi)values('" + maKhachHang
						+ "','" + p.getTenKhachHang() + "','" + p.getSdt() + "','" + p.getDiaChi() + "')";
				_jdbcTemplate.update(sqlKhachHang);
				String sql = "insert into dangkydichvu(maDichVu,maKhachHang,diaChiSuDungDichVu,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,tinhTrangThanhToan)values('"
						+ maDichVu + "','" + maKhachHang + "','" + p.getDiaChiSuDungDichVu() + "','" + p.getNgayBatDau()
						+ "','" + p.getNgayKetThuc() + "','" + p.getGioBatDau() + "' ,'" + p.getGioKetThuc() + "','"
						+ nu + "')";
				kq = _jdbcTemplate.update(sql);

				return kq;

			} else {
				kq = 0;
				return kq;

			}
		}
		return kq;

	}

	public List<ListDangKyDichVu> getDangKyDichVu() {
		List<ListDangKyDichVu> list = new ArrayList<ListDangKyDichVu>();

		list = _jdbcTemplate.query(
				"SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,tenDichVu,sdt,diaChi,diaChiSuDungDichVu,"
						+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
						+ ",IF(luongTheoNgay!=0, DATEDIFF(ngayKetThuc,ngayBatDau), IF(luongTheoThang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)%30,0)) as tongThoiGianTheoNgay"
						+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc, ngayBatDau)/30, 0) as tongThoiGianTheoThang"
						+ ",IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0)as tongThoiGianTheoGio"

						+ ",IF(luongTheothang!=0,phiDichVuTheoThang,0+IF(luongTheoNgay!=0,phiDichVuTheoNgay,0+(IF(luongTheoGio!=0,phiDichVuTheoGio,0)))) "
						+ " as phiDichVu"

						+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)/30*luongTheoThang + ROUND(luongTheoThang/30,0)* DATEDIFF(ngayKetThuc,ngayBatDau)%30 + phiDichVuTheoThang,"
						+ "0+IF(luongTheoNgay!=0,luongTheoNgay* DATEDIFF(ngayKetThuc,ngayBatDau)+phiDichVuTheoNgay,"
						+ "0+phiDichVuTheoGio+(IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0)*luongTheoGio))) "
						+ "as tongTien, 5 as tongThanhTien "
						+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang",
				new ListDangKyDichVuMapper());

		return list;

	}

	public List<ListDangKyDichVu> getTongThanhTienDangKyDichVu() {
		List<ListDangKyDichVu> list = new ArrayList<ListDangKyDichVu>();

		list = _jdbcTemplate.query(
				"SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,sdt,diaChi,tenDichVu,diaChiSuDungDichVu,"
						+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
						+ ",5 as tongThoiGianTheoNgay" + ", 5 as tongThoiGianTheoThang" + ", 5 as tongThoiGianTheoGio"
						+ ",5 as phiDichVu" + ", 5 as tongTien,sum("
						+ "IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)/30*luongTheoThang + ROUND(luongTheoThang/30,0)* DATEDIFF(ngayKetThuc,ngayBatDau)%30 + phiDichVuTheoThang,"
						+ "0+IF(luongTheoNgay!=0,luongTheoNgay* DATEDIFF(ngayKetThuc,ngayBatDau)+phiDichVuTheoNgay,"
						+ "0+phiDichVuTheoGio+(IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0)*luongTheoGio))) "
						+ ") as tongThanhTien "
						+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang",
				new ListDangKyDichVuMapper());

		return list;
	}

	public int saveComment(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s2, ListDangKyDichVu emp,
			Integer maDichVu) {

		System.out.println("file up load Hannder");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println("m1" + file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());
		byte[] data = file.getBytes();
		byte[] data2 = file2.getBytes();
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + "imageComment" + File.separator + file.getOriginalFilename();
		String path2 = s2.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + "imageComment" + File.separator + file2.getOriginalFilename();
		String fileName;
		String fileName2;
		String sql = null;

		try {
			FileOutputStream fos = new FileOutputStream(path);
			FileOutputStream fos2 = new FileOutputStream(path2);
			fos.write(data);
			fos.close();
			fos2.write(data2);
			fos2.close();
			System.out.println("file upload");
			fileName = file.getOriginalFilename();
			fileName2 = file2.getOriginalFilename();
			sql = "insert into danhgia(hoTen,noiDung,hinhAnh,video,maDichVu)values('" + emp.getHoTen() + "','"
					+ emp.getNoiDung() + "','" + fileName + "','" + fileName2 + "','" + maDichVu + "')";

		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("upload eror 1 2");

			try {
				FileOutputStream fos = new FileOutputStream(path);
				fos.write(data);
				fos.close();
				System.out.println("file upload");
				fileName = file.getOriginalFilename();
				sql = "insert into danhgia(hoTen,noiDung,hinhAnh,video,maDichVu)values('" + emp.getHoTen() + "','"
						+ emp.getNoiDung() + "','" + fileName + "'," + null + ",'" + maDichVu + "')";

			} catch (IOException e2) {
				e.printStackTrace();
				System.out.println("upload eror 1");

				try {
					FileOutputStream fos2 = new FileOutputStream(path2);
					fos2.write(data2);
					fos2.close();
					System.out.println("file upload");
					fileName2 = file2.getOriginalFilename();
					sql = "insert into danhgia(hoTen,noiDung,hinhAnh,video,maDichVu)values('" + emp.getHoTen() + "','"
							+ emp.getNoiDung() + "',' ','" + fileName2 + "','" + maDichVu + "')";

				} catch (IOException e3) {
					e.printStackTrace();
					System.out.println("upload eror 2");
					sql = "insert into danhgia(hoTen,noiDung,hinhAnh,video,maDichVu)values('" + emp.getHoTen() + "','"
							+ emp.getNoiDung() + "',' '," + null + ",'" + maDichVu + "')";

				}

			}

		}
		if (!sql.isEmpty()) {
			return _jdbcTemplate.update(sql);
		}

		return 0;

	}

	public List<ListDangKyDichVu> getIdCustomer() {
		return _jdbcTemplate.query("SELECT MAX(maKhachHang) as maKhachHang FROM khachhang", new KhachHangMapper());
	}

	public List<ListDangKyDichVu> getRegisterServiceForCustomer(int maKhachHang) {
		maKhachHang++;
		List<ListDangKyDichVu> list = new ArrayList<ListDangKyDichVu>();

		list = _jdbcTemplate.query(
				"SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,tenDichVu,diaChi,sdt,diaChiSuDungDichVu,"
						+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
						+ ",IF(luongTheoNgay!=0, DATEDIFF(ngayKetThuc,ngayBatDau), IF(luongTheoThang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)%30,0)) as tongThoiGianTheoNgay"
						+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc, ngayBatDau)/30, 0) as tongThoiGianTheoThang"
						+ ",IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0)as tongThoiGianTheoGio"

						+ ",IF(luongTheothang!=0,phiDichVuTheoThang,0+IF(luongTheoNgay!=0,phiDichVuTheoNgay,0+(IF(luongTheoGio!=0,phiDichVuTheoGio,0)))) "
						+ " as phiDichVu"

						+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)/30*luongTheoThang + ROUND(luongTheoThang/30,0)* DATEDIFF(ngayKetThuc,ngayBatDau)%30 + phiDichVuTheoThang,"
						+ "0+IF(luongTheoNgay!=0,luongTheoNgay* DATEDIFF(ngayKetThuc,ngayBatDau)+phiDichVuTheoNgay,"
						+ "0+phiDichVuTheoGio+(IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0)*luongTheoGio))) "
						+ "as tongTien, 5 as tongThanhTien "
						+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang and `dangkydichvu`.maKhachHang = "
						+ maKhachHang + "",
				new ListDangKyDichVuMapper());

		return list;
	}

	// Những con số ấn tượng
	public List<BangLuong> getGioLamViecTrongNam() {
		return _jdbcTemplate.query(
				"select bangluong.idBangLuong, bangluong.maHSNV, hosonhanvien.hoTen, bangluong.maDKDV,dangkydichvu.maDichVu, bangluong.tinhTrangThanhToan,"
						+ "sum(IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)*8,"
						+ "0+IF(luongTheoNgay!=0,8* DATEDIFF(ngayKetThuc,ngayBatDau),"
						+ "0+(IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0))))) " + "as tongThanhTien"
						+ " from bangluong,hosonhanvien,dangkydichvu,dichvu where dichvu.maDichVu=dangkydichvu.maDichVu and bangluong.maDKDV=dangkydichvu.maDKDV and bangluong.maHSNV=hosonhanvien.maHSNV",
				new BangLuongMapper());
	}

	public List<BangLuong> getTongSoKhachHangDuocPhucVu() {
		return _jdbcTemplate.query(
				"select bangluong.idBangLuong, bangluong.maHSNV, hosonhanvien.hoTen, bangluong.maDKDV,dangkydichvu.maDichVu, bangluong.tinhTrangThanhToan,"
						+ "count(bangluong.maDKDV) " + "as tongThanhTien"
						+ " from bangluong,hosonhanvien,dangkydichvu,dichvu where dichvu.maDichVu=dangkydichvu.maDichVu and bangluong.maDKDV=dangkydichvu.maDKDV and bangluong.maHSNV=hosonhanvien.maHSNV",
				new BangLuongMapper());
	}

}
