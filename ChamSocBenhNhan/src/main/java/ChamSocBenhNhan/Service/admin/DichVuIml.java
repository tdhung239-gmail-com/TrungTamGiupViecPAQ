package ChamSocBenhNhan.Service.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Dao.Admin.DichVuDao;
import ChamSocBenhNhan.Entity.User.ListNhanVienvaDichVu;

@Service
public class DichVuIml implements DichVuService {
	@Autowired
	DichVuDao nv = new DichVuDao();

	public List<ListNhanVienvaDichVu> getViewQLDichVu() {
		return nv.getViewQLDichVu();
	}

	public int luuThemDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			ListNhanVienvaDichVu td) {
		return nv.luuThemDichVu(file, file2, s, s2, td);
	}

	public ListNhanVienvaDichVu getSuaDichVu(int maDichVu) {
		return nv.getSuaDichVu(maDichVu);
	}

	public List<ListNhanVienvaDichVu> getViewQLDichVuTheoMDV(Integer maDichVu) {
		return nv.getViewQLDichVuTheoMDV(maDichVu);
	}

	public int luuSuaDichVu(@RequestParam(value = "profile") CommonsMultipartFile file,
			@RequestParam(value = "profile2") CommonsMultipartFile file2, HttpSession s, HttpSession s2,
			ListNhanVienvaDichVu p) {
		return nv.luuSuaDichVu(file, file2, s, s2, p);
	}

	public int xoadichVu(int id) {
		return nv.xoadichVu(id);
	}

}
