package servletTest;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinServlet extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Dao dao = new Dao();
		request.setCharacterEncoding("UTF-8");

		String WEB_ID = request.getParameter("WEB_ID");
		String WEB_PW = request.getParameter("WEB_PW");
		String NAME = request.getParameter("NAME");
		String PHONE = request.getParameter("PHONE");
		String SEX = request.getParameter("SEX");
		String EMAIL = request.getParameter("EMAIL");
		String BIRTH = request.getParameter("BIRTH");

		UserVO param = new UserVO();
		param.setWEB_ID(WEB_ID);
		param.setWEB_PW(WEB_PW);
		param.setNAME(NAME);
		param.setPHONE(PHONE);
		param.setSEX(SEX);
		param.setEMAIL(EMAIL);
		param.setBIRTH(BIRTH);

		dao.joinUser(param);
		
		response.sendRedirect("../index.jsp");

		
	}
}
