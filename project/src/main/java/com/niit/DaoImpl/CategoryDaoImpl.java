package com.niit.DaoImpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CategoryDao;
import com.niit.pojo.Category;
import com.niit.pojo.Movies;

    @Repository
	@Transactional
	public class CategoryDaoImpl implements CategoryDao {
		@Autowired
		private SessionFactory sessionFactory;
			
			public void addCategory(Category category) {
			 Session session=sessionFactory.openSession();
			 Transaction transaction = (Transaction) session.beginTransaction();
		     session.saveOrUpdate(category);
		     transaction.commit();
			 session.close();

			}

		public List<Category> getAllCategory() {
			Session  session=sessionFactory.openSession();
			List<Category> c2=session.createQuery("from Category", Category.class).list();
			session.close();
			return c2;

		}

		public Category getCategoryById(int id) {
			Session session = sessionFactory.openSession();
			Transaction transaction = (Transaction) session.beginTransaction();
			Category a1 = new Category();
			a1 = session.get(Category.class,id);
			transaction.commit();
			session.close();
			return a1;
		}

		public void deleteCategory(int id) {
			Session session = sessionFactory.openSession();
			Transaction transaction = (Transaction) session.beginTransaction();
			session.delete(getCategoryById(id));
			transaction.commit();
			session.close();
			
			}
			
		}

	

