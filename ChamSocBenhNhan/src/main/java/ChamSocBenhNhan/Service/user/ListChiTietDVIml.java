package ChamSocBenhNhan.Service.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Dao.User.ChiTietDichVuDao;
import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service 
public class ListChiTietDVIml implements ListChiTietDVService { 
	@Autowired 
	private ChiTietDichVuDao listcttd = new ChiTietDichVuDao(); 
	
	public List<ListNhanVienvaDichVu> getServiceById(int id) {
		return listcttd.getServiceById(id);
	}

	public int saveComment(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s, 
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s2, ListDangKyDichVu emp, 
			Integer maDichVu) { 
		return listcttd.saveComment(file, s, file2, s2, emp, maDichVu); 
	} 

	public List<ListDangKyDichVu> getSizeCommentById(int maDichVu) { 
		return listcttd.getSizeCommentById(maDichVu); 
	} 

	public List<ListDangKyDichVu> getCommentById(int id, String limit) { 
		// TODO Auto-generated method stub 
		return listcttd.getCommentById(id, limit); 
	} 
	

	public int saveRegisterService(ListDangKyDichVu emp, int maDichVu, int maKhachHang) {
		return listcttd.saverRegister(emp, maDichVu, maKhachHang);
		

	}

	public List<ListDangKyDichVu> getIdCustomer() {
		return listcttd.getIdCustomer();
	}

	public List<ListDangKyDichVu> getRegisterServiceForCustomer(int maKhachHang) {
		return listcttd.getRegisterServiceForCustomer(maKhachHang);
		
	}

	/* bảng quản ký đăng ký dịch vụ
	public List<ListDangKyDichVu> getDangKyDichVu() {
		return listcttd.getDangKyDichVu();
		
	}

	public List<ListDangKyDichVu> getTongThanhTienDangKyDichVu() {
		return listcttd.getTongThanhTienDangKyDichVu();
		
	} */
	
	
	//Những con số ấn tượng
	public List<BangLuong> getGioLamViecTrongNam(){
		return listcttd.getGioLamViecTrongNam();
	}
	public List<BangLuong> getTongSoKhachHangDuocPhucVu(){
		return listcttd.getTongSoKhachHangDuocPhucVu();
	}

} 