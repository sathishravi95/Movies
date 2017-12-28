package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.MoviesDao;
import com.niit.pojo.Movies;

@Transactional
@Repository("moviesDao")
public class MoviesDaoImpl implements MoviesDao {
	@Autowired
	SessionFactory sessionFactory;

	public void addMovies(Movies movies) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(movies);
		transaction.commit();
		session.close();

	}

	 public Movies getMoviesById(int id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		Movies a1 = new Movies();
		a1 = session.get(Movies.class, id);
		transaction.commit();
		session.close();
		return a1;
	}

	
	public List<Movies> getallMovies() {
		Session session = sessionFactory.openSession();
		List<Movies> b1 = session.createQuery("from Movies", Movies.class).list();
		session.close();
		return b1;

	}

	

	public void deleteMovies(int id) {
    Session session = sessionFactory.openSession();
	Transaction transaction = (Transaction) session.beginTransaction();
	session.delete(getMoviesById(id));
	transaction.commit();
	session.close();
	
	}
}
