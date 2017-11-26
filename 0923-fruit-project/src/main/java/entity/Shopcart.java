package entity;

public class Shopcart {
	private String uname; //用户姓名
	private String name;  //商品名称
	private String path;  //图片路径
	private double price;   //商品单价
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Shopcart [ uname=" + uname + ", name=" + name + ", path=" + path + ", price=" + price
				+ "]";
	}
	
}
