package domain;

import java.util.LinkedHashMap;
import java.util.Map;

import model.product;

//�Τ᪺�ʪ���
public class Cart {
	
	private Map<String,CartItem> map=new LinkedHashMap();
	private int price; //�ʪ����Ҧ��ӫ~�h�ֿ�
	
	public void add(Book book) {
		//���ʪ��������S�� �n�K�[���ѹ������ʪ���
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
