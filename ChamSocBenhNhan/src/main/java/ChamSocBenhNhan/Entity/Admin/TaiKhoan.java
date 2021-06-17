package ChamSocBenhNhan.Entity.Admin;

public class TaiKhoan {
	private String TenTaiKhoan;
	private String MatKhau;
	private String MatKhauCu;
	private String MatKhauMoi;
	private String XacNhanMatKhauMoi;

	public TaiKhoan() {
		// TODO Auto-generated constructor stub
	}

	public String getTenTaiKhoan() {
		return TenTaiKhoan;
	}

	public void setTenTaiKhoan(String tenTaiKhoan) {
		TenTaiKhoan = tenTaiKhoan;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public String getMatKhauCu() {
		return MatKhauCu;
	}

	public void setMatKhauCu(String matKhauCu) {
		MatKhauCu = matKhauCu;
	}

	public String getMatKhauMoi() {
		return MatKhauMoi;
	}

	public void setMatKhauMoi(String matKhauMoi) {
		MatKhauMoi = matKhauMoi;
	}

	public String getXacNhanMatKhauMoi() {
		return XacNhanMatKhauMoi;
	}

	public void setXacNhanMatKhauMoi(String xacNhanMatKhauMoi) {
		XacNhanMatKhauMoi = xacNhanMatKhauMoi;
	}

	public TaiKhoan(String tenTaiKhoan, String matKhau, String matKhauCu, String matKhauMoi, String xacNhanMatKhauMoi) {
		super();
		TenTaiKhoan = tenTaiKhoan;
		MatKhau = matKhau;
		MatKhauCu = matKhauCu;
		MatKhauMoi = matKhauMoi;
		XacNhanMatKhauMoi = xacNhanMatKhauMoi;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return MatKhau.toString();
	}

}
