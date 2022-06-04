package servletTest;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AddProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao = new Dao();

		String uploadPath = request.getRealPath("upload");

		int size = 10 * 1024 * 1024;
		String name = "";
		String subject = "";
		String filename1 = "";

		try {
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8",
					new DefaultFileRenamePolicy());

			Enumeration files = multi.getFileNames();
			String file1 = (String) files.nextElement();
			filename1 = multi.getFilesystemName(file1);
			ProductVO param = new ProductVO();
			String NAME = multi.getParameter("NAME");
			String IMAGE_URL = filename1;
			String PRICE = multi.getParameter("PRICE");
			String SEX_CODE = multi.getParameter("SEX_CODE");
			String CONTENTS = multi.getParameter("CONTENTS");
			param.setNAME(NAME);
			param.setIMAGE_URL(IMAGE_URL);
			param.setPRICE(Integer.parseInt(PRICE));
			param.setSEX_CODE(SEX_CODE);
			param.setCONTENTS(CONTENTS);
			
			dao.addProduct(param);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		response.sendRedirect("main");
	}
}
