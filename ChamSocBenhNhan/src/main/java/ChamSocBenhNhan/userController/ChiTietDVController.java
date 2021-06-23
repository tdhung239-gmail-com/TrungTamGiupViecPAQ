package ChamSocBenhNhan.userController;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;
import ChamSocBenhNhan.Service.user.ListChiTietDVIml;

@Controller
public class ChiTietDVController extends BaseControlUser {

	@Autowired
	private ListChiTietDVIml listcttd = new ListChiTietDVIml();

	@RequestMapping(value = "/home/ctdv/{maDichVu}")
	public String ctdv(@PathVariable int maDichVu, Model m) {
		// get data service by id
		m.addAttribute("ctdv", listcttd.getServiceById(maDichVu));

		// get max id customer
		List<ListDangKyDichVu> max = listcttd.getIdCustomer();
		m.addAttribute("maxCustomer", max);

		// get data commnent
		String limitCommnet = " ORDER BY maDanhGia DESC LIMIT 3";
		m.addAttribute("comment", listcttd.getCommentById(maDichVu, limitCommnet));
		String limitCommnetAll = " ";
		m.addAttribute("commentAll", listcttd.getCommentById(maDichVu, limitCommnetAll));
		m.addAttribute("sizeCommentAll", listcttd.getSizeCommentById(maDichVu));
		m.addAttribute("tongGioLamcuaNam", listcttd.getGioLamViecTrongNam());
		m.addAttribute("tongKhachHangDuocPhucVu", listcttd.getTongSoKhachHangDuocPhucVu());

		// enter and get data form

		m.addAttribute("command", new ListDangKyDichVu());

		return "user/chitietdichvu";
	}

	// get data commnentAll
	@RequestMapping(value = "/home/ctdv/{maDichVu}/commentAll")
	public String ctdvCommentAll(@PathVariable int maDichVu, HttpSession ss) {
		ss.setAttribute("limit", "commentAll");
		return "redirect:/home/ctdv/" + maDichVu + "";
	}

	// get data recordCommentAll
	@RequestMapping(value = "/home/ctdv/{maDichVu}/recordCommentAll")
	public String ctdvrecordCommentAll(@PathVariable int maDichVu, HttpSession ss) {
		ss.removeAttribute("limit");
		return "redirect:/home/ctdv/" + maDichVu + "";
	}

	// save Comment
	@RequestMapping(value = "/saveComment/{maDichVu}", method = RequestMethod.POST)
	public String saveComment(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s2, @PathVariable int maDichVu,
			ListDangKyDichVu emp) throws UnsupportedEncodingException {
		if (s.getAttribute("tbdg") == null) {
			s.setAttribute("tbdg", 1);
		} else {
			s.setAttribute("tbdg", Integer.parseInt(s.getAttribute("tbdg").toString()) + 1);

		}
		s.removeAttribute("limit");
		int kq = listcttd.saveComment(file, s, file2, s2, emp, maDichVu);
		if (kq == 0) {
			String message = "<script>alert('Đánh giá không thành công!!!');</script>";
			return "redirect:/home/ctdv/" + maDichVu + "?message=" + URLEncoder.encode(message, "UTF-8");

		}

		String message = "<script>alert('Đánh giá thành công!!!');</script>";

		return "redirect:/home/ctdv/" + maDichVu + "?message=" + URLEncoder.encode(message, "UTF-8");

	}

	// save data register service
	@RequestMapping(value = "/saves/{maDichVu}/{maKhachHang}", method = RequestMethod.POST)
	public String saveRegisterService(ListDangKyDichVu emp, @PathVariable int maDichVu, @PathVariable int maKhachHang,
			HttpSession s) throws UnsupportedEncodingException {
		
		int kq = listcttd.saveRegisterService(emp, maDichVu, maKhachHang);
		if (kq == 0) {
			String message = "<script>alert('Bạn nhập ngày giờ không chính xác, mời bạn nhập lại đúng ngày lớn hơn ngày hiện tại, ngày kết thúc lớn hơn ngày bắt đầu, giờ nằm trong khung giờ 7:00-17:00 !!!');</script>";
			try {
				return "redirect:/home/ctdv/" + maDichVu + "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} else if (kq == 10) {
			String message = "<script>alert('Bạn nhập giờ không chính xác, mời bạn nhập lại giờ kết thúc lớn hơn giờ kết thúc tối thiểu 1 giờ!!!');</script>";
			try {
				return "redirect:/home/ctdv/" + maDichVu + "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} else if (kq == 15) {
			String message = "<script>alert('đăng ký không thành công, bạn nhập phải số điện thoại từ 10 số!!!');</script>";
			try {
				return "redirect:/home/ctdv/" + maDichVu + "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} else if (kq == 20) {
			if (s.getAttribute("tblh") == null) {
				s.setAttribute("tblh", 1);
			} else {
				s.setAttribute("tblh", Integer.parseInt(s.getAttribute("tblh").toString()) + 1);
			}
			if (s.getAttribute("tbdkdv") == null) {
				s.setAttribute("tbdkdv", 1);
			} else {
				s.setAttribute("tbdkdv", Integer.parseInt(s.getAttribute("tbdkdv").toString()) + 1);
			}
			String message = "<script>alert('Chúc mừng bạn đã đăng ký dịch vụ thành công!!!');</script>";

			return "redirect:/home/chitiethoadon/" + maKhachHang + "?message=" + URLEncoder.encode(message, "UTF-8");
		}
		if (s.getAttribute("tbbl") == null) {
			s.setAttribute("tbbl", 1);
		} else {
			s.setAttribute("tbbl", Integer.parseInt(s.getAttribute("tbbl").toString()) + 1);

		}
		if (s.getAttribute("tbdkdv") == null) {
			s.setAttribute("tbdkdv", 1);
		} else {
			s.setAttribute("tbdkdv", Integer.parseInt(s.getAttribute("tbdkdv").toString()) + 1);

		}
		
		String message = "<script>alert('Chúc mừng bạn đã đăng ký dịch vụ thành công!!!');</script>";

		return "redirect:/home/chitiethoadon/" + maKhachHang + "?message=" + URLEncoder.encode(message, "UTF-8");

	}

	// hóa đơn cho mỗi khách hàng
	@RequestMapping(value = { "/home/chitiethoadon/{maKhachHang}" })
	public String view(@PathVariable int maKhachHang, Model m) {
		List<ListDangKyDichVu> list = listcttd.getRegisterServiceForCustomer(maKhachHang);
		m.addAttribute("listdangkydichvu", list);
		return "user/tt_dondangky_dv";
	}

	/*
	 * bảng quản ký đăng ký dịch vụ
	 * 
	 * @RequestMapping(value = "/home/save/1") public String showform(Model m) {
	 * List<ListDangKyDichVu> list = listcttd.getDangKyDichVu();
	 * List<ListDangKyDichVu> sum = listcttd.getTongThanhTienDangKyDichVu();
	 * m.addAttribute("listdangkydichvu", list); m.addAttribute("sum", sum);
	 * m.addAttribute("command", new ListDangKyDichVu()); return "user/view"; }
	 */

}
