package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Dao.Admin.BangLuongDao;
import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.Admin.ChonNhanVien;

@Service
public class BangLuongIml implements BangLuongService{
	@Autowired
	private BangLuongDao blDao = new BangLuongDao();

	public List<BangLuong> getViewQlBangLuong(){
		return blDao.getViewQlBangLuong();
	}
	public Map<ChonNhanVien, ChonNhanVien> getChonMaNhanVien() {
		return blDao.getChonMaNhanVien();
	}
	
	public Map<String, String> getChonTinhTrangThanhToan(){
		return blDao.getChonTinhTrangThanhToan();
	}
	
	public int luuThemQlBangLuong(BangLuong bl, ChonNhanVien cnv) {
		return blDao.luuThemQlBangLuong(bl, cnv);
	}


	public BangLuong getSuaBangLuong(int idBangLuong) {
		return blDao.getSuaBangLuong(idBangLuong);
	}

	public int luuSuaBangLuong(BangLuong p) {
		// TODO Auto-generated method stub
		return blDao.luuSuaBangLuong(p);
	}
	public int thanhToanBangLuong(int idBangLuong) {
		return blDao.thanhToanBangLuong(idBangLuong);
	}
	
	public int xoaBangLuong(int id) {
		return blDao.xoaBangLuong(id);
	}
	



}
