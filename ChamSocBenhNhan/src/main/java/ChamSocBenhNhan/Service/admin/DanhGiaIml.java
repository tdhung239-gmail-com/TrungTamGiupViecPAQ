package ChamSocBenhNhan.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Dao.Admin.DanhGiaDao;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

@Service
public class DanhGiaIml implements DanhGiaService{
	@Autowired
	private DanhGiaDao blDao = new DanhGiaDao();

	public List<ListDangKyDichVu> getViewQlDanhGia(){
		return blDao.getViewQlDanhGia();
	}
	public int xoaDanhGia(int id) {
		return blDao.xoaDanhGia(id);
	}

}
