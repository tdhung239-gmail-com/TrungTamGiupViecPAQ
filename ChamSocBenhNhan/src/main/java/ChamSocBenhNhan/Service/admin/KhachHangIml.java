package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Dao.Admin.KhachHangDao;
import ChamSocBenhNhan.Entity.Admin.LienHe;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

@Service 
public class KhachHangIml implements KhachHangService { 
	@Autowired 
	KhachHangDao nv = new KhachHangDao(); 

	public List<ListDangKyDichVu> getViewQlKhachHang(String maKhachHang) {
		return nv.getViewQlKhachHang(maKhachHang);
	}

	public Map<String, String> getChonTinhTrangDuyetHoSo() {
		return nv.getChonTinhTrangDuyetHoSo();
	}

	public Map<String, String> getChonTinhTrangLamViec() {
		return nv.getChonTinhTrangLamViec();
	}

	public Map<ChonDichVu, ChonDichVu> getChonDichVu() {
		return nv.getChonDichVu();
	}

	public int luuThemKhachHang(ListDangKyDichVu kh) {
		return nv.luuThemKhachHang(kh);
	}

	public ListDangKyDichVu getSuaKhachHang(Integer maKhachHang) {
		return nv.getSuaKhachHang(maKhachHang);
	}

	public int luuSuaKhachHang(ListDangKyDichVu p) {
		return nv.luuSuaKhachHang(p);
	}

	public int xoaKhachHang(int id) {
		return nv.xoaKhachHang(id);
	}

	public List<LienHe> getViewQlLienHe() { 
		{ 
			return nv.getViewQlLienHe(); 
		} 
 
	} 
	public int xoaLienHe(int id) { 
		return nv.xoaLienHe(id); 
	} 
} 
