package ChamSocBenhNhan.Service.user;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Dao.User.HomeUsserDao;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.LienHe;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Entity.User.TuyenDung;

@Service
public class HomeUserIml implements HomeUserService {   
	@Autowired
	private HomeUsserDao listDao = new HomeUsserDao();  

	public List<ListNhanVienvaDichVu> getListCardE() {
		return listDao.getListCardE();
	}

	public List<ListDangKyDichVu> getTotalRegisterService() {
		return listDao.getTotalRegisterService();
	}

	public List<ListNhanVienvaDichVu> getListService() { 
		return listDao.getListService(); 
	} 

	// tuyển dụng

	public List<TuyenDung> getListReruitment() {
		return listDao.getListRecruitment();
	}

	public List<TuyenDung> getReruitmentById(int id) { 
		return listDao.getRecruitmentById(id); 
	}

	public Map<ChonDichVu, ChonDichVu> getListValueServiceOfDetailRecruitment() { 
		return listDao.getListValueServiceOfDetailRecruitment(); 
	} 

	public int saveRegisterRecruitment(ChonDichVu dv, ListNhanVienvaDichVu hsnv, String filename,int maDichVu) { 
		return listDao.saveRegisterRecruitment(dv, hsnv, filename,maDichVu); 
	} 

	// đóng tuyên dụng

	public int saveContent(LienHe emp) {
		return listDao.saveLienHe(emp);
	}

}
