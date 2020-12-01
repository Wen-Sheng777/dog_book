package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.manage;
import model.member;
import model.porder;

public class manageDao implements implDao{

	public static void main(String[] args) {
//		manage m = new manage();
//		m.setUser("BB");
//		m.setPassword("222");
//		m.setName("BB");
//		m.setTel("123");
//		m.setEmail("123@gmail.com");
//		m.setAddress("abc");
//		new manageDao().add(m);
		

	}

	@Override
	public void add(Object o) {
		manage m=(manage)o;
		Session se=implDao.getSe();
		
		Transaction tx=se.beginTransaction();
		
		se.save(m);
		
		tx.commit();
		
	}

	@Override
	public member queryID(int id) {
		Session se=implDao.getSe();
		
		member s=(member)se.get(member.class, id);
			
		return s;
	}
	
	public porder queryPorderID(int id) {
		Session se=implDao.getSe();
		
		porder s=(porder)se.get(porder.class, id);
			
		return s;
	}
	
	public member[] query() {
		Session se=implDao.getSe();
		String HQL="from member";
		
		Query q1=se.createQuery(HQL);
		
		List<member> l=q1.list();
		member[] m=l.toArray(new member[l.size()]);
		return m;

	}
	
	public porder[] queryporder() {
		Session se=implDao.getSe();
		String HQL="from porder";
		
		Query q1=se.createQuery(HQL);
		
		List<porder> l=q1.list();
		porder[] m=l.toArray(new porder[l.size()]);
		return m;

	}

	@Override
	public void delete(int id) {
		try {
			member m=queryID(id);
			Session se=implDao.getSe();
			Transaction tx=se.beginTransaction();
			
			se.delete(m);
			
			tx.commit();
			}catch(IllegalArgumentException e) {
				System.out.println("manageDao().update(int id, Object o)沒抓到資料");
				e.printStackTrace();
			}
		
	}
	
	public void deletePorder(int id) {
		try {
			porder p=queryPorderID(id);
			Session se=implDao.getSe();
			Transaction tx=se.beginTransaction();
			
			se.delete(p);
			
			tx.commit();
			}catch(IllegalArgumentException e) {
				System.out.println("manageDao().update(int id, Object o)沒抓到資料");
				e.printStackTrace();
			}
		
	}

	@Override
	public void update(int id, Object o) {
		try {
			member s2=(member)o;
			
			member s=queryID(id);
			s.setUser(s2.getUser());
			s.setPassword(s2.getPassword());
			s.setName(s2.getName());
			s.setTel(s2.getTel());
			s.setEmail(s2.getEmail());
			s.setAddress(s2.getAddress());

			Session se=implDao.getSe();
			Transaction tx=se.beginTransaction();
			
			se.update(s);
			
			tx.commit();
			}catch(NullPointerException e) {
				System.out.println("manageDao().update(Integer id, Object o)沒抓到資料");
				e.printStackTrace();
			}
		
	}
	
	public void updatePorder(int id, Object o) {
		try {
			porder s2=(porder)o;
			
			porder p=queryPorderID(id);
			p.setName(s2.getName());
			p.setProduct1(s2.getProduct1());
			p.setProduct2(s2.getProduct2());
			p.setProduct3(s2.getProduct3());
			p.setProduct4(s2.getProduct4());
			p.setProduct5(s2.getProduct5());
			p.setSum(s2.getSum1());
			Session se=implDao.getSe();
			Transaction tx=se.beginTransaction();
			
			se.update(p);
			
			tx.commit();
			}catch(NullPointerException e) {
				System.out.println("manageDao().updatePorder(int id, Object o)沒抓到資料");
				e.printStackTrace();
			}
		
	}
	
	public static manage manageLogin(String user,String password) {
		Session se=implDao.getSe();
		String HQL="from manage where user='"+user+"'and password='"+password+"'";
		
		Query q1=se.createQuery(HQL);
		
		List<manage> l=q1.list();
		manage[] m=l.toArray(new manage[l.size()]);
		
		try
		{
			if(m[0]!=null)
			{
				return m[0];
			}
			else
			{
				return null;
			}
		}
		catch(ArrayIndexOutOfBoundsException e)
		{
			return null;
		}
	}

}
