package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Dao.Admin.NhanVienDao;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service
public class NhanVienIml implements NhanVienService{ 
	@Autowired 
	NhanVienDao nv = new NhanVienDao(); 
	public List<ListNhanVienvaDichVu> getViewQlNhanVien(String maNhanVien) { 
		return nv.getViewQlNhanVien(maNhanVien); 
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
	
	public int luuNhanVien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,ChonDichVu dv, ListNhanVienvaDichVu hsnv) { 
		return nv.luuNhanVien(file,s, dv, hsnv); 
	} 
	public ListNhanVienvaDichVu getSuaNhanVien(int maHSNV) { 
		return nv.getSuaNhanVien(maHSNV); 
	} 
	public int luuSuaNhanvien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,ListNhanVienvaDichVu p,ChonDichVu dv) { 
		return nv.luuSuaNhanvien(file,s,p,dv); 
	} 
	public int xoaNhanVien(int id) { 
		return nv.xoaNhanVien(id); 
	} 
	
	///
	public List<ListNhanVienvaDichVu> getViewQLDangKyTimViec() {
		return nv.getViewQLDangKyTimViec();
	}
	public int duyetDKTV(int maHSNV) {
		return nv.duyetDKTV(maHSNV);
	}
	public int xoaDKTV(int id) {
		return nv.xoaDKTV(id);
	}
	
}
