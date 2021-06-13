package ChamSocBenhNhan.Service.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.Admin.BangLuong;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service 
public interface ListChiTietDVService { 
	@Autowired
	public List<ListNhanVienvaDichVu> getServiceById(int id); 

	@Autowired
	public List<ListDangKyDichVu> getIdCustomer();

	@Autowired 
	public int saveComment(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s, 
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s2, ListDangKyDichVu emp, 
			Integer maDichVu); 

	@Autowired 
	public List<ListDangKyDichVu> getSizeCommentById(int maDichVu); 

	@Autowired
	public List<ListDangKyDichVu> getCommentById(int id, String limit); 
	
	@Autowired
	public int saveRegisterService(ListDangKyDichVu emp, int maDichVu, int maKhachHang); 

	@Autowired
	public List<ListDangKyDichVu> getRegisterServiceForCustomer(int maKhachHang); 

	/* @Autowired
	public List<ListDangKyDichVu> getDangKyDichVu();

	@Autowired
	public List<ListDangKyDichVu> getTongThanhTienDangKyDichVu();
	*/
	//Những con số ấn tượng
	
	public List<BangLuong> getGioLamViecTrongNam();
	public List<BangLuong> getTongSoKhachHangDuocPhucVu();

} 