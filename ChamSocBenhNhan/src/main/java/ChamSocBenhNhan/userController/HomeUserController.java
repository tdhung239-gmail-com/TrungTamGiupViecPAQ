package ChamSocBenhNhan.userController;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.LienHe;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;
import ChamSocBenhNhan.Service.user.HomeUserIml;

@Controller
public class HomeUserController extends BaseControlUser {  
	@Autowired 
	private HomeUserIml listhome = new HomeUserIml();  

	@RequestMapping(value = { "/home" })
	public ModelAndView home(HttpSession ss) {
		_mvShare.addObject("nhanvienn", listhome.getListCardE());
		ss.setAttribute("listdichvu", listhome.getListService());
		ss.setAttribute("listtuyendung", listhome.getListReruitment());
		_mvShare.addObject("totalRegisterService", listhome.getTotalRegisterService());
		_mvShare.setViewName("user/index");
		ss.removeAttribute("limit");
		return _mvShare;

	}

	@RequestMapping(value = { "/home/gioithieu" })
	public ModelAndView gioithieu(HttpSession ss) {
		_mvShare.setViewName("user/gioithieu");
		ss.removeAttribute("limit");
		return _mvShare;
	}

	@RequestMapping(value = { "/home/nhanvien" }) 
	public ModelAndView nhanvien(HttpSession ss) { 
		_mvShare.addObject("nhanvienn", listhome.getListCardE()); 
		_mvShare.setViewName("user/nhanvien"); 
		ss.removeAttribute("limit"); 
		return _mvShare; 
	} 

	// tuyên dụng

	@RequestMapping(value = { "/home/cttd/{maTuyenDung}" })  
	public String chitiettuyendung(HttpSession ss, @PathVariable int maTuyenDung, Model m) {  
		// _mvShare.addObject("cttdd", listhome.getListChiTietTuyenDung());
		m.addAttribute("cttd", listhome.getReruitmentById(maTuyenDung));  
		m.addAttribute("chonGiaTriDichVu", listhome.getListValueServiceOfDetailRecruitment());  
		// _mvShare.addObject("chonDichVu",
		// listhome.getListItemServiceOfDetailRecruitment());
		m.addAttribute("command", new ListNhanVienvaDichVu());  
		ss.removeAttribute("limit");  
		return "user/chitiettuyendung";  
	} 
 
	@RequestMapping(value = "/home/cttd/save/{maTuyenDung}/{maDichVu}", method = RequestMethod.POST) 
	public String saveChiTietTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ChonDichVu dv, ListNhanVienvaDichVu hsnv, @PathVariable int maTuyenDung, @PathVariable int maDichVu) 
			throws UnsupportedEncodingException { 
		
		byte[] data = file.getBytes(); 
		String path = s.getServletContext().getRealPath("/") + "assets" + File.separator + "user" + File.separator
				+ "images" + File.separator + "nhanvien" + File.separator + file.getOriginalFilename(); 
		String fileName; 
		if (path != "") { 
			try { 
				FileOutputStream fos = new FileOutputStream(path); 
				fos.write(data); 
				fos.close(); 
				System.out.println("file upload"); 
				fileName = file.getOriginalFilename(); 
				if (listhome.saveRegisterRecruitment(dv, hsnv, fileName,maDichVu) == 1) { 
					String message = "<script>alert('Chúc mừng bạn đã đăng ký tuyển dụng thành công!!!');</script>";  
					if(s.getAttribute("tbdktv")==null) {
						s.setAttribute("tbdktv",1); 
					}else {
						s.setAttribute("tbdktv",Integer.parseInt(s.getAttribute("tbdktv").toString())+1); 
					}
					return "redirect:/home/cttd/" + maTuyenDung + "?message=" + URLEncoder.encode(message, "UTF-8"); 
				} else if (listhome.saveRegisterRecruitment(dv, hsnv, fileName,maDichVu) == 5) {
					String message = "<script>alert('Bạn đã đăng ký tuyển dụng không thành công, nhập số điện thoại phải từ 10 số !!!');</script>"; 

					return "redirect:/home/cttd/" + maTuyenDung + "?message=" + URLEncoder.encode(message, "UTF-8"); 

				} 
				String message = "<script>alert('Bạn đã đăng ký tuyển dụng không thành công: bạn phải đủ hoặc lớn hơn 16 tuối !!!');</script>"; 

				return "redirect:/home/cttd/" + maTuyenDung + "?message=" + URLEncoder.encode(message, "UTF-8"); 

			} catch (IOException e) { 
				e.printStackTrace(); 
				System.out.println("upload eror"); 
			} 
			System.out.println(path); 
			// return "success";

		} 

		 String message = "<script>alert('Bạn đã đăng ký tuyển dụng không thành công, do bạn chưa đủ 16 tuổi !!!');</script>";

		return "redirect:/home/cttd/" + maTuyenDung + "?message=" + URLEncoder.encode(message, "UTF-8"); 

	} 

	// đóng tuyển dụng

	@RequestMapping(value = { "/home/lienhe" })
	public ModelAndView lienhe(HttpSession ss) {
		ss.removeAttribute("limit");
		_mvShare.addObject("command", new LienHe());
		_mvShare.setViewName("user/lienhe");
		return _mvShare;
	}

	@RequestMapping(value = { "/home/lienhe/save" })
	public ModelAndView saveLienhe(LienHe emp,HttpSession s) {
		int kq = listhome.saveContent(emp);
	
		if (kq == 1) {
			String message = "<script>alert('Gửi liên hệ thành công!!!');</script>";
			if (s.getAttribute("tblh") == null) {
				s.setAttribute("tblh", 1);
			} else {
				s.setAttribute("tblh", Integer.parseInt(s.getAttribute("tblh").toString()) + 1);

			}
			try {
				_mvShare.setViewName("redirect:/home/lienhe?message=" + URLEncoder.encode(message, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}else {
			String message = "<script>alert('Gửi liên hệ không thành công, số điện thoại nhập vào phải đủ từ 10 số!!!');</script>";
			try {
				_mvShare.setViewName("redirect:/home/lienhe?message=" + URLEncoder.encode(message, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return _mvShare;
	}

} 
