package ChamSocBenhNhan.Dao.Admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import ChamSocBenhNhan.Entity.Admin.TaiKhoan;
import ChamSocBenhNhan.Entity.Admin.TaiKhoanMapper;
import ChamSocBenhNhan.Entity.Admin.chonThangNam;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVuMapper;

@Repository
public class HomeAdminDao extends BaseDao {

	public List<TaiKhoan> dologin(String userName, String pass) {
		List<TaiKhoan> list = new ArrayList<TaiKhoan>();
		String sql = ("SELECT * FROM `taikhoan` WHERE TenTaiKhoan = '" + userName + "' and MatKhau = '" + pass + "'");
		list = _jdbcTemplate.query(sql, new TaiKhoanMapper());
		if (list.size() > 0) {
			return list;
		} else
			return null;

	}

	public Map<Integer, String> getChonThang() {

		Map<Integer, String> states = new HashMap<Integer, String>();
		for (int i = 1; i < 13; i++) {
			states.put(i, "Tháng " + i + "");
		}

		return states;
	}

	public Map<Integer, String> getChonNam() {

		Map<Integer, String> states = new HashMap<Integer, String>();
		for (int i = 2021; i < 2030; i++) {
			states.put(i, "Năm" + i + "");
		}

		return states;
	}

	Date newDate2 = new Date();
	java.sql.Date newDateSql2 = new java.sql.Date(newDate2.getTime());
	Integer yearnow = Integer.parseInt(newDateSql2.toString().substring(0, newDateSql2.toString().indexOf("-")));
	Integer monthnow = Integer.parseInt(newDateSql2.toString().substring(newDateSql2.toString().indexOf("-") + 1,
			newDateSql2.toString().lastIndexOf("-")));
	Integer month = monthnow;
	Integer year = yearnow;

	public void locThongKe(chonThangNam ctn) {
		Integer month = ctn.getGiaTriThang();
		Integer year = ctn.getGiaTriNam();
		this.month = month;
		this.year = year;

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
						+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang and Month(ngayBatDau)="
						+ month + " and Year(ngayBatDau) = " + year + "",
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
						+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang and Month(ngayBatDau)="
						+ month + " and Year(ngayBatDau) = " + year + "",
				new ListDangKyDichVuMapper());

		return list;
	}

	public Map<Integer, Integer> getListTongThanhTienDangKyDichVu() {
		List<ListDangKyDichVu> list = new ArrayList<ListDangKyDichVu>();
		Map<Integer, Integer> states = new HashMap<Integer, Integer>();
		for (int i = 1; i < 13; i++) {
			list = _jdbcTemplate.query(
					"SELECT maDKDV,`dichvu`.maDichVu,`khachhang`.maKhachHang,tenKhachHang,sdt,diaChi,tenDichVu,diaChiSuDungDichVu,"
							+ "luongTheoNgay,luongTheoThang,ngayBatDau,ngayKetThuc,gioBatDau,gioKetThuc,phiDichVuTheoThang,phiDichVuTheoNgay,phiDichVuTheoGio,tinhTrangThanhToan"
							+ ",5 as tongThoiGianTheoNgay" + ", 5 as tongThoiGianTheoThang"
							+ ", 5 as tongThoiGianTheoGio" + ",5 as phiDichVu" + ", 5 as tongTien,sum("
							+ "IF(luongTheothang!=0,DATEDIFF(ngayKetThuc,ngayBatDau)/30*luongTheoThang + ROUND(luongTheoThang/30,0)* DATEDIFF(ngayKetThuc,ngayBatDau)%30 + phiDichVuTheoThang,"
							+ "0+IF(luongTheoNgay!=0,luongTheoNgay* DATEDIFF(ngayKetThuc,ngayBatDau)+phiDichVuTheoNgay,"
							+ "0+phiDichVuTheoGio+(IF(luongTheoGio!=0,Hour(gioKetThuc)-Hour(gioBatDau),0)*luongTheoGio))) "
							+ ") as tongThanhTien "
							+ " FROM `dangkydichvu`,`dichvu`,`khachhang` WHERE `dangkydichvu`.maDichVu = `dichvu`.maDichVu and `dangkydichvu`.maKhachHang =`khachhang`.maKhachHang and Month(ngayBatDau)="
							+ i + " and Year(ngayBatDau) = " + yearnow + "",
					new ListDangKyDichVuMapper());
			states.put(i, list.get(0).getTongThanhTien());

		}
		// System.out.println(states.get(5).intValue());
		return states;

	}

	public TaiKhoan getSuaTaiKhoan(String TenTaiKhoan) {
		String sql = "SELECT * from taikhoan where TenTaiKhoan=?";
		return _jdbcTemplate.queryForObject(sql, new Object[] { TenTaiKhoan },
				new BeanPropertyRowMapper<TaiKhoan>(TaiKhoan.class));

	}

	public int luuSuaTaiKhoan(TaiKhoan p, String t, String m) {
	
		List<TaiKhoan> mktaikhoan = new ArrayList<TaiKhoan>();
		String sqlmktaikhoan = ("SELECT * FROM `taikhoan` WHERE TenTaiKhoan = '" + p.getTenTaiKhoan() + "'");
		mktaikhoan = _jdbcTemplate.query(sqlmktaikhoan, new TaiKhoanMapper());
		if (mktaikhoan.get(0).toString().equals(p.getMatKhauCu().toString()) && p.getMatKhauMoi().equals(p.getXacNhanMatKhauMoi())) {
			String sql = " UPDATE `taikhoan` SET `MatKhau`='" + p.getMatKhauMoi() + "' WHERE `TenTaiKhoan`= '" + t + "'";
			return _jdbcTemplate.update(sql);
		}
		return 0;

	}

}
