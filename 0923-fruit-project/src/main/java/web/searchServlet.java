package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.fruitDao;
import entity.Fruit;



public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
		
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#service(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;utf-8");
			String name = request.getParameter("index_none_header_sysc");
			System.out.println(name);
			fruitDao dao = new fruitDao();
			System.out.println(11111);
			try {
				List<Fruit> list = new ArrayList<Fruit>();
				System.out.println(new Fruit());
				list = dao.searchFruit(name);
				System.out.println(list);
			
				HttpSession session = request.getSession();
				session.setAttribute("list", list);
				
				response.sendRedirect("search.jsp");
				
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			
	}

}
