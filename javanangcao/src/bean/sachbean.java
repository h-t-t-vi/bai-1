package bean;

public class sachbean {
	private String masach;
	private String tensach;
	private int  soluong;
	private String anh;
	private String gia;
	
	public sachbean(String masach, String tensach, int soluong, String anh, String gia) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.soluong = soluong;
		this.anh = anh;
		this.gia = gia;
	}
	
	public sachbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	
	
	
}
