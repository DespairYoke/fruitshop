package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.shopperDao;
import entity.Shopper;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	
	/*获取参数值*/
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//request.setCharacterEncoding("");
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		System.out.println("uname:"+uname+",pwd:"+pwd);
		List<Shopper> list;
		shopperDao dao=new shopperDao();
		list=dao.findShopper();
		for (Shopper shopper:list) {
			if(shopper.getUname().equals(uname)&&shopper.getPwd().equals(pwd))
			{
				//登陆成功
				shopper=dao.findByUName(uname);
				HttpSession session=request.getSession();
				session.setAttribute("shopper", shopper);
				request.getRequestDispatcher("home3.jsp").forward(request, response);
				return;
			}
		}
		System.out.println(232);
		request.setAttribute("msg", "密码错误！");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
