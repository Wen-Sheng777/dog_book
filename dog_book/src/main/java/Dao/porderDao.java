package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.member;
import model.porder;
import model.product;


public class porderDao implements implDao {

	public static void main(String[] args) {
//		porder p = new porder();
//		p.setName("test5");
//		p.setTel("1234");
//		p.setAddress("abc");
//		p.setProduct1(2);
//		p.setProduct4(10);
//		p.setSum(p.getSum());
//		new porderDao().add(p);
	}
	

	@Override
	public void add(Object o) {
		porder p=(porder)o;
		Session se=implDao.getSe();
		
		Transaction tx=se.beginTransaction();
		
		se.save(p);
		
		tx.commit();
		
	}

	@Override
	public member queryID(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	public porder[] query(String name) {
		Session se=implDao.getSe();
		String HQL="from porder where name='"+name+"'";
		
		Query q1=se.createQuery(HQL);
		
		List<porder> l=q1.list();
		porder[] s=l.toArray(new porder[l.size()]);
		return s;

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(int id, Object o) {
		// TODO Auto-generated method stub
		
	}

}
