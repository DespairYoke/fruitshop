package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.shopperDao;
import entity.Shopper;

public class Update extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//编码格式
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		
		String uname=(String) session.getAttribute("uname");
		String pwd=(String) session.getAttribute("pwd");
		System.out.println("uname:"+uname+",pwd:"+pwd);
		String gender=(String) session.getAttribute("gender");
		long phone=Long.parseLong((String) session.getAttribute("phone"));
		String address=(String) session.getAttribute("address");
		long cardnum=Long.parseLong((String) session.getAttribute("cardnum")); 
		shopperDao dao=new shopperDao();
		Shopper shopper=new Shopper();
		shopper.setUname(uname);
		shopper.setPwd(pwd);
		shopper.setGender(gender);
		shopper.setPhone(phone);
		shopper.setAddress(address);
		shopper.setCardnum(cardnum);
		try {
			dao.update(shopper);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
			out.println("系统繁忙，稍后重试");
		}
	}

}
