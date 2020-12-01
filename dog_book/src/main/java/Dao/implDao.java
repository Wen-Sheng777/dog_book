package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.member;

public interface implDao {
	
	static Session getSe()
	{
		Configuration conn=new Configuration().configure();		
		SessionFactory sf=conn.buildSessionFactory();		
		Session se=sf.openSession();
		
		return se;
	}
	void add(Object o);
	member queryID(int id);
	void delete(int id);
	void update(int id,Object o);
}
