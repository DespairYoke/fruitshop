package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.buyDao;
import dao.fruitDao;
import entity.Fruit;
import entity.Shopcart;
import entity.Shopper;

public class Add_shopper extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String shopper_name=req.getParameter("name");
		System.out.println(shopper_name+"111");
		fruitDao fdao=new fruitDao();
		List list=fdao.searchFruit(shopper_name);
		System.out.println(list);
		Fruit f=(Fruit) list.get(0);
		HttpSession session=req.getSession();
		Shopper shopper=(Shopper) session.getAttribute("shopper");
		System.out.println("zwdmy"+shopper);
		Shopcart shopcart=new Shopcart();
		shopcart.setUname(shopper.getUname());
		shopcart.setName(f.getName());
		shopcart.setPrice(f.getPrice());
		shopcart.setPath(f.getPath());
		buyDao bdao=new buyDao();
		bdao.save(shopcart);
		req.getRequestDispatcher("mangguo.jsp").forward(req, resp);
	}
}
