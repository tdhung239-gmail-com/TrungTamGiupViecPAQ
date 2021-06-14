package ChamSocBenhNhan.Entity.Admin;

import java.sql.Date;

public class CheckDangKyDichVuOfBangLuong {
	private Integer maBangLuong;
	private Integer maDKDV;

	private Date ngayBatDau;
	private Date ngayKetThuc;
	private String gioBatDau;
	private String gioKetThuc;
	
	private Integer maHSNV;
	public CheckDangKyDichVuOfBangLuong() {
		// TODO Auto-generated constructor stub
	}
	public Integer getMaBangLuong() {
		return maBangLuong;
	}
	public void setMaBangLuong(Integer maBangLuong) {
		this.maBangLuong = maBangLuong;
	}
	public Integer getMaDKDV() {
		return maDKDV;
	}
	public void setMaDKDV(Integer maDKDV) {
		this.maDKDV = maDKDV;
	}
	public Date getNgayBatDau() {
		return ngayBatDau;
	}
	public void setNgayBatDau(Date ngayBatDau) {
		this.ngayBatDau = ngayBatDau;
	}
	public Date getNgayKetThuc() {
		return ngayKetThuc;
	}
	public void setNgayKetThuc(Date ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}
	public String getGioBatDau() {
		return gioBatDau;
	}
	public void setGioBatDau(String gioBatDau) {
		this.gioBatDau = gioBatDau;
	}
	public String getGioKetThuc() {
		return gioKetThuc;
	}
	public void setGioKetThuc(String gioKetThuc) {
		this.gioKetThuc = gioKetThuc;
	}
	public Integer getMaHSNV() {
		return maHSNV;
	}
	public void setMaHSNV(Integer maHSNV) {
		this.maHSNV = maHSNV;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return ngayBatDau + "," +ngayKetThuc;
	}
	
}
