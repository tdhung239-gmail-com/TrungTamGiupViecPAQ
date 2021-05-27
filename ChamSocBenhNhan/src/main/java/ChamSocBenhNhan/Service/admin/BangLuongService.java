package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.Admin.ChonNhanVien;

@Service
public interface BangLuongService {
	
	public List<BangLuong> getViewQlBangLuong();
	public Map<ChonNhanVien, ChonNhanVien> getChonMaNhanVien() ;
	public Map<String, String> getChonTinhTrangThanhToan();
	public int luuThemQlBangLuong(BangLuong bl, ChonNhanVien cnv);
	public BangLuong getSuaBangLuong(int idBangLuong) ;
	public int luuSuaBangLuong(BangLuong p);
	public int thanhToanBangLuong(int idBangLuong);
	public int xoaBangLuong(int id);
	
	
}
