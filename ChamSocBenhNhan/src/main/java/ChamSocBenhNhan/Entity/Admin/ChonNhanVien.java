package ChamSocBenhNhan.Entity.Admin;

public class ChonNhanVien {
	private Integer maHSNV;
	private String hoTen;
	public ChonNhanVien() {
		// TODO Auto-generated constructor stub
	}
	public Integer getMaHSNV() {
		return maHSNV;
	}
	public void setMaHSNV(Integer maHSNV) {
		this.maHSNV = maHSNV;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	@Override
	public String toString() {
		if (maHSNV != null) {
			return maHSNV.toString();
		}
		return hoTen.toString();
	}
}
