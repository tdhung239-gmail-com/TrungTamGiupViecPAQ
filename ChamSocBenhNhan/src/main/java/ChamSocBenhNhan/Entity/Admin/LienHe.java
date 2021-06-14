package ChamSocBenhNhan.Entity.Admin;

import java.math.BigDecimal;

public class LienHe {
	private Integer malienhe;
	private String tenlienhe;
	private String email;
	private BigDecimal sdt; 
	private String thongdiep;

	public LienHe() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMalienhe() {
		return malienhe;
	}

	public void setMalienhe(Integer malienhe) {
		this.malienhe = malienhe;
	}

	public String getTenlienhe() {
		return tenlienhe;
	}

	public void setTenlienhe(String tenlienhe) {
		this.tenlienhe = tenlienhe;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public BigDecimal getSdt() {
		return sdt;
	}
	public void setSdt(BigDecimal sdt) {
		this.sdt = sdt;
	}

	public String getThongdiep() {
		return thongdiep;
	}

	public void setThongdiep(String thongdiep) {
		this.thongdiep = thongdiep;
	}

}
