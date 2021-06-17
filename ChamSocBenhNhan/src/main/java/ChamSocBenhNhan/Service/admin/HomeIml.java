package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Dao.Admin.HomeAdminDao;
import ChamSocBenhNhan.Entity.Admin.TaiKhoan;
import ChamSocBenhNhan.Entity.Admin.chonThangNam;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

@Service
public class HomeIml implements HomeService {  
	@Autowired 
	private HomeAdminDao slidesDao = new HomeAdminDao();  

	public List<TaiKhoan> dologin(String userName, String pass) { 
		return slidesDao.dologin(userName, pass); 
	}

	public Map<Integer, String> getChonThang() { 
		return slidesDao.getChonThang(); 
	} 

	public Map<Integer, String> getChonNam() { 
		return slidesDao.getChonNam(); 
	} 

	public List<ListDangKyDichVu> getDangKyDichVu() { 
		return slidesDao.getDangKyDichVu(); 
	} 

	public List<ListDangKyDichVu> getTongThanhTienDangKyDichVu() { 
		return slidesDao.getTongThanhTienDangKyDichVu(); 
	}
	public  Map<Integer, Integer>  getListTongThanhTienDangKyDichVu(){ 
		return slidesDao.getListTongThanhTienDangKyDichVu(); 
	} 

	public void locThongKe(chonThangNam ctn) { 
		slidesDao.locThongKe(ctn); 
 
	} 
	public TaiKhoan getSuaTaiKhoan(String TenTaiKhoan) { 
		return slidesDao.getSuaTaiKhoan(TenTaiKhoan); 
	}
	public int luuSuaTaiKhoan(TaiKhoan p, String t, String m) { 
		return slidesDao.luuSuaTaiKhoan(p,t,m); 
	} 
	

}
