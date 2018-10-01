package bean;

public class giohangbean {
	private String tenhang;
	private int gia;
	private int soluong;
	private String anh;
	
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String tenhang, int gia, int soluong, String anh) {
		super();
		this.tenhang = tenhang;
		this.gia = gia;
		this.soluong = soluong;
		this.anh = anh;
	}
	public String getTenhang() {
		return tenhang;
	}
	public void setTenhang(String tenhang) {
		this.tenhang = tenhang;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getThanhtien() {
		return gia*soluong;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	
}
