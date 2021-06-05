package ChamSocBenhNhan.Service.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import ChamSocBenhNhan.Entity.User.ChonDichVu;
import ChamSocBenhNhan.Entity.User.TuyenDung;

@Service

public interface TuyenDungService {
	public List<TuyenDung> getViewQLTuyenDung();
	public Map<String, String> getChonTinhTrangDuyetHoSo();
	public Map<String, String> getChonTinhTrangLamViec() ;
	public Map<ChonDichVu, ChonDichVu> getChonDichVu();
	public int luuThemTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,ChonDichVu dv, TuyenDung td);
	public TuyenDung getSuaTuyenDung(int maTuyenDung);
	public int luuSuaTuyenDung(@RequestParam(value = "profile") CommonsMultipartFile file, HttpSession s,TuyenDung p,ChonDichVu dv);
	public int xoaTuyenDung(int id);
	public int tatBatTuyenDung(int id,int tatBat);

}
