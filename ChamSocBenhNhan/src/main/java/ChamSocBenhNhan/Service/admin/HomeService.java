package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.Admin.TaiKhoan;
import ChamSocBenhNhan.Entity.Admin.chonThangNam;
import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

@Service
public interface HomeService {
	
	public List<TaiKhoan> dologin(String userName, String pass);
	public Map<Integer, String> getChonThang();
	public Map<Integer, String> getChonNam();
	public List<ListDangKyDichVu> getDangKyDichVu();
	public List<ListDangKyDichVu> getTongThanhTienDangKyDichVu();
	public  Map<Integer, Integer>   getListTongThanhTienDangKyDichVu();
	public void locThongKe(chonThangNam ctn);
	public TaiKhoan getSuaTaiKhoan(String TenTaiKhoan);
	public int luuSuaTaiKhoan(TaiKhoan p, String t , int m);
	
}
