package com.niit.DaoImpl;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CartDao;
import com.niit.pojo.Cart;
import com.niit.pojo.CartItem;
import com.niit.pojo.User;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Cart getCartByUser(User user) {
		try{
			return sessionFactory.getCurrentSession().createQuery("FROM Cart WHERE USER_ID = '"+user.getId()+"'", Cart.class).getSingleResult();
		}catch(Exception e){
			System.out.println(e.getMessage());
			return null;
		}
	}
	public void addCartItem(Cart cart) {
		Session session=sessionFactory.openSession();
		 Transaction transaction = (Transaction) session.beginTransaction();
	     session.saveOrUpdate(cart);
	     transaction.commit();
		 session.close();

	}

	public void removeCartItem(Cart cart, CartItem cartItem) {
		int count = 0;
		for(CartItem car : cart.getCartItems()){
			if (car.getId() == cartItem.getId()) {
			}else{
				count++;
			}
		}
		List <CartItem> cis = cart.getCartItems();
		
		cart.setGrandTotal(cart.getGrandTotal() - cartItem.getSubTotal());
		cis.remove(count);
		cart.setCartItems(cis);
		addCartItem(cart);

	}
		
       
	

	public void deleteCart(Cart cart) {
		Session session=sessionFactory.openSession();
		 Transaction transaction = (Transaction) session.beginTransaction();
	     session.delete(cart);
	     transaction.commit();
		 session.close();


	}

	public CartItem getCartItemById(int id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		CartItem b1 = new CartItem();
		b1 = session.get(CartItem.class,id);
		transaction.commit();
		session.close();
		return b1;
		
	}

}
