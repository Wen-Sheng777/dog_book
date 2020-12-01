package service;

import java.util.Map;

import Dao.BookDao;
import domain.Book;
import domain.Cart;
import domain.CartItem;

//業務類,統一對web提供所有服務
public class BusinessService {
	
	private BookDao dao=new BookDao();
	
	public Map getAllBook() {
		
		return dao.getAll();
	}
	
	public Book findBook(String id) {
		
		return dao.find(id);
	}
	
	//刪除購物車中的購物項
	public void deleteCartItem(String id, Cart cart) {
		
		cart.getMap().remove(id);
		
	}

	public void clearCart(Cart cart) {
		cart.getMap().clear();
		
	}

	public void changeItemQuantity(String id, String quantity, Cart cart) {
		
		CartItem item=cart.getMap().get(id);
		item.setQuantity(Integer.parseInt(quantity));
		
	}

}
