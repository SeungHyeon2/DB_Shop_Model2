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

public class BuyListServlet extends HttpServlet {

	List<ProductVO> list;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao = new Dao();
		HttpSession session = request.getSession();
		String WEB_ID = (String) session.getAttribute("WEB_ID");
		ProductVO param = new ProductVO();
		param.setWEB_ID(WEB_ID);
		list = dao.buyList(param);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("buy_list.jsp");
		rd.forward(request, response);

		
	}
}
