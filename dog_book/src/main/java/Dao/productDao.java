package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.member;
import model.product;

public class productDao implements implDao{

	public static void main(String[] args) {
		//product p = new product();
//		p.setName("spring開發");
//		p.setAuthor("老豬");
//		p.setPrice(400);
//		p.setDescription("一本好書");
//		p.setQuantity(55);
		
		//new productDao().add(p);
		
		product[] s=new productDao().query();
		for(int i=0;i<s.length;i++)
		{
			
			System.out.println(s[i].getId()+"."+
							s[i].getName()+","+
							s[i].getAuthor()+","+
							s[i].getPrice()+","+
							s[i].getDescription()+","+
							s[i].getQuantity());
		}
	}


	@Override
	public void add(Object o) {
		product p=(product)o;
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
	
	public product[] query() {
		Session se=implDao.getSe();
		String HQL="from product";
		
		Query q1=se.createQuery(HQL);
		
		List<product> l=q1.list();
		product[] p=l.toArray(new product[l.size()]);
		return p;
		
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
