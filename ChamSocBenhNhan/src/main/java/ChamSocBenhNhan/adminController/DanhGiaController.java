package ChamSocBenhNhan.adminController;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ChamSocBenhNhan.Service.admin.DanhGiaIml;

@Controller
public class DanhGiaController extends BaseController {
	@Autowired
	DanhGiaIml nv = new DanhGiaIml();

	// *
	@RequestMapping(value = { "/quan-li/danh-gia" })
	public ModelAndView getViewQlDanhGia(HttpSession s) {
		s.removeAttribute("tbdg");
		_mvShare.addObject("danhgia", nv.getViewQlDanhGia());
		_mvShare.setViewName("admin/viewql_danhgia");
		return _mvShare;
	}

	
	@RequestMapping(value = "quan-li/xoaDanhGia/{maDanhGia}", method = RequestMethod.GET)
	public String xoaDanhGia(@PathVariable int maDanhGia) throws UnsupportedEncodingException {

		int kq = nv.xoaDanhGia(maDanhGia);
		if (kq > 0) {
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/danh-gia?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Xóa không thành công!!!');</script>";
			return "redirect:/quan-li/danh-gia?message=" + URLEncoder.encode(message, "UTF-8");
		}

	}

}
