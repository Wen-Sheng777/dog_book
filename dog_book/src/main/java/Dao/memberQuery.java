package Dao;

import org.hibernate.Session;

import java.util.List;

import org.hibernate.Query;

import model.member;

public class memberQuery extends memberDao{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	public static member memberLogin2(String user,String password) {
		Session se=implDao.getSe();
		String HQL="from member where user='"+user+"'and password='"+password+"'";
		
		Query q1=se.createQuery(HQL);
		
		List<member> l=q1.list();
		member[] m=l.toArray(new member[l.size()]);
		
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
