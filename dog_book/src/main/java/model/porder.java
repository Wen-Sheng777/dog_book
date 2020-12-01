package model;

public class porder {
	private Integer id;
	private String name;
	private String tel;
	private String address;
	private Integer product1;
	private Integer product2;
	private Integer product3;
	private Integer product4;
	private Integer product5;
	private Integer sum;
	
	public porder() {}
	public porder(int p1,int p2,int p3,int p4,int p5,String name,String tel,String address,int sum)
	{
		this.product1=p1;
		this.product2=p2;
		this.product3=p3;
		this.product4=p4;
		this.product5=p5;
		
		sum=product1*380+product2*200+product3*350+product4*275+product5*400;
		
		this.name=name;
		this.tel=tel;
		this.address=address;
		
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getProduct1() {
		return product1;
	}
	public void setProduct1(Integer product1) {
		this.product1 = product1;
	}
	public Integer getProduct2() {
		return product2;
	}
	public void setProduct2(Integer product2) {
		this.product2 = product2;
	}
	public Integer getProduct3() {
		return product3;
	}
	public void setProduct3(Integer product3) {
		this.product3 = product3;
	}
	public Integer getProduct4() {
		return product4;
	}
	public void setProduct4(Integer product4) {
		this.product4 = product4;
	}
	public Integer getProduct5() {
		return product5;
	}
	public void setProduct5(Integer product5) {
		this.product5 = product5;
	}
	public Integer getSum() {
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	public int getSum1() {
		sum=product1*380+product2*200+product3*350+product4*275+product5*400;
		return sum;
	}
	

}
