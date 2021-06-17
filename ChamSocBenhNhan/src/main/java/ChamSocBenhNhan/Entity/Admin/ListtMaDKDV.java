package ChamSocBenhNhan.Entity.Admin;

public class ListtMaDKDV {
	private Integer maDKDV;

	public ListtMaDKDV() {
		// TODO Auto-generated constructor stub
	}

	public ListtMaDKDV(Integer maDKDV) {
		super();
		this.maDKDV = maDKDV;
	}

	public Integer getMaDKDV() {
		return maDKDV;
	}

	public void setMaDKDV(Integer maDKDV) {
		this.maDKDV = maDKDV;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return maDKDV.toString();
	}
}
