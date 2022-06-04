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

public class ModifyServlet extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao = new Dao();

		HttpSession session = request.getSession();
		String WEB_ID = (String) session.getAttribute("WEB_ID");
		UserVO param = new UserVO();
		param.setWEB_ID(WEB_ID);
		
		UserVO vo = dao.getUser(param);
		
		request.setAttribute("vo", vo);
		RequestDispatcher rd = request.getRequestDispatcher("modify.jsp");
		rd.forward(request, response);
	
	}
}
