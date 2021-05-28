package ChamSocBenhNhan.Entity.User;

public class LienHe {
	private String tenLienHe;
	private String email;
	private String thongDiep;
	public LienHe() {
		// TODO Auto-generated constructor stub
	}
	public LienHe(String tenLienHe, String email, String thongDiep) {
		super();
		this.tenLienHe = tenLienHe;
		this.email = email;
		this.thongDiep = thongDiep;
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
	public String getThongDiep() {
		return thongDiep;
	}
	public void setThongDiep(String thongDiep) {
		this.thongDiep = thongDiep;
	}
	

}
