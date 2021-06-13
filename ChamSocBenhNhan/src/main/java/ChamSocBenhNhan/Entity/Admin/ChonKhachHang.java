package ChamSocBenhNhan.Entity.Admin;

public class ChonKhachHang {
	private Integer maKhachHang;
	private String tenKhachHang;
	public ChonKhachHang() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(Integer maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	@Override
	public String toString() {
		if (maKhachHang != null) {
			return maKhachHang.toString();
		}
		return tenKhachHang.toString();
	}
}
