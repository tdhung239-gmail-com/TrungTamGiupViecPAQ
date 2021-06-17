package ChamSocBenhNhan.adminController;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ChamSocBenhNhan.Entity.Admin.TaiKhoan;
import ChamSocBenhNhan.Entity.Admin.TaiKhoanMapper;
import ChamSocBenhNhan.Entity.Admin.chonThangNam;
import ChamSocBenhNhan.Service.admin.HomeIml;

@Controller
public class HomeAdminController extends BaseController { 
	@Autowired 
	private HomeIml b1 = new HomeIml(); 

	@RequestMapping(value = "/quan-li/{taiKhoan}/1a1234Wq6cho4htue7{matKhau}", method = RequestMethod.GET)   
	public ModelAndView checkLogin(@PathVariable(value = "taiKhoan") String taiKhoan, 
			@PathVariable(value = "matKhau") String matKhau, TaiKhoanMapper map, HttpSession ss) {  
		if (b1.dologin(taiKhoan, matKhau) != null) {  
			ss.setAttribute("okee", taiKhoan); 
			ss.setAttribute("okee2", matKhau); 
			_mvShare.addObject("getChonThang", b1.getChonThang()); 
			_mvShare.addObject("getChonNam", b1.getChonNam());  
			_mvShare.addObject("qldkdv", b1.getDangKyDichVu());  
			_mvShare.addObject("sum", b1.getTongThanhTienDangKyDichVu());  
			for (int i = 1; i < b1.getListTongThanhTienDangKyDichVu().size(); i++) {  
				_mvShare.addObject("thang" + i + "", b1.getListTongThanhTienDangKyDichVu().get(i).intValue()); 
			}
			_mvShare.addObject("command", new chonThangNam());  
			_mvShare.setViewName("admin/index");  
		} else { 
			_mvShare.setViewName("redirect:/404/");  
		}  
		return _mvShare;  

	} 

	@RequestMapping(value = "/locThongKe/{taiKhoan}/1a1234Wq6cho4htue7{matKhau}", method = RequestMethod.POST)  
	public String locThongKe(chonThangNam ctn, @PathVariable(value = "taiKhoan") String taiKhoan,  
			@PathVariable(value = "matKhau") String matKhau) {  
		b1.locThongKe(ctn);  
		return "redirect:/quan-li/" + taiKhoan + "/1a1234Wq6cho4htue7" + matKhau + "";  
	}
 
	@RequestMapping(value = "/404/", method = RequestMethod.GET) 
	public String Error() { 
		return "admin/404"; 
	} 

	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String Login(HttpSession ss) { 
		ss.removeAttribute("okee"); 
		return "admin/login"; 
	} 

	@RequestMapping("quan-li/suaTaiKhoan/{TenTaiKhoan}") 
	public String getSuaTiKhoan(@PathVariable String TenTaiKhoan, Model m) { 
		m.addAttribute("command", b1.getSuaTaiKhoan(TenTaiKhoan)); 
		return "admin/suataikhoan"; 
	} 

	@RequestMapping(value = "/luuSuaTaiKhoan/{TenTaiKhoan}/{MatKhau}", method = RequestMethod.POST)
	public String luuSuaTaiKhoan(@ModelAttribute("emp") TaiKhoan emp, @PathVariable String TenTaiKhoan,
			@PathVariable String MatKhau) throws UnsupportedEncodingException { 
		int kq = b1.luuSuaTaiKhoan(emp, TenTaiKhoan, MatKhau); 
		if (kq > 0) { 
			String message = "<script>alert('Cập nhật thành công!!!');</script>"; 
			return "redirect:/quan-li/" + TenTaiKhoan + "/1a1234Wq6cho4htue7" + emp.getMatKhauMoi() +"?message="
					+ URLEncoder.encode(message, "UTF-8"); 
		} else { 
			String message = "<script>alert('cập nhật không thành công, bạn phải đúng mật khẩu cũ và đúng xác nhận mật khẩu mới !!!');</script>";
			return "redirect:/quan-li/suaTaiKhoan/" + TenTaiKhoan + "?message="
					+ URLEncoder.encode(message, "UTF-8"); 

		} 

	} 

} 
