package com.niit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Dao.CartDao;
import com.niit.Dao.MoviesDao;
import com.niit.Dao.UserDao;
import com.niit.pojo.Cart;
import com.niit.pojo.CartItem;
import com.niit.pojo.Movies;
import com.niit.pojo.User;

@Controller
public class CartConroller {

	@Autowired
	UserDao userDao;
	
	@Autowired
    CartDao cartDao;
	@Autowired
	MoviesDao moviesDao;
	
	@RequestMapping(value="/Cart")
	public String getCart(Principal principal, Model model) {
		
		User user = userDao.getUserByUsername(principal.getName());
		Cart cart = cartDao.getCartByUser(user);
		model.addAttribute("cart", cart);
		return "Cart";
	}
	
	@RequestMapping(value="/add/to/cart/{id}")
	public String addtoCart(@PathVariable int id,Model model,Principal principal){
		System.out.println("....exception");
		User user = userDao.getUserByUsername(principal.getName());
	     Movies movies=moviesDao.getMoviesById(id);
	     Cart cart = cartDao.getCartByUser(user);
	     boolean found=false;
	     List<CartItem> cartItems;
		 if((cart)==null){
			   cart = new Cart();
			CartItem cartItem = new CartItem();
			cartItem.setMovies(movies);
			cartItem.setQuantity(1);
			cartItem.setSubTotal(movies.getMoviesprice());
			cartItems = new ArrayList<CartItem>();
			cartItems.add(cartItem);
			cart.setCartItems(cartItems);
			cart.setUser(user);
			cart.setGrandTotal(cartItem.getSubTotal());
			cartDao.addCartItem(cart);
			
		 }else {
			 for (CartItem cartitem : cart.getCartItems()) {
					if (cartitem.getMovies().getId() ==id ) {
						cartitem.setQuantity(cartitem.getQuantity() + 1);
						cartitem.setSubTotal(cartitem.getQuantity() * cartitem.getMovies().getMoviesprice());
						cart.setGrandTotal(cart.getGrandTotal() + cartitem.getMovies().getMoviesprice());
						   found = true; 
					}
			 }
				
					if (!found) {
					CartItem cartItem = new CartItem();
					cartItem.setMovies(movies);
					cartItem.setQuantity(1);
					cartItem.setSubTotal(movies.getMoviesprice());
					cart.getCartItems().add(cartItem);
					cart.setGrandTotal(cart.getGrandTotal() + cartItem.getSubTotal());
					}
					cartDao.addCartItem(cart);
			 }
			 model.addAttribute("Cart", cart);
				return "Cart";
			 
		 }
		 @RequestMapping(value =  "/checkout" )
			public String getpage() {
				return "ShippingAddress";
		 
		}
	
	@RequestMapping("/delete/cartItem/{id}")
	public String deleteCartItem(@PathVariable int id, Principal principal, Model model) {

		CartItem cartItem = cartDao.getCartItemById(id);
		User user = userDao.getUserByUsername(principal.getName());
		Cart cart = cartDao.getCartByUser(user);
		cartDao.removeCartItem(cart, cartItem);
		model.addAttribute("cart", cart);
		return "redirect:/Cart";
	}
}
