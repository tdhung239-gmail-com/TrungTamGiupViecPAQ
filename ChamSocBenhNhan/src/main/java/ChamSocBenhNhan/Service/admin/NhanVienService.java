package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service

public interface NhanVienService { 
	public List<ListNhanVienvaDichVu> getViewQlNhanVien(String maNhanVien); 
	public Map<String, String> getChonTinhTrangDuyetHoSo(); 
	public Map<String, String> getChonTinhTrangLamViec() ; 
	public Map<ChonDichVu, ChonDichVu> getChonDichVu(); 
	public int luuNhanVien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,ChonDichVu dv, ListNhanVienvaDichVu hsnv); 
	public ListNhanVienvaDichVu getSuaNhanVien(int maHSNV); 
	public int luuSuaNhanvien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,ListNhanVienvaDichVu p,ChonDichVu dv); 
	public int xoaNhanVien(int id); 
	
	///
	
	public List<ListNhanVienvaDichVu> getViewQLDangKyTimViec();
	public int duyetDKTV(int maHSNV);
	public int xoaDKTV(int id);

}
