package ChamSocBenhNhan.Entity.User;

import java.math.BigDecimal;

public class LienHe {
	private String tenLienHe;
	private String email;
	private BigDecimal sdt;
	private String thongDiep;
	public LienHe() {
		// TODO Auto-generated constructor stub
	}
	public LienHe(String tenLienHe, String email, String thongDiep,BigDecimal sdt) {
		super();
		this.tenLienHe = tenLienHe;
		this.email = email;
		this.thongDiep = thongDiep;
		this.sdt=sdt;
	}
	public String getTenLienHe() {
		return tenLienHe;
	}
	public void setTenLienHe(String tenLienHe) {
		this.tenLienHe = tenLienHe;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public BigDecimal getSdt() {
		return sdt;
	}
	public void setSdt(BigDecimal sdt) {
		this.sdt = sdt;
	}
	public String getThongDiep() {
		return thongDiep;
	}
	public void setThongDiep(String thongDiep) {
		this.thongDiep = thongDiep;
	}
	

}
