package web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;

/*
 * 요청의 종류
 * 1. view(HTML) 요청 : 무조건 get요청
 * 2. api요청 : CRUD : JavaScript(AJAX 동기, 비동기)
 */

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEP-INF/views/index.jsp");
		//변수에 담지않고 바로 사용하는 형식
		request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
	}

}
