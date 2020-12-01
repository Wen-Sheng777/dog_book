package DB;

import java.util.LinkedHashMap;
import java.util.Map;

import Dao.productDao;
import domain.Book;
import model.product;

public class DB {
	
	private static Map map =new LinkedHashMap();
	
	static {
		map.put("1", new Book("1","javaweb開發","老豬",380,"一本書"));
		map.put("2", new Book("2","jdbc開發","老豬",200,"一本書"));
		map.put("3", new Book("3","ajax開發","老豬",350,"一本書"));
		map.put("4", new Book("4","struts開發","老豬",240,"一本書"));
		map.put("5", new Book("5","struts2開發","老豬",275,"一本書"));
		map.put("6", new Book("6","spring開發","老豬",400,"一本書"));
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
