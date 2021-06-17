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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Service.admin.NhanVienIml;

@Controller
public class NhanVienController extends BaseController { 
	@Autowired 
	NhanVienIml nv = new NhanVienIml();
 
	// *
	@RequestMapping(value = { "/quan-li/nhan-vien/{maNhanVien}" }) 
	public ModelAndView getViewQLNhanvien(@PathVariable String maNhanVien) { 
		_mvShare.addObject("nhanvienn", nv.getViewQlNhanVien(maNhanVien)); 
		_mvShare.setViewName("admin/viewqlnhanvien"); 
		return _mvShare; 
	}

	@RequestMapping("/quan-li/nhan-vien/them-nhan-vien") 
	public String themNhanVien(Model m) { 
		// m.addAttribute("chonTinhTrangLamViec", nv.getChonTinhTrangLamViec());
		// m.addAttribute("chonTinhTrangDuyetHoSo", nv.getChonTinhTrangDuyetHoSo());
		m.addAttribute("chonDichVu", nv.getChonDichVu()); 
		m.addAttribute("command", new ListNhanVienvaDichVu()); 
		return "admin/themnhanvien"; 
	}

	@RequestMapping(value = "/luuThemNhanVien", method = RequestMethod.POST) 
	public String luuThemNhanVien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ChonDichVu dv, ListNhanVienvaDichVu hsnv) throws UnsupportedEncodingException { 

		if (nv.luuNhanVien(file, s, dv, hsnv) ==1) { 
			System.out.println("tc");
			String message = "<script>alert('Chúc mừng bạn đã thêm mới nhân viên thành công!!!');</script>"; 

			return "redirect:/quan-li/nhan-vien/all?message=" + URLEncoder.encode(message, "UTF-8"); 
		}

		if (nv.luuNhanVien(file, s, dv, hsnv) ==5) { 
			System.out.println("tc");
			String message = "<script>alert('Thêm không thành công, bạn phải nhập số điện thoại từ 10 số!!!');</script>"; 

			return "redirect:/quan-li/nhan-vien/all?message=" + URLEncoder.encode(message, "UTF-8"); 
		}

		String message = "<script>alert('Lưu không thành công, có thể là do bạn chưa đủ 16 tuổi hoặc bạn chưa chọn ảnh!!!');</script>"; 

		return "redirect:/quan-li/nhan-vien/them-nhan-vien?message=" + URLEncoder.encode(message, "UTF-8"); 

	} 

	@RequestMapping("/quan-li/nhan-vien/suaNhanVien/{maHSNV}") 
	public String getSuaNhanVien(@PathVariable int maHSNV, Model m) { 
		m.addAttribute("chonDichVu", nv.getChonDichVu()); 
		m.addAttribute("chonTinhTrangLV", nv.getChonTinhTrangLamViec()); 
		m.addAttribute("command", nv.getSuaNhanVien(maHSNV)); 
		return "admin/suanhanvien"; 
	}

	@RequestMapping(value = "/luuSuaNhanVien", method = RequestMethod.POST) 
	public String luuSuaNhanVien(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s, 
			ChonDichVu dv, @ModelAttribute("emp") ListNhanVienvaDichVu emp) throws UnsupportedEncodingException { 
		int kq = nv.luuSuaNhanvien(file, s, emp, dv); 

		if (kq == 11) { 
			 String message = "<script>alert('Sửa không thành công, tồn tại nhân viên trong bảng lương, để tránh lỗi phân công bạn k nên thay đổi mã dich vụ !!!');</script>";
			return "redirect:/quan-li/nhan-vien/suaNhanVien/" + emp.getMaHSNV() + "?message=" 
					+ URLEncoder.encode(message, "UTF-8"); 

		}

		else if (kq == 0) { 
			String message = "<script>alert('Sửa không thành công, năm sinh phải lớn hơn 16 tuổi !!!');</script>"; 
			return "redirect:/quan-li/nhan-vien/suaNhanVien/" + emp.getMaHSNV() + "?message=" 
					+ URLEncoder.encode(message, "UTF-8"); 

		}
		
		else if (kq == 5) { 
			String message = "<script>alert('Sửa không thành công, nhập số điện thoại phải từ 10 số !!!');</script>"; 
			return "redirect:/quan-li/nhan-vien/suaNhanVien/" + emp.getMaHSNV() + "?message=" 
					+ URLEncoder.encode(message, "UTF-8"); 

		}
		else { 
			System.out.println("tc"); 
			String message = "<script>alert('Cập nhật thành công!!!');</script>";
			return "redirect:quan-li/nhan-vien/all?message=" + URLEncoder.encode(message, "UTF-8"); 
		} 
 
	}

	@RequestMapping(value = "quan-li/nhan-vien/xoaNhanVien/{maHSNV}", method = RequestMethod.GET) 
	public String xoaNhanVien(@PathVariable int maHSNV) throws UnsupportedEncodingException { 

		int kq = nv.xoaNhanVien(maHSNV); 
		if (kq > 0) { 
			String message = "<script>alert('Xóa thành công!!!');</script>"; 
			return "redirect:/quan-li/nhan-vien/all?message=" + URLEncoder.encode(message, "UTF-8"); 
		} else { 
			String message = "<script>alert('Xóa không thành công vì đang còn tồn tại nhân viên này bên bảng lương chưa được xóa!!!');</script>"; 
			return "redirect:/quan-li/nhan-vien/all?message=" + URLEncoder.encode(message, "UTF-8"); 

		} 

	} 
	// Đăng ký tìm việc

	@RequestMapping(value = { "/quan-li/dangky-timviec" })
	public ModelAndView getViewQLDangKyTimViec(HttpSession ss) {
		ss.removeAttribute("tbdktv"); 
		_mvShare.addObject("dktv", nv.getViewQLDangKyTimViec());
		_mvShare.setViewName("admin/viewql_dangky_timviec");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-li/duyetDKTV/{maHSNV}", method = RequestMethod.GET)
	public String duyetDKTV(@PathVariable int maHSNV) {
		nv.duyetDKTV(maHSNV);
		return "redirect:/quan-li/dangky-timviec";
	}

	@RequestMapping(value = "quan-li/xoaDKTV/{maHSNV}", method = RequestMethod.GET)
	public String xoaDKTV(@PathVariable int maHSNV) throws UnsupportedEncodingException {

		int kq = nv.xoaDKTV(maHSNV);
		if (kq > 0) {
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/dangky-timviec?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Xóa không thành công vì đang tồn tại nhân viên này có ở trong bảng lương!!!');</script>";
			return "redirect:/quan-li/dangky-timviec?message=" + URLEncoder.encode(message, "UTF-8");

		}

	}
}
