package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.Admin.ChonNhanVien;
import ChamSocBenhNhan.Entity.Admin.ListtMaDKDV;
import ChamSocBenhNhan.Entity.Admin.chonThangNam;

@Service
public interface BangLuongService {

	public List<BangLuong> getViewQlBangLuong();
	public Map<ListtMaDKDV, ListtMaDKDV> getChonMaDKDV();

	public Map<ChonNhanVien, ChonNhanVien> getChonMaNhanVien();

	public Map<ChonNhanVien, ChonNhanVien> getChonMaNhanVienTrongQLBLuong();

	public Map<Integer, String> getChonThang();

	public Map<Integer, String> getChonNam();

	public void locThongKe(chonThangNam ctn);

	public void XemTatCa();

	public int ThanhToanTatCa(Integer ttthang, Integer ttNam, Integer ttHSNV);

	public Map<String, String> getChonTinhTrangThanhToan();

	public int luuThemQlBangLuong(BangLuong bl, ChonNhanVien cnv);

	public BangLuong getSuaBangLuong(int idBangLuong);

	public int luuSuaBangLuong(BangLuong p);

	public int thanhToanBangLuong(int idBangLuong);

	public int xoaBangLuong(int id);

}
