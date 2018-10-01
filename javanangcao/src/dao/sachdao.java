package dao;

import java.util.ArrayList;

import bean.sachbean;;

public class sachdao {
	public ArrayList<sachbean> getsach() {
		// tao ra 1 bang
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		sachbean m = new sachbean("m1", "So phan va tam linh", 1, "image_sach/sophantamlinh.JPG", "40000");
		ds.add(m);
		m = new sachbean("m2", "Ngon ngu lap trinh", 1, "image_sach/ngongulaptrinh.jpg", "55000");
		ds.add(m);
		m = new sachbean("m3", "Chua benh khong dung thuoc", 1, "image_sach/chuabenhkhongdungthuoc.jpg", "150000");
		ds.add(m);
		m = new sachbean("m2", "Ngon ngu lap trinh", 1, "image_sach/ngongulaptrinh.jpg", "55000");
		ds.add(m);
		m = new sachbean("m3", "Chua benh khong dung thuoc", 1, "image_sach/chuabenhkhongdungthuoc.jpg", "150000");
		ds.add(m);
		m = new sachbean("m3", "Chua benh khong dung thuoc", 1, "image_sach/chuabenhkhongdungthuoc.jpg", "150000");
		ds.add(m);
		
		return ds;
		
			
				
	}
}
