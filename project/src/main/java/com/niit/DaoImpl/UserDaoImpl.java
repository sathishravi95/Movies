package com.niit.DaoImpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.pojo.User;

@Repository("UserDao")
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;

	public void addUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.persist(user);
		transaction.commit();
		session.close();

	}

	public User getUserById(int id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		User a1 = new User();
		a1 = session.get(User.class, id);
		transaction.commit();
		session.close();
		return a1;
	}

	public List<User> getallUser() {
		Session session = sessionFactory.openSession();
		List<User> b1 = session.createQuery("from User", User.class).list();
		session.close();
		return b1;
	}

	public void updateUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.update(user);
		transaction.commit();
		session.close();

	}

	public User getUserByUsername(String username) {
		Session session =sessionFactory.openSession();
			User b1=(User) session.createQuery("FROM User WHERE username = '" + username + "'").uniqueResult();
			session.close();
		return b1;
	}

}
