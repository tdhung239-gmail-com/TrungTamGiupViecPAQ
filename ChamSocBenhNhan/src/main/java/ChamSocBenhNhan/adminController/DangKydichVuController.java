package ChamSocBenhNhan.adminController;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Service.admin.DangKyDichVuIml;

@Controller
public class DangKydichVuController extends BaseController {
	@Autowired
	DangKyDichVuIml dkdv = new DangKyDichVuIml();

	// *
	@RequestMapping(value = { "/quan-li/dang-ky-dich-vu/{maDKDV}" })
	public ModelAndView getViewQLDangKyDichVu(@PathVariable String maDKDV, HttpSession ss) {
		ss.removeAttribute("tbdkdv");
		_mvShare.addObject("qldkdv", dkdv.getViewQLDangKyDichVu(maDKDV));
		_mvShare.addObject("listChonDV", dkdv.getListChonDichVu());
		_mvShare.setViewName("admin/viewquanlydangky_dv");
		return _mvShare;

	}

	@RequestMapping("/quan-li/dang-ky-dich-vu/them/{maDichVu}")
	public String themDKDV(Model m, @PathVariable int maDichVu) {

		m.addAttribute("listChonDVTheoMaDV", dkdv.getListChonDichVuTheoMaDichVu(maDichVu));
		// m.addAttribute("chonDichVu", dkdv.getChonDichVu());
		m.addAttribute("chonKhachHang", dkdv.getChonKhachHang());
		m.addAttribute("command", new ListDangKyDichVu());
		return "admin/themdangky_dv";
	}

	@RequestMapping(value = "/luuThemDKDV/{maDichVu}", method = RequestMethod.POST)
	public String luuThemDKDV(ListDangKyDichVu emp, @PathVariable int maDichVu) throws UnsupportedEncodingException {

		int kq = dkdv.luuThemDKDV(emp, maDichVu);
		if (kq == 0) {
			String message = "<script>alert('Bạn nhập ngày không chính xác, mời bạn nhập lại đúng!!!');</script>";
			try {
				return "redirect:/quan-li/dang-ky-dich-vu/them/" + maDichVu + "?message="
						+ URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} else if (kq == 10) {
			String message = "<script>alert('Bạn nhập giờ không chính xác, mời bạn nhập lại giờ kết thúc lơn hơn giờ bắt đầu tối thiểu 1 giờ!!!');</script>";
			try {
				return "redirect:/quan-li/dang-ky-dich-vu/them/" + maDichVu + "?message="
						+ URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		String message = "<script>alert('Chúc mừng bạn đã đăng ký dịch vụ thành công!!!');</script>";

		return "redirect:/quan-li/dang-ky-dich-vu/all?message=" + URLEncoder.encode(message, "UTF-8");

	}

	@RequestMapping("/quan-li/dang-ky-dich-vu/SuaDKDV/{maDKDV}/{maDichVu}")
	public String getSuaDKDV(@PathVariable int maDKDV, @PathVariable int maDichVu, Model m) {
		m.addAttribute("chonKhachHang", dkdv.getChonKhachHang());
		m.addAttribute("listChonDVTheoMaDV", dkdv.getListChonDichVuTheoMaDichVu(maDichVu));
		m.addAttribute("chonTinhTrang", dkdv.getChonTinhTrang());
		m.addAttribute("command", dkdv.getSuaDKDV(maDKDV));
		return "admin/suadangky_dv";
	}

	@RequestMapping(value = "/luuSuaDKDV", method = RequestMethod.POST)
	public String luuSuaDKDV(ListDangKyDichVu emp) throws UnsupportedEncodingException {
		Integer kq = dkdv.luuSuaDKDV(emp);
		System.out.println(kq);
		if (kq == 0) {
			String message = "<script>alert('Bạn nhập ngày không chính xác, mời bạn nhập lại đúng!!!');</script>";
			try {
				return "redirect:/quan-li/dang-ky-dich-vu/SuaDKDV/" + emp.getMaDKDV() + "/" + emp.getMaDichVu()
						+ "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} 
		else if (kq == 10) {
			String message = "<script>alert('Bạn nhập giờ không chính xác, mời bạn nhập lại giờ kết thúc lớn hơn giờ bắt đầu tối thiểu 1 giờ hoặc giờ nằm trong khoảng từ 07:00 - 17:00 !!!');</script>";
			try {
				return "redirect:/quan-li/dang-ky-dich-vu/SuaDKDV/" + emp.getMaDKDV() + "/" + emp.getMaDichVu()
						+ "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} 
		else if (kq.toString().equals("5")) {
			String message = "<script>alert('Lưu không thành công vì đang tồn tại mã đăng ký dịch vụ này trong bảng lương bạn không thể thay đổi ngày (bạn có thể xóa dịch vụ này trong bảng lương và cập nhật lại) hoặc bạn đã nhập ngày không chính xác (ngày phải lớn hơn ngày ngày hiện tại)!!!');</script>";
			try {
				return "redirect:/quan-li/dang-ky-dich-vu/SuaDKDV/" + emp.getMaDKDV() + "/" + emp.getMaDichVu()
						+ "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		String message = "<script>alert('Chúc mừng bạn đã cập nhật lại thành công!!!');</script>";

		return "redirect:/quan-li/dang-ky-dich-vu/all?message=" + URLEncoder.encode(message, "UTF-8");

	}

	@RequestMapping(value = "quan-li/dang-ky-dich-vu/xoaDKDV/{maDKDV}", method = RequestMethod.GET)
	public String xoaDKDV(@PathVariable int maDKDV) throws UnsupportedEncodingException {

		int kq = dkdv.xoaDKDV(maDKDV);
		if (kq > 0) {
			String message = "<script>alert('Xóa thành công!!!');</script>";
			return "redirect:/quan-li/dang-ky-dich-vu/all?message=" + URLEncoder.encode(message, "UTF-8");
		} else {
			String message = "<script>alert('Xóa không thành công vì đang tồn tại mã đăng ký dịch vụ ở bảng lương!!!');</script>";
			return "redirect:/quan-li/dang-ky-dich-vu/all?message=" + URLEncoder.encode(message, "UTF-8");
		}

	}

}
