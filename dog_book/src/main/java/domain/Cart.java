package domain;

import java.util.LinkedHashMap;
import java.util.Map;

import model.product;

//用戶的購物車
public class Cart {
	
	private Map<String,CartItem> map=new LinkedHashMap();
	private int price; //購物車所有商品多少錢
	
	public void add(Book book) {
		//看購物車中有沒有 要添加的書對應的購物項
	CartItem item=map.get(book.getId());

		
		if(item==null) {
			item=new CartItem();
			item.setBook(book);
			item.setQuantity(1);
			map.put(book.getId(), item);
		}else {
			item.setQuantity(item.getQuantity()+1);
		}
		
	}
	
	public Map<String, CartItem> getMap() {
		return map;
	}
	public void setMap(Map<String, CartItem> map) {
		this.map = map;
	}
	public int getPrice() {
		int totalprice=0;
		for(Map.Entry<String, CartItem> entry:map.entrySet()) {
			CartItem item =entry.getValue();
			totalprice+=item.getPrice();
		}
		this.price=totalprice;
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
