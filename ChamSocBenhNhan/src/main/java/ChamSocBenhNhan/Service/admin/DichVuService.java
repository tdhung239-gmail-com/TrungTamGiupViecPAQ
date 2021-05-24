package ChamSocBenhNhan.Service.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service

public interface DichVuService {
	public List<ListNhanVienvaDichVu> getViewQLDichVu();
	public int luuThemDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s,HttpSession s2,
			 ListNhanVienvaDichVu td);
	public ListNhanVienvaDichVu  getSuaDichVu(int maDichVu);
	public List<ListNhanVienvaDichVu> getViewQLDichVuTheoMDV(Integer maDichVu);
	public int luuSuaDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			ListNhanVienvaDichVu p) ;
	public int xoadichVu(int id);

}
