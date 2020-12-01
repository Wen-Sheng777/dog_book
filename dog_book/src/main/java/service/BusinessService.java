package service;

import java.util.Map;

import Dao.BookDao;
import domain.Book;
import domain.Cart;
import domain.CartItem;

//�~����,�Τ@��web���ѩҦ��A��
public class BusinessService {
	
	private BookDao dao=new BookDao();
	
	public Map getAllBook() {
		
		return dao.getAll();
	}
	
	public Book findBook(String id) {
		
		return dao.find(id);
	}
	
	//�R���ʪ��������ʪ���
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
