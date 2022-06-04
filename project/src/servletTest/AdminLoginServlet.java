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

public class AdminLoginServlet extends HttpServlet {

	List<UserVO> list;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao = new Dao();


		String WEB_ID = request.getParameter("WEB_ID");
		String WEB_PW = request.getParameter("WEB_PW");
		UserVO param = new UserVO();
		param.setWEB_ID(WEB_ID);
		param.setWEB_PW(WEB_PW);
		
		
		

		
		
		list = dao.adminLoginUser(param);

		if(list.size()==0){
			response.sendRedirect("./index.jsp");
		}else{
			HttpSession session = request.getSession();
			
			session.setAttribute("WEB_ID", list.get(0).getWEB_ID());

			response.sendRedirect("main");
		}

		
	}
}
