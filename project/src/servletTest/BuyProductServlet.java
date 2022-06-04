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

public class BuyProductServlet extends HttpServlet {

	List<ProductVO> list;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String WEB_ID = request.getParameter("WEB_ID");
		String NAME = request.getParameter("NAME");
		
		Dao dao = new Dao();

		ProductVO param = new ProductVO();
		param.setWEB_ID(WEB_ID);
		param.setNAME(NAME);
		dao.buyProduct(param);

		RequestDispatcher rd = request.getRequestDispatcher("index");
		rd.forward(request, response);

		
	}
}
