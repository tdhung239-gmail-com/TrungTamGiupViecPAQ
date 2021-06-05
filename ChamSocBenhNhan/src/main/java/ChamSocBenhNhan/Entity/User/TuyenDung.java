package ChamSocBenhNhan.Entity.User;

public class TuyenDung {

	private Integer maTuyenDung;
	private String tieuDeTuyenDung;
	private String moTaChung;
	private String hinhAnh;
	private String moTaCongViec;
	private String quyenLoi;
	private String yeuCauCongViec;
	private Integer tatBat;
	private Integer maDichVu;

	public TuyenDung() {
		// TODO Auto-generated constructor stub
	}

	public TuyenDung(Integer maTuyenDung, String tieuDeTuyenDung, String moTaChung, String hinhAnh, String moTaCongViec,
			String quyenLoi, String yeuCauCongViec, Integer maDichVu, Integer tatBat) {
		super();
		this.maTuyenDung = maTuyenDung;
		this.tieuDeTuyenDung = tieuDeTuyenDung;
		this.moTaChung = moTaChung;
		this.hinhAnh = hinhAnh;
		this.moTaCongViec = moTaCongViec;
		this.quyenLoi = quyenLoi;
		this.yeuCauCongViec = yeuCauCongViec;
		this.maDichVu = maDichVu;
		this.tatBat = tatBat;
	}

	public Integer getMaTuyenDung() {
		return maTuyenDung;
	}

	public void setMaTuyenDung(Integer maTuyenDung) {
		this.maTuyenDung = maTuyenDung;
	}

	public String getTieuDeTuyenDung() {
		return tieuDeTuyenDung;
	}

	public void setTieuDeTuyenDung(String tieuDeTuyenDung) {
		this.tieuDeTuyenDung = tieuDeTuyenDung;
	}

	public String getMoTaChung() {
		return moTaChung;
	}

	public void setMoTaChung(String moTaChung) {
		this.moTaChung = moTaChung;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public String getMoTaCongViec() {
		return moTaCongViec;
	}

	public void setMoTaCongViec(String moTaCongViec) {
		this.moTaCongViec = moTaCongViec;
	}

	public String getQuyenLoi() {
		return quyenLoi;
	}

	public void setQuyenLoi(String quyenLoi) {
		this.quyenLoi = quyenLoi;
	}

	public String getYeuCauCongViec() {
		return yeuCauCongViec;
	}

	public void setYeuCauCongViec(String yeuCauCongViec) {
		this.yeuCauCongViec = yeuCauCongViec;
	}

	public Integer getMaDichVu() {
		return maDichVu;
	}

	public void setMaDichVu(Integer maDichVu) {
		this.maDichVu = maDichVu;
	}

	public Integer getTatBat() {
		return tatBat;
	}

	public void setTatBat(Integer tatBat) {
		this.tatBat = tatBat;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return maDichVu.toString();
	}
}
