package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.member;
import model.porder;


public class memberDao implements implDao{

	public static void main(String[] args) {
//		member m = new member();
//		m.setUser("a");
//		new memberDao().add(m);
		member s=new member();
		s.setPassword("222");
		s.setName("111");
		s.setTel("22");
		s.setEmail("22");
		s.setAddress("22");

		
		new memberDao().update(5, s);
	

	}

	@Override
	public void add(Object o) {
		member m=(member)o;
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
	
	public member[] query(int id) {
		Session se=implDao.getSe();
		String HQL="from member where id='"+id+"'";
		
		Query q1=se.createQuery(HQL);
		
		List<porder> l=q1.list();
		member[] s=l.toArray(new member[l.size()]);
		return s;

	}
	

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void update(int id, Object o) {
		try {
			member s2=(member)o;
			
			member s=queryID(id);
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
				System.out.println("memberDao().update(Integer id, Object o)沒抓到資料");
				e.printStackTrace();
			}
		
	}
	public void update(Integer id, Object o) {
		try {
			member s2=(member)o;
			
			member s=queryID(id);
			s.setPassword(s2.getPassword());
			s.setName(s2.getName());
			s.setTel(s2.getTel());
			s.setEmail(s2.getEmail());
			s.setAddress(s2.getAddress());

			Session se=implDao.getSe();
			Transaction tx=se.beginTransaction();
			
			se.update(s2);
			
			tx.commit();
			}catch(NullPointerException e) {
				System.out.println("memberDao().update(Integer id, Object o)沒抓到資料");
				e.printStackTrace();
			}
		
	}

}
