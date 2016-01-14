package dao;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.Book;
import util.HibernateUtils;

public class Book_Dao{

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory();

	@SuppressWarnings("unchecked")
	public List<Book> getAllBook() {
		org.hibernate.Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Book> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Book").list();
			tx.commit();
			
		} catch (HibernateException e) {
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
			
		}finally{
			session.close();
		}
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Book> getRecomendedBook()
	{
		org.hibernate.Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Book> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Book").list();
			tx.commit();
			
		} catch (HibernateException e) {
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
			
		}finally{
			session.close();
		}
		return list;
	}
}
