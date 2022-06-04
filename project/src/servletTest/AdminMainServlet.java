package servletTest;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminMainServlet extends HttpServlet {

	List<ProductVO> list;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao = new Dao();

		
		list = dao.adminMain();

		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);

		
	}
}
