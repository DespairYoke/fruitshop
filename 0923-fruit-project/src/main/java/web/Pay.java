package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.payDao;
import entity.Order;
import entity.Shopper;

public class Pay extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(11);
		double price = Double.parseDouble(req.getParameter("price"));
		System.out.println(price+"22");
		HttpSession session=req.getSession();
		Shopper shopper=(Shopper) session.getAttribute("shopper");
		System.out.println(shopper);
		payDao pdao=new payDao();
		Order order=new Order();
		order.setUname(shopper.getUname());
		order.setPrice(price);
		order.setAddress(shopper.getAddress());
		order.setPhone(shopper.getPhone());
		System.out.println(order);
		session.setAttribute("order",order);
		pdao.save(order);
		req.getRequestDispatcher("pay.jsp").forward(req, resp);
}
}
