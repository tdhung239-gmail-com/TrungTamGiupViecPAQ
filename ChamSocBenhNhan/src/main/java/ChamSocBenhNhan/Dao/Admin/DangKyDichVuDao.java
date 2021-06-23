package ChamSocBenhNhan.Dao.Admin;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import ChamSocBenhNhan.Dao.User.Compare;
import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.Admin.BangLuongMapper;
import ChamSocBenhNhan.Entity.Admin.CheckDKDVOfBangLuongMapper;
import ChamSocBenhNhan.Entity.Admin.CheckDangKyDichVuOfBangLuong;
import ChamSocBenhNhan.Entity.Admin.ChonKhachHang;
import ChamSocBenhNhan.Entity.Admin.ChonMaKhachHangMapper;
import ChamSocBenhNhan.Entity.Admin.ChonTenTenKhachHangMapper;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ChonGiatriDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListDichVuMapper;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Entity.User.chonDichVuMapper;

@Repository
public class DangKyDichVuDao extends BaseDao {
	public List<ListDangKyDichVu> getViewQLDangKyDichVu(String maDKDV) {
		List<ListDangKyDichVu> list = new ArrayList<ListDangKyDichVu>();
		String sql = null;
		if ("all".equals(maDKDV)) {
			sql = "SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,tenDichVu,diaChi,sdt,diaChiSuDungDichVu,"
					+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
					+ ",IF(luongTheoNgay!=0, DATEDIFF(ngayKetThuc,ngayBatDau), IF(luongTheoThang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)%30,0)) as tongThoiGianTheoNgay"
					+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc, ngayBatDau)/30, 0) as tongThoiGianTheoThang"
					+ ",IF(luongTheoGio!=0, TIMEDIFF(gioKetThuc,gioBatDau),0)as tongThoiGianTheoGio"

					+ ",IF(luongTheothang!=0,phiDichVuTheoThang,0+IF(luongTheoNgay!=0,phiDichVuTheoNgay,0+(IF(luongTheoGio!=0,phiDichVuTheoGio,0)))) "
					+ " as phiDichVu"

					+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)/30*luongTheoThang + ROUND(luongTheoThang/30,0)* DATEDIFF(ngayKetThuc,ngayBatDau)%30 + phiDichVuTheoThang,"
					+ "0+IF(luongTheoNgay!=0,luongTheoNgay* DATEDIFF(ngayKetThuc,ngayBatDau)+phiDichVuTheoNgay,"
					+ "0+phiDichVuTheoGio+(IF(luongTheoGio!=0,IF(MINUTE(TIMEDIFF(gioKetThuc,gioBatDau))>30,(Hour(TIMEDIFF(gioKetThuc,gioBatDau))+1)*LuongTheoGio,Hour(TIMEDIFF(gioKetThuc,gioBatDau))*LuongTheoGio + ( dichvu.luongTheoGio/60)*MINUTE(TIMEDIFF(gioKetThuc,gioBatDau)) ),0)))) "
					+ "as tongTien, 5 as tongThanhTien "
					+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang";
		} else {
			sql = "SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,tenDichVu,diaChi,sdt,diaChiSuDungDichVu,"
					+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
					+ ",IF(luongTheoNgay!=0, DATEDIFF(ngayKetThuc,ngayBatDau), IF(luongTheoThang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)%30,0)) as tongThoiGianTheoNgay"
					+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc, ngayBatDau)/30, 0) as tongThoiGianTheoThang"
					+ ",IF(luongTheoGio!=0,TIMEDIFF(gioKetThuc,gioBatDau),0)as tongThoiGianTheoGio"

					+ ",IF(luongTheothang!=0,phiDichVuTheoThang,0+IF(luongTheoNgay!=0,phiDichVuTheoNgay,0+(IF(luongTheoGio!=0,phiDichVuTheoGio,0)))) "
					+ " as phiDichVu"

					+ ",IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)/30*luongTheoThang + ROUND(luongTheoThang/30,0)* DATEDIFF(ngayKetThuc,ngayBatDau)%30 + phiDichVuTheoThang,"
					+ "0+IF(luongTheoNgay!=0,luongTheoNgay* DATEDIFF(ngayKetThuc,ngayBatDau)+phiDichVuTheoNgay,"
					+ "0+phiDichVuTheoGio+(IF(luongTheoGio!=0,IF(MINUTE(TIMEDIFF(gioKetThuc,gioBatDau))>30,(Hour(TIMEDIFF(gioKetThuc,gioBatDau))+1)*LuongTheoGio,Hour(TIMEDIFF(gioKetThuc,gioBatDau))*LuongTheoGio + ( dichvu.luongTheoGio/60)*MINUTE(TIMEDIFF(gioKetThuc,gioBatDau)) ),0)))) "					+ "as tongTien, 5 as tongThanhTien "
					+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang and `dangkydichvu`.maDKDV = "
					+ maDKDV + "";
		}
		list = _jdbcTemplate.query(sql, new ListDangKyDichVuMapper());
		return list;
	}

	public Map<String, String> getChonTinhTrang() {

		Map<String, String> states = new HashMap<String, String>();
		states.put("chua", "chưa");
		states.put("xong", "đã thanh toán");

		return states;
	}

	public Map<ChonDichVu, ChonDichVu> getChonDichVu() {
		List<ChonDichVu> listTen = new ArrayList<ChonDichVu>();
		List<ChonDichVu> listMa = new ArrayList<ChonDichVu>();
		String sql2 = "SELECT maDichVu FROM dichvu";
		listMa = _jdbcTemplate.query(sql2, new ChonGiatriDichVuMapper());
		String sql = "SELECT tenDichVu FROM dichvu ";
		listTen = _jdbcTemplate.query(sql, new chonDichVuMapper());
		Map<ChonDichVu, ChonDichVu> cdv = new HashMap<ChonDichVu, ChonDichVu>();
		for (int i = 0; i < listTen.size(); i++) {
			cdv.put(listMa.get(i), listTen.get(i));

		}
		return cdv;
	}

	public Map<ChonKhachHang, ChonKhachHang> getChonKhachHang() {
		List<ChonKhachHang> listTen = new ArrayList<ChonKhachHang>();
		List<ChonKhachHang> listMa = new ArrayList<ChonKhachHang>();
		String sql2 = "SELECT maKhachHang FROM khachhang";
		listMa = _jdbcTemplate.query(sql2, new ChonMaKhachHangMapper());
		String sql = "SELECT tenKhachHang FROM khachhang ";
		listTen = _jdbcTemplate.query(sql, new ChonTenTenKhachHangMapper());
		Map<ChonKhachHang, ChonKhachHang> ckh = new HashMap<ChonKhachHang, ChonKhachHang>();
		for (int i = 0; i < listTen.size(); i++) {
			ckh.put(listMa.get(i), listMa.get(i));
		}
		return ckh;
	}

	public List<ListNhanVienvaDichVu> getListChonDichVu() {
		return _jdbcTemplate.query("select * from dichvu", new ListDichVuMapper());
	}

	public List<ListNhanVienvaDichVu> getListChonDichVuTheoMaDichVu(int maDichVu) {
		return _jdbcTemplate.query("select * from dichvu where maDichVu = " + maDichVu + "", new ListDichVuMapper());
	}

	public int luuThemDKDV(ListDangKyDichVu p, int maDichVu) {
		String nu = "chua";
		Integer kq = 0;

		if (p.getGioBatDau() == null) {
			p.setGioBatDau("00:00");
			p.setGioKetThuc("00:00");

		} else {
			Date newDate2 = new Date();
			java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
			String timeNew = new SimpleDateFormat("HH:mm").format(newDate2);
			if (p.getNgayBatDau().after(newDateSql2) && Compare.checkTime(p.getGioBatDau(), "07:00")
					&& Compare.checkTime("17:00", p.getGioKetThuc())) {

				if (Compare.checkTimeThan1Hour(p.getGioKetThuc(), p.getGioBatDau())) {

					p.setNgayKetThuc(p.getNgayBatDau());

					String sql = "insert into dangkydichvu(maDichVu,maKhachHang,diaChiSuDungDichVu,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,tinhTrangThanhToan)values('"
							+ maDichVu + "','" + p.getMaKhachHang() + "','" + p.getDiaChiSuDungDichVu() + "','"
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
			if (p.getNgayBatDau().before(p.getNgayKetThuc()) && p.getNgayBatDau().after(newDateSql2)) {

				String sql = "insert into dangkydichvu(maDichVu,maKhachHang,diaChiSuDungDichVu,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,tinhTrangThanhToan)values('"
						+ maDichVu + "','" + p.getMaKhachHang() + "','" + p.getDiaChiSuDungDichVu() + "','"
						+ p.getNgayBatDau() + "','" + p.getNgayKetThuc() + "','" + p.getGioBatDau() + "' ,'"
						+ p.getGioKetThuc() + "','" + nu + "')";
				kq = _jdbcTemplate.update(sql);

				return kq;

			} else {
				kq = 0;
				return kq;

			}
		}
		return kq;

	}

	public ListDangKyDichVu getSuaDKDV(int maDKDV) {
		String sql = "SELECT dangkydichvu.maDKDV,dangkydichvu.maKhachHang,dangkydichvu.maDichVu,gioBatDau,ngayBatDau,gioKetThuc,gioBatDau,ngayKetThuc,diaChiSuDungDichVu,tinhTrangThanhToan from dangkydichvu where  maDKDV=?";
		return _jdbcTemplate.queryForObject(sql, new Object[] { maDKDV },
				new BeanPropertyRowMapper<ListDangKyDichVu>(ListDangKyDichVu.class));

	}

	public int luuSuaDKDV(ListDangKyDichVu p) {

		String sqlCheckDateOfDKDV = "SELECT ngayBatDau, ngayKetThuc FROM dangkydichvu where dangkydichvu.maDKDV = "
				+ p.getMaDKDV() + "";
		List<CheckDangKyDichVuOfBangLuong> listsqlCheckDateOfDKDV = _jdbcTemplate.query(sqlCheckDateOfDKDV,
				new CheckDKDVOfBangLuongMapper());

		String ngayBatDauCu = listsqlCheckDateOfDKDV.get(0).toString().substring(0,
				listsqlCheckDateOfDKDV.get(0).toString().indexOf(","));
		String ngayKetThucCu = listsqlCheckDateOfDKDV.get(0).toString().substring(
				listsqlCheckDateOfDKDV.get(0).toString().indexOf(",") + 1,
				listsqlCheckDateOfDKDV.get(0).toString().length());
		Integer kq = 0;

		if (p.getGioBatDau() == null) {
			p.setGioBatDau("00:00");
			p.setGioKetThuc("00:00");

		} else {
			Date newDate2 = new Date();
			java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
			String timeNew = new SimpleDateFormat("HH:mm").format(newDate2);
			if (!p.getNgayBatDau().toString().equals(ngayBatDauCu)) {
				String sqlCheck = "SELECT bangluong.maHSNV,hoTen,maDichVu,idBangLuong,bangluong.maDKDV,bangluong.tinhTrangThanhToan, 5 as tongThanhTien FROM bangluong,hosonhanvien where bangluong.maDKDV = "
						+ p.getMaDKDV() + "";
				List<BangLuong> listMaDKDV_InBL = _jdbcTemplate.query(sqlCheck, new BangLuongMapper());
				if (listMaDKDV_InBL.isEmpty() && p.getNgayBatDau().after(newDateSql2)
						&& Compare.checkTimeHaveSecond(p.getGioBatDau(), "07:00")
						&& Compare.checkTimeHaveSecond("17:00", p.getGioKetThuc())
						&& Compare.checkTimeThan1HourHaveSencond(p.getGioKetThuc(), p.getGioBatDau())) {
					String sql = "update dangkydichvu set maKhachHang='" + p.getMaKhachHang() + "',gioBatDau='"
							+ p.getGioBatDau() + "',gioKetThuc='" + p.getGioKetThuc() + "',tinhTrangThanhToan='"
							+ p.getTinhTrangThanhToan() + "', ngayBatDau='" + p.getNgayBatDau() + "',ngayKetThuc='"
							+ p.getNgayBatDau() + "',diaChiSuDungDichVu='" + p.getDiaChiSuDungDichVu()
							+ "' where maDKDV=" + p.getMaDKDV() + "";
					kq = _jdbcTemplate.update(sql);
					System.out.println("184tt");
					return kq;
				} else {
					System.out.println("1841");
					kq = 5;
					return kq;
				}

			} else {

				if (p.getNgayBatDau().after(newDateSql2) && Compare.checkTimeHaveSecond(p.getGioBatDau(), "07:00")
						&& Compare.checkTimeHaveSecond("17:00", p.getGioKetThuc())
						&& Compare.checkTimeThan1HourHaveSencond(p.getGioKetThuc(), p.getGioBatDau())) {
					String sql = "update dangkydichvu set maKhachHang='" + p.getMaKhachHang() + "',gioBatDau='"
							+ p.getGioBatDau() + "',gioKetThuc='" + p.getGioKetThuc() + "',tinhTrangThanhToan='"
							+ p.getTinhTrangThanhToan() + "', ngayBatDau='" + p.getNgayBatDau() + "',ngayKetThuc='"
							+ p.getNgayBatDau() + "',diaChiSuDungDichVu='" + p.getDiaChiSuDungDichVu()
							+ "' where maDKDV=" + p.getMaDKDV() + "";
					kq = _jdbcTemplate.update(sql);
					System.out.println("184t0");
					return kq;
					// nhỏ hơn ngày hiện tại mà ngày bắt cũ giống get ngày bắt đầu thì cho sửa thanh
					// toán,địa chỉ
				} else

				{
					kq = 10;
					return kq;
				}

			}
			

		}
		//////////////

		if (p.getNgayKetThuc() != null) {
			Date newDate2 = new Date();
			java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
			if (!p.getNgayBatDau().toString().equals(ngayBatDauCu)
					|| !p.getNgayKetThuc().toString().equals(ngayKetThucCu)) {

				String sqlCheck = "SELECT bangluong.maHSNV,hoTen,maDichVu,idBangLuong,bangluong.maDKDV,bangluong.tinhTrangThanhToan, 5 as tongThanhTien FROM bangluong,hosonhanvien where bangluong.maDKDV = "
						+ p.getMaDKDV() + "";
				List<BangLuong> listMaDKDV_InBL = _jdbcTemplate.query(sqlCheck, new BangLuongMapper());
				if (listMaDKDV_InBL.isEmpty() && p.getNgayBatDau().after(newDateSql2)
						&& p.getNgayKetThuc().after(p.getNgayBatDau())) {
					String sql = "update dangkydichvu set maKhachHang='" + p.getMaKhachHang() + "', ngayBatDau='"
							+ p.getNgayBatDau() + "',ngayKetThuc='" + p.getNgayKetThuc() + "',diaChiSuDungDichVu='"
							+ p.getDiaChiSuDungDichVu() + "' ,tinhTrangThanhToan='" + p.getTinhTrangThanhToan()
							+ "' where maDKDV=" + p.getMaDKDV() + "";
					kq = _jdbcTemplate.update(sql);
					System.out.println("4532");
					return kq;
				} else {
					kq = 5;
					return kq;
				}

			} else {
				String sql = "update dangkydichvu set maKhachHang='" + p.getMaKhachHang() + "', ngayBatDau='"
						+ p.getNgayBatDau() + "',ngayKetThuc='" + p.getNgayKetThuc() + "',diaChiSuDungDichVu='"
						+ p.getDiaChiSuDungDichVu() + "',tinhTrangThanhToan='" + p.getTinhTrangThanhToan()
						+ "' where maDKDV=" + p.getMaDKDV() + "";
				kq = _jdbcTemplate.update(sql);
				System.out.println("45324747");
				return kq;
			}


		}
		return kq;

	}

	public int xoaDKDV(int id) {
		String sqlCheck = "SELECT bangluong.maHSNV,hoTen,maDichVu,idBangLuong,bangluong.maDKDV,bangluong.tinhTrangThanhToan, 5 as tongThanhTien FROM bangluong,hosonhanvien where bangluong.maDKDV = "
				+ id + "";
		List<BangLuong> listE_InBL = _jdbcTemplate.query(sqlCheck, new BangLuongMapper());
		if (listE_InBL.isEmpty()) {
			String sql = "delete from dangkydichvu where maDKDV=" + id + "";
			return _jdbcTemplate.update(sql);
		}
		return 0;

	}

}
