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

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Service.admin.KhachHangIml;

@Controller
public class KhachHangController extends BaseController {
	@Autowired
	KhachHangIml nv = new KhachHangIml();

	// *
	@RequestMapping(value = { "/quan-li/khach-hang/{maKhachHang}" })
	public ModelAndView getViewQlKhachHang(@PathVariable String maKhachHang) {
		_mvShare.addObject("khachhang", nv.getViewQlKhachHang(maKhachHang));
		_mvShare.setViewName("admin/viewql_khachhang");
		return _mvShare;
	}

	@RequestMapping("/quan-li/khach-hang/them-khach-hang")
	public String themKhachhang(Model m) {
		m.addAttribute("command", new ListDangKyDichVu());
		return "admin/them_khachhang";
	}

	@RequestMapping(value = "/luuThemKhachHang", method = RequestMethod.POST)
	public String luuThemKhacHang(ListDangKyDichVu kh) throws UnsupportedEncodingException {

		if (nv.luuThemKhachHang(kh) == 5) {
			String message = "<script>alert('Thêm mới không thành công, số điện thoại nhập tử 10 số!!!');</script>";
			return "redirect:/quan-li/khach-hang/them-khach-hang?message=" + URLEncoder.encode(message, "UTF-8");

		}

		String message = "<script>alert('Thêm mới thành công!!!');</script>";
		return "redirect:quan-li/khach-hang/all?message=" + URLEncoder.encode(message, "UTF-8");

	}

	@RequestMapping("/quan-li/khach-hang/suaKhachHang/{maKhachHang}")
	public String getSuaKhachHang(@PathVariable Integer maKhachHang, Model m) {
		m.addAttribute("command", nv.getSuaKhachHang(maKhachHang));
		return "admin/sua_khachhang";
	}

	@RequestMapping(value = "/luuSuaKhachHang", method = RequestMethod.POST)
	public String luuSuaKhachHang(@ModelAttribute("emp") ListDangKyDichVu emp) throws UnsupportedEncodingException {
		int kq = nv.luuSuaKhachHang(emp);
		if (kq == 1) {
			String message = "<script>alert('Cập nhật thành công!!!');</script>";
			return "redirect:quan-li/khach-hang/all?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Thêm không thành công, sđt nhập phải từ 10 số !!!');</script>";
			return "redirect:/quan-li/khach-hang/suaKhachHang/" + emp.getMaKhachHang() + "?message="
					+ URLEncoder.encode(message, "UTF-8");

		}

	}

	@RequestMapping(value = "quan-li/khach-hang/xoaKhachHang/{maKhachHang}", method = RequestMethod.GET)
	public String xoaKhachHang(@PathVariable int maKhachHang) throws UnsupportedEncodingException {

		int kq = nv.xoaKhachHang(maKhachHang);
		if (kq > 0) {
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/khach-hang/all?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Xóa không thành công!!!');</script>";
			return "redirect:/quan-li/khach-hang/all?message=" + URLEncoder.encode(message, "UTF-8");
		}

	}

	@RequestMapping(value = { "/quan-li/lien-he" })
	public ModelAndView getViewQlLienHe(HttpSession ss) {
		ss.removeAttribute("tblh"); 
		_mvShare.addObject("lienhe", nv.getViewQlLienHe());
		_mvShare.setViewName("admin/viewquanli_lienhe");
		return _mvShare;
	}

	@RequestMapping(value = "quan-li/xoaLienHe/{maLienHe}", method = RequestMethod.GET)
	public String xoaLienHe(@PathVariable int maLienHe) throws UnsupportedEncodingException {

		int kq = nv.xoaLienHe(maLienHe);
		if (kq > 0) {
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/lien-he/?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Xóa không thành công vì đang tồn tại mã khách trong bảng đăng ký dịch vụ!!!');</script>";
			return "redirect:/quan-li/lien-he/?message=" + URLEncoder.encode(message, "UTF-8");
		}

	}

}
