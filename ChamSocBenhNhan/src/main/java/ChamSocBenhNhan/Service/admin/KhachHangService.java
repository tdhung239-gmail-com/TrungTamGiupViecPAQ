package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.Admin.LienHe;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

@Service 
public interface KhachHangService { 
	public List<ListDangKyDichVu> getViewQlKhachHang(String maKhachHang);

	public Map<String, String> getChonTinhTrangDuyetHoSo();

	public Map<String, String> getChonTinhTrangLamViec();

	public Map<ChonDichVu, ChonDichVu> getChonDichVu();

	public int luuThemKhachHang(ListDangKyDichVu kh);

	public ListDangKyDichVu getSuaKhachHang(Integer maKhachHang);

	public int luuSuaKhachHang(ListDangKyDichVu p);

	public int xoaKhachHang(int id);
	public List<LienHe> getViewQlLienHe(); 
	public int xoaLienHe(int id);  

} 
