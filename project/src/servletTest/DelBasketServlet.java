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

public class DelBasketServlet extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao = new Dao();
		HttpSession session = request.getSession();
		
		String IDXS = request.getParameter("IDX");
		String[] arr_IDXS = IDXS.split(",");
		
		String WEB_ID = (String) session.getAttribute("WEB_ID");
		ProductVO param = new ProductVO();
		param.setWEB_ID(WEB_ID);
		for(int i=0; i<arr_IDXS.length; i++){
			param.setIDX(Integer.parseInt(arr_IDXS[i]));
			dao.delBasket(param);
		}
		RequestDispatcher rd = request.getRequestDispatcher("basket");
		rd.forward(request, response);

		
	}
}
