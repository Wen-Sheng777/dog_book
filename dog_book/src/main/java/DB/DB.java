package DB;

import java.util.LinkedHashMap;
import java.util.Map;

import Dao.productDao;
import domain.Book;
import model.product;

public class DB {
	
	private static Map map =new LinkedHashMap();
	
	static {
		map.put("1", new Book("1","javaweb�}�o","�ѽ�",380,"�@����"));
		map.put("2", new Book("2","jdbc�}�o","�ѽ�",200,"�@����"));
		map.put("3", new Book("3","ajax�}�o","�ѽ�",350,"�@����"));
		map.put("4", new Book("4","struts�}�o","�ѽ�",240,"�@����"));
		map.put("5", new Book("5","struts2�}�o","�ѽ�",275,"�@����"));
		map.put("6", new Book("6","spring�}�o","�ѽ�",400,"�@����"));
//		product[] s=new productDao().query();
//		for(int i=0;i<s.length;i++)
//		{
//			
//			map.put(i+1,s[i].getId()+","+
//							s[i].getName()+","+
//							s[i].getAuthor()+","+
//							s[i].getPrice()+","+
//							s[i].getDescription()+","+
//							s[i].getQuantity());
//		}
	}
	
	public static Map getAll() {
		return map;
	}
	
}
