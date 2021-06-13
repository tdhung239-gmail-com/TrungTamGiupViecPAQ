package ChamSocBenhNhan.Service.user;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.LienHe;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Entity.User.TuyenDung;

@Service
public interface HomeUserService {     
	@Autowired  
	public List<ListNhanVienvaDichVu> getListCardE(); 

	@Autowired
	public List<ListDangKyDichVu> getTotalRegisterService();
	
	@Autowired 
	public List<ListNhanVienvaDichVu> getListService(); 
	
	// tuyển dụng
	
	@Autowired 
	public List<TuyenDung> getListReruitment(); 

	@Autowired  
	public List<TuyenDung> getReruitmentById(int id);  
	 
	@Autowired 
	public Map<ChonDichVu, ChonDichVu> getListValueServiceOfDetailRecruitment();  

	@Autowired
	public int saveRegisterRecruitment(ChonDichVu emp, ListNhanVienvaDichVu hsnv, String filename, int maDichVu);
	
	// đóng tuyển dụng
	
	@Autowired
	public int saveContent(LienHe emp); 


}   
 