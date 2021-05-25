package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Dao.Admin.DangKyDichVuDao;
import ChamSocBenhNhan.Entity.Admin.ChonKhachHang;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service
public class DangKyDichVuIml implements DangKyDichVuService {
	@Autowired
	DangKyDichVuDao dkdv = new DangKyDichVuDao();
	public List<ListDangKyDichVu> getViewQLDangKyDichVu(String maDKDV) {
		return dkdv.getViewQLDangKyDichVu(maDKDV);
	}
	public Map<ChonDichVu, ChonDichVu> getChonDichVu(){
		return dkdv.getChonDichVu();
	}
	public Map<ChonKhachHang, ChonKhachHang> getChonKhachHang(){
		return dkdv.getChonKhachHang();
	}
	public List<ListNhanVienvaDichVu> getListChonDichVu(){
		return dkdv.getListChonDichVu();
	}
	public List<ListNhanVienvaDichVu> getListChonDichVuTheoMaDichVu(int maDichVu){
		return dkdv.getListChonDichVuTheoMaDichVu(maDichVu);
	}
	public int luuThemDKDV(ListDangKyDichVu p, int maDichVu) {
		return dkdv.luuThemDKDV(p, maDichVu);
	}
	
	public ListDangKyDichVu getSuaDKDV(int maDKDV) {
		return dkdv.getSuaDKDV(maDKDV);
	}
	public int luuSuaDKDV(ListDangKyDichVu p) {
		return dkdv.luuSuaDKDV(p);
	}
	public int xoaDKDV(int id) {
		return dkdv.xoaDKDV(id);
	}
	public Map<String, String> getChonTinhTrang(){
		return dkdv.getChonTinhTrang();
	}
}
