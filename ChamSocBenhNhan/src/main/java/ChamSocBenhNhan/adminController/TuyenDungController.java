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
import ChamSocBenhNhan.Entity.User.TuyenDung;
import ChamSocBenhNhan.Service.admin.TuyenDungIml;

@Controller
public class TuyenDungController extends BaseController {
	@Autowired
	TuyenDungIml nv = new TuyenDungIml();

	// *
	@RequestMapping(value = { "/quan-li/tuyen-dung" })
	public ModelAndView getViewQLTuyenDung() {
		_mvShare.addObject("tuyendung", nv.getViewQLTuyenDung());
		_mvShare.setViewName("admin/viewql_tuyendung");
		return _mvShare;
	}

	@RequestMapping("/quan-li/them-tuyen-dung")
	public String theTuyenDung(Model m) {
		// m.addAttribute("chonTinhTrangLamViec", nv.getChonTinhTrangLamViec());
		// m.addAttribute("chonTinhTrangDuyetHoSo", nv.getChonTinhTrangDuyetHoSo());
		m.addAttribute("chonDichVu", nv.getChonDichVu());
		m.addAttribute("command", new TuyenDung());
		return "admin/themtuyendung";
	}

	@RequestMapping(value = "/luuThemTuyenDung", method = RequestMethod.POST)
	public String luuThemTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ChonDichVu dv, TuyenDung td) throws UnsupportedEncodingException {

		if (nv.luuThemTuyenDung(file, s, dv, td) > 0) {
			String message = "<script>alert('Chúc mừng bạn đã thêm mới giới thiệu tuyển dụng thành công thành công!!!');</script>";

			return "redirect:/quan-li/tuyen-dung?message=" + URLEncoder.encode(message, "UTF-8");
		}

		String message = "<script>alert('Lưu không thành công!!!');</script>";

		return "redirect:/quan-li/them-tuyen-dung?message=" + URLEncoder.encode(message, "UTF-8");

	}

	@RequestMapping("/quan-li/suaTuyenDung/{maTuyenDung}")
	public String getSuaTuyenDung(@PathVariable int maTuyenDung, Model m) {
		m.addAttribute("chonDichVu", nv.getChonDichVu());
		m.addAttribute("command", nv.getSuaTuyenDung(maTuyenDung));
		return "admin/suatuyendung";
	}

	@RequestMapping(value = "/luuSuaTuyenDung", method = RequestMethod.POST)
	public String luuSuaTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ChonDichVu dv, @ModelAttribute("emp") TuyenDung emp) throws UnsupportedEncodingException {
		int kq = nv.luuSuaTuyenDung(file, s, emp, dv);
		if (kq > 0) {
			System.out.println("tc");
			String message = "<script>alert('Cập nhật thành công!!!');</script>";
			return "redirect:quan-li/tuyen-dung?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Cập nhật không thành công !!!');</script>";
			return "redirect:/quan-li/suaTuyenDung/" + emp.getMaTuyenDung() + "?message="
					+ URLEncoder.encode(message, "UTF-8");

		}

	}

	@RequestMapping(value = "quan-li/xoaTuyenDung/{maTuyendung}", method = RequestMethod.GET)
	public String xoaTuyenDung(@PathVariable int maTuyendung) throws UnsupportedEncodingException {

		int kq = nv.xoaTuyenDung(maTuyendung);
		if (kq > 0) {
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/tuyen-dung?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Xóa không thành công !!!');</script>";
			return "redirect:/quan-li/tuyen-dung?message=" + URLEncoder.encode(message, "UTF-8");

		}

	}

	@RequestMapping(value = "quan-li/tatBatTuyenDung/{maTuyendung}/{tatBat}", method = RequestMethod.GET)
	public String tatBatTuyenDung(@PathVariable int maTuyendung, @PathVariable int tatBat) {
		if (tatBat == 0) {
			tatBat = 1;
			nv.tatBatTuyenDung(maTuyendung, tatBat);
		} else {
			tatBat = 0;
			nv.tatBatTuyenDung(maTuyendung, tatBat);
		}

		return "redirect:/quan-li/tuyen-dung";

	}

}
