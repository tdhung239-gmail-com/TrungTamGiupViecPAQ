package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Dao.Admin.TuyenDungDao;
import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.TuyenDung;

@Service
public class TuyenDungIml implements TuyenDungService {
	@Autowired
	TuyenDungDao nv = new TuyenDungDao();

	public List<TuyenDung> getViewQLTuyenDung() {
		return nv.getViewQLTuyenDung();
	}

	public Map<String, String> getChonTinhTrangDuyetHoSo() {
		return nv.getChonTinhTrangDuyetHoSo();
	}

	public Map<String, String> getChonTinhTrangLamViec() {
		return nv.getChonTinhTrangLamViec();
	}

	public Map<ChonDichVu, ChonDichVu> getChonDichVu() {
		return nv.getChonDichVu();
	}

	public int luuThemTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			ChonDichVu dv, TuyenDung td) {
		return nv.luuThemTuyenDung(file, s, dv, td);
	}

	public TuyenDung getSuaTuyenDung(int maTuyenDung) {
		return nv.getSuaTuyenDung(maTuyenDung);
	}

	public int luuSuaTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,
			TuyenDung p, ChonDichVu dv) {
		return nv.luuSuaTuyenDung(file, s, p, dv);
	}

	public int xoaTuyenDung(int id) {
		return nv.xoaTuyenDung(id);
	}
	public int tatBatTuyenDung(int id,int tatBat) {
		return nv.tatBatTuyenDung(id,tatBat);
	}

}
