package bo;

import java.util.ArrayList;

import bean.giohangbean;


public class giohangbo {
	public int tt;
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them(String th,String gia,String sl,String anh) {
		int n = ds.size();
		for(int i=0;i<n;i++) {
			if(ds.get(i).getTenhang().trim().toLowerCase().equals(th.trim().toLowerCase()))
			{
				int soluong=Integer.parseInt(sl)+ds.get(i).getSoluong();
				//int thanhtien = soluong*Integer.parseInt(gia);
				ds.get(i).setSoluong(soluong);
				//ds.get(i).setThanhtien(thanhtien);
				return;
			}	
		}
		giohangbean hang = new giohangbean(th,Integer.parseInt(gia),Integer.parseInt(sl),anh);
		ds.add(hang);
	}
	public ArrayList<giohangbean> getgh(){
		return ds;
	}
	public int thanhtien() {
		for(giohangbean c : ds) {
			tt += c.getThanhtien();
		}
		return tt;
	}
	public void Xoa(String th) {
		int n = ds.size();
		for(int i=0;i<n;i++) {
			if(ds.get(i).getTenhang().equals(th))
				ds.remove(i);
		}
	}
}
