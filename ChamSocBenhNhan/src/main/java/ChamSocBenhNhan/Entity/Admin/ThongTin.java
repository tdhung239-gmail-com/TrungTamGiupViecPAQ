package ChamSocBenhNhan.Entity.Admin;

public class ThongTin {
	private Integer id;
	private Integer tuoi;

	public ThongTin() {
		// TODO Auto-generated constructor stub
	}

	public ThongTin(Integer id, Integer tuoi) {
		super();
		this.id = id;
		this.tuoi = tuoi;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTuoi() {
		return tuoi;
	}

	public void setTuoi(Integer tuoi) {
		this.tuoi = tuoi;
	}

}
