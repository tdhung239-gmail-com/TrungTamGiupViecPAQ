package ChamSocBenhNhan.Service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import ChamSocBenhNhan.Entity.User.ListDangKyDichVu;

@Service
public interface DanhGiaService {
	
	public List<ListDangKyDichVu> getViewQlDanhGia();
	public int xoaDanhGia(int id);
	
	
}
