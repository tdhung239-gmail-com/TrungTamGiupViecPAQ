package ChamSocBenhNhan.Entity.User;

import java.math.BigDecimal;
import java.sql.Date;

public class ListNhanVienvaDichVu {
	private Integer maDichVu;
	private String tenDichVu;
	private String gioiThieuDichVu;
	private String hinhAnhDichVu;
	private String dieuKienLyLich;
	private String kyNang;
	private String hinhAnhKyNang;
	private Integer luongTheoGio;
	private Integer luongTheoNgay;
	private Integer luongTheoThang;
	private Integer phiDichVuTheoGio;
	private Integer phiDichVuTheoNgay;
	private Integer phiDichVuTheoThang;

	private Integer maHSNV;
	private String hoTen;
	private Date namSinh;
	private BigDecimal sdt;
	private String queQuan;
	private String noiCuTruHienTai;
	private String hinhanh;
	private String tinhTrangLamViec;
	private String tinhTrangDuyetHoSo;

	public ListNhanVienvaDichVu() {
		// TODO Auto-generated constructor stub
	}

	public ListNhanVienvaDichVu(Integer maDichVu, String tenDichVu, String gioiThieuDichVu, String hinhAnhDichVu,
			String dieuKienLyLich, String kyNang, String hinhAnhKyNang, Integer luongTheoGio, Integer luongTheoNgay,
			Integer luongTheoThang, Integer phiDichVuTheoGio, Integer phiDichVuTheoNgay, Integer phiDichVuTheoThang,
			Integer maHSNV, String hoTen, Date namSinh, BigDecimal sdt, String queQuan, String noiCuTruHienTai,
			String hinhanh, String tinhTrangLamViec, String tinhTrangDuyetHoSo) {
		super();
		this.maDichVu = maDichVu;
		this.tenDichVu = tenDichVu;
		this.gioiThieuDichVu = gioiThieuDichVu;
		this.hinhAnhDichVu = hinhAnhDichVu;
		this.dieuKienLyLich = dieuKienLyLich;
		this.kyNang = kyNang;
		this.hinhAnhKyNang = hinhAnhKyNang;
		this.luongTheoGio = luongTheoGio;
		this.luongTheoNgay = luongTheoNgay;
		this.luongTheoThang = luongTheoThang;
		this.phiDichVuTheoGio = phiDichVuTheoGio;
		this.phiDichVuTheoNgay = phiDichVuTheoNgay;
		this.phiDichVuTheoThang = phiDichVuTheoThang;
		this.maHSNV = maHSNV;
		this.hoTen = hoTen;
		this.namSinh = namSinh;
		this.sdt = sdt;
		this.queQuan = queQuan;
		this.noiCuTruHienTai = noiCuTruHienTai;
		this.hinhanh = hinhanh;
		this.tinhTrangLamViec = tinhTrangLamViec;
		this.tinhTrangDuyetHoSo = tinhTrangDuyetHoSo;
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

	public String getGioiThieuDichVu() {
		return gioiThieuDichVu;
	}

	public void setGioiThieuDichVu(String gioiThieuDichVu) {
		this.gioiThieuDichVu = gioiThieuDichVu;
	}

	public String getHinhAnhDichVu() {
		return hinhAnhDichVu;
	}

	public void setHinhAnhDichVu(String hinhAnhDichVu) {
		this.hinhAnhDichVu = hinhAnhDichVu;
	}

	public String getDieuKienLyLich() {
		return dieuKienLyLich;
	}

	public void setDieuKienLyLich(String dieuKienLyLich) {
		this.dieuKienLyLich = dieuKienLyLich;
	}

	public String getKyNang() {
		return kyNang;
	}

	public void setKyNang(String kyNang) {
		this.kyNang = kyNang;
	}

	public String getHinhAnhKyNang() {
		return hinhAnhKyNang;
	}

	public void setHinhAnhKyNang(String hinhAnhKyNang) {
		this.hinhAnhKyNang = hinhAnhKyNang;
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

	public Integer getPhiDichVuTheoGio() {
		return phiDichVuTheoGio;
	}

	public void setPhiDichVuTheoGio(Integer phiDichVuTheoGio) {
		this.phiDichVuTheoGio = phiDichVuTheoGio;
	}

	public Integer getPhiDichVuTheoNgay() {
		return phiDichVuTheoNgay;
	}

	public void setPhiDichVuTheoNgay(Integer phiDichVuTheoNgay) {
		this.phiDichVuTheoNgay = phiDichVuTheoNgay;
	}

	public Integer getPhiDichVuTheoThang() {
		return phiDichVuTheoThang;
	}

	public void setPhiDichVuTheoThang(Integer phiDichVuTheoThang) {
		this.phiDichVuTheoThang = phiDichVuTheoThang;
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

	public Date getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(Date namSinh) {
		this.namSinh = namSinh;
	}

	public BigDecimal getSdt() {
		return sdt;
	}

	public void setSdt(BigDecimal bigDecimal) {
		this.sdt = bigDecimal;
	}

	public String getQueQuan() {
		return queQuan;
	}

	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}

	public String getNoiCuTruHienTai() {
		return noiCuTruHienTai;
	}

	public void setNoiCuTruHienTai(String noiCuTruHienTai) {
		this.noiCuTruHienTai = noiCuTruHienTai;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public String getTinhTrangLamViec() {
		return tinhTrangLamViec;
	}

	public void setTinhTrangLamViec(String tinhTrangLamViec) {
		this.tinhTrangLamViec = tinhTrangLamViec;
	}

	public String getTinhTrangDuyetHoSo() {
		return tinhTrangDuyetHoSo;
	}

	public void setTinhTrangDuyetHoSo(String tinhTrangDuyetHoSo) {
		this.tinhTrangDuyetHoSo = tinhTrangDuyetHoSo;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return maHSNV.toString();
	}

}
