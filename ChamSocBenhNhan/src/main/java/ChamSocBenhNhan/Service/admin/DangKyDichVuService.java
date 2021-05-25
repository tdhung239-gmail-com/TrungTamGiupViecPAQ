package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.Admin.ChonKhachHang;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service
public interface DangKyDichVuService {
	public List<ListDangKyDichVu> getViewQLDangKyDichVu(String maDKDV);
	public Map<ChonDichVu, ChonDichVu> getChonDichVu();
	public Map<ChonKhachHang, ChonKhachHang> getChonKhachHang();
	public List<ListNhanVienvaDichVu> getListChonDichVu();
	public List<ListNhanVienvaDichVu> getListChonDichVuTheoMaDichVu(int maDichVu);
	public int luuThemDKDV(ListDangKyDichVu p, int maDichVu);
	public ListDangKyDichVu getSuaDKDV(int maDKDV);
	public int luuSuaDKDV(ListDangKyDichVu p);
	public int xoaDKDV(int id);
	public Map<String, String> getChonTinhTrang();
}
