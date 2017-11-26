package web;

import java.io.IOException;
import java.io.PrintWriter;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.shopperDao;
import entity.Shopper;





/**
 * 作业
 */
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		//分析请求路径
		String uri=request.getRequestURI();
		//拆解路径
		String action=uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		System.out.println("action:"+action);
		
		String uname=(String) request.getParameter("uname");
		String pwd=(String) request.getParameter("pwd");
		System.out.println("uname:"+uname+",pwd:"+pwd);
		
		
		
		
		if("/login".equals(action)){
			
			shopperDao dao=new shopperDao();
			List<Shopper> list=dao.findShopper();
			for (Shopper shopper:list) {
				if(shopper.getUname().equals(uname)&&shopper.getPwd().equals(pwd))
				{
					request.setAttribute("uname", uname);
					request.setAttribute("pwd", pwd);
					request.getRequestDispatcher("home3.jsp").forward(request, response);
					return;
				}
			}
			
			request.setAttribute("msg", "密码错误！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else if("/regist".equals(action)){
			
			shopperDao dao=new shopperDao();
			Shopper shopper=dao.findByUName(uname);
			
			if(shopper!=null){//用户名已经存在，则提示用户
				request.setAttribute("regist_failed", "用户名已经存在");
				//获得转发器
				request.getRequestDispatcher("register.jsp").forward(request, response);
				
			}else{
				shopper=new Shopper();
				dao.regist(uname,pwd);
				request.getRequestDispatcher("login.jsp").forward(request, response);
		    }

		}else if("/update".equals(action)){
			String gender=request.getParameter("gender");
			long phone=Long.parseLong(request.getParameter("phone"));
			String address=request.getParameter("address");
			long cardnum=Long.parseLong(request.getParameter("cardnum")); 
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
				request.setAttribute("uname", uname);
				request.setAttribute("pwd", pwd);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
			}catch(Exception e){
				e.printStackTrace();
				out.println("系统繁忙，稍后重试");
			}
		}else if("/left".equals(action)){
			String username = request.getParameter("username");
			request.setAttribute("username", username);
			request.getRequestDispatcher("left.jsp").forward(request, response);
		}
		
		
		
		
		
		
	}

}
