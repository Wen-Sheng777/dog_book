package Dao;

import java.util.Map;

import DB.DB;
import domain.Book;

public class BookDao {
	
	public Map getAll() {
		
		return DB.getAll();
	}
	
	public Book find(String id) {
		
		return (Book)DB.getAll().get(id);
	}

}
