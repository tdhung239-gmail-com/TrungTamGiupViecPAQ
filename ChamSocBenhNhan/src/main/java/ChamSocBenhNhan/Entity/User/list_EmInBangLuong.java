package ChamSocBenhNhan.Entity.User;

import java.sql.Date;

public class list_EmInBangLuong {
	private Integer maHSNV;
	private Integer maDKDV;
	private Date ngayBatDau;
	private Date ngayKetThuc;

	public list_EmInBangLuong() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMaHSNV() {
		return maHSNV;
	}

	public void setMaHSNV(Integer maHSNV) {
		this.maHSNV = maHSNV;
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

	@Override
	public String toString() {
		
		return maHSNV + "," + maDKDV + "-" + ngayBatDau + "," + ngayKetThuc ;
	}
}
