package domain;

import model.product;

//某個商品,以及商品出現的次數(購物項)
public class CartItem {
	
	private Book book;	
	private int quantity;
	private double price;
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
		
		this.price=this.book.getPrice() * this.quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	

}
