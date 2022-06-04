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

public class BuyProductsServlet extends HttpServlet {

	List<ProductVO> list;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String WEB_ID = request.getParameter("WEB_ID");
		
		String NAMES = request.getParameter("IDX");
		String[] arr_NAMES = NAMES.split(",");
		
		Dao dao = new Dao();

		ProductVO param = new ProductVO();
		param.setWEB_ID(WEB_ID);
		for(int i=0; i<arr_NAMES.length; i++){
			param.setNAME(arr_NAMES[i]);
			dao.buyProduct(param);
		}
		

		RequestDispatcher rd = request.getRequestDispatcher("index");
		rd.forward(request, response);

		
	}
}
