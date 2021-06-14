package ChamSocBenhNhan.Entity.User;

public class ChonDichVu {
	private Integer maDichVu;
	private String tenDichVu;

	public void chonDichV() {
		// TODO Auto-generated method stub

	}

	public Integer getMaDichVu() {
		return maDichVu;
	}

	public void setMaDichVu(Integer maDichVu) {
		this.maDichVu = maDichVu;
	}

	public String getTenDichVu() {
		return tenDichVu;
	}

	public void setTenDichVu(String tenDichVu) {
		this.tenDichVu = tenDichVu;
	}

	@Override
	public String toString() {
		if (maDichVu != null) {
			return maDichVu.toString();
		}
		return tenDichVu.toString();
	}

}
