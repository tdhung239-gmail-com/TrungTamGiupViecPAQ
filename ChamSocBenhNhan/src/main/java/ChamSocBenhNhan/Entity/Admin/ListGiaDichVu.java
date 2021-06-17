package ChamSocBenhNhan.Entity.Admin;

public class ListGiaDichVu {
	private Integer maDichVu;
	private Integer luongTheoGio;
	private Integer luongTheoNgay;
	private Integer luongTheoThang;

	public ListGiaDichVu() {
		// TODO Auto-generated constructor stub
	}

	public ListGiaDichVu(Integer maDichVu, Integer luongTheoGio, Integer luongTheoNgay, Integer luongTheoThang) {
		super();
		this.maDichVu = maDichVu;
		this.luongTheoGio = luongTheoGio;
		this.luongTheoNgay = luongTheoNgay;
		this.luongTheoThang = luongTheoThang;
	}

	public Integer getMaDichVu() {
		return maDichVu;
	}

	public void setMaDichVu(Integer maDichVu) {
		this.maDichVu = maDichVu;
	}

	public Integer getLuongTheoGio() {
		return luongTheoGio;
	}

	public void setLuongTheoGio(Integer luongTheoGio) {
		this.luongTheoGio = luongTheoGio;
	}

	public Integer getLuongTheoNgay() {
		return luongTheoNgay;
	}

	public void setLuongTheoNgay(Integer luongTheoNgay) {
		this.luongTheoNgay = luongTheoNgay;
	}

	public Integer getLuongTheoThang() {
		return luongTheoThang;
	}

	public void setLuongTheoThang(Integer luongTheoThang) {
		this.luongTheoThang = luongTheoThang;
	}

	@Override
	public String toString() {
		if (!luongTheoGio.toString().equals("0")) {
			return luongTheoGio.toString();
		} else if (!luongTheoThang.toString().equals("0")) {
			return luongTheoThang.toString();
		}
		return luongTheoNgay.toString();

	}

}
