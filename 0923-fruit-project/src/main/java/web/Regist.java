package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.shopperDao;
import entity.Shopper;


public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//编码格式
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		
			String uname=request.getParameter("uname");
			//先查看用户名是否存在
			System.out.println("uname:"+uname);
			shopperDao dao=new shopperDao();
			try {
				Shopper shopper=dao.findByUName(uname);
				
				if(shopper!=null){//用户名已经存在，则提示用户
					request.setAttribute("regist_failed", "用户名已经存在");
					//获得转发器
					request.getRequestDispatcher("register.jsp").forward(request, response);
					
				}else{
					shopper=new Shopper();
					String pwd=request.getParameter("pwd");
					dao.regist(uname,pwd);
					request.getRequestDispatcher("login.jsp").forward(request, response);
			    }
			}catch(Exception e){
				e.printStackTrace();
				out.println("系统繁忙，稍后重试");
			}
       
	}

}
