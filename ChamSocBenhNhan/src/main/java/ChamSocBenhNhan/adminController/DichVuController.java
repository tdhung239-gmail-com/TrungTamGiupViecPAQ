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

import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Service.admin.DichVuIml;

@Controller
public class DichVuController extends BaseController {
	@Autowired
	DichVuIml nv = new DichVuIml();

	// *
	@RequestMapping(value = { "/quan-li/dich-vu" })
	public ModelAndView getViewQLDichVu() {
		_mvShare.addObject("dichvu", nv.getViewQLDichVu());
		_mvShare.setViewName("admin/viewql_dichvu");
		return _mvShare;
	}

	@RequestMapping("/quan-li/them-dich-vu/{chonDV}")
	public String themDichVu(Model m, @PathVariable int chonDV) {
		m.addAttribute("chonDV", chonDV);
		m.addAttribute("command", new ListNhanVienvaDichVu());
		return "admin/themdichvu";
	}

	@RequestMapping(value = "/luuThemDichVu", method = RequestMethod.POST)
	public String luuThemTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			ListNhanVienvaDichVu td) throws UnsupportedEncodingException {

		if (nv.luuThemDichVu(file, file2, s, s2, td) > 0) {
			String message = "<script>alert('Chúc mừng bạn đã thêm mới giới thiệu tuyển dụng thành công thành công!!!');</script>";

			return "redirect:/quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");
		}

		String message = "<script>alert('Lưu không thành công!!!');</script>";

		return "redirect:/quan-li/them-dich-vu?message=" + URLEncoder.encode(message, "UTF-8");

	}

	@RequestMapping("/quan-li/suaDichVu/{maDichVu}")
	public String getSuaDichVu(@PathVariable int maDichVu, Model m) {
		m.addAttribute("dichvutheomadv", nv.getViewQLDichVuTheoMDV(maDichVu));
		m.addAttribute("command", nv.getSuaDichVu(maDichVu));
		return "admin/suadichvu";
	}

	@RequestMapping(value = "/luuSuaDichVu", method = RequestMethod.POST)
	public String luuSuaDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			@ModelAttribute("emp") ListNhanVienvaDichVu emp) throws UnsupportedEncodingException {
		int kq = nv.luuSuaDichVu(file, file2, s, s2, emp);
		if (kq > 0) {
			System.out.println("tc");
			String message = "<script>alert('Cập nhật thành công!!!');</script>";
			return "redirect:quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Cập nhật không thành công !!!');</script>";
			return "redirect:/quan-li/suaDichVu/" + emp.getMaDichVu() + "?message="
					+ URLEncoder.encode(message, "UTF-8");

		}

	}

	@RequestMapping(value = "quan-li/xoaDichVu/{maDichvu}", method = RequestMethod.GET)
	public String xoadichVu(@PathVariable int maDichvu) throws UnsupportedEncodingException {

		int kq = nv.xoadichVu(maDichvu);
		if (kq == 5 ) {
			String message = "<script>alert('Xóa không thành công vì tồn tại mã dịch vụ ở bảng đăng ký dịch vụ!!!');</script>";
			return "redirect:/quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");
		} else if (kq == 6) {
			String message = "<script>alert('Xóa không thành công vì đang còn tồn tại mã dịch vụ ở bảng tuyển dụng!!!');</script>";
			return "redirect:/quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");

		} else if (kq == 7) {
			String message = "<script>alert('Xóa không thành công vì đang còn tồn tại mã dịch vụ ở bảng đánh giá!!!');</script>";
			return "redirect:/quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");

		} else if (kq == 8) {
			String message = "<script>alert('Xóa không thành công vì đang còn tồn tại mã dịch vụ ở bảng hồ sơ nhân viên!!!');</script>";
			return "redirect:/quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");

		} 
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/dich-vu?message=" + URLEncoder.encode(message, "UTF-8");

	}

}
