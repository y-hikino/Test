package introduction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input")
public class InputServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ
		req.setCharacterEncoding("UTF-8");
//		resp.setCharacterEncoding("Windows-31J");
		String data = req.getParameter("data");
		req.setAttribute("data", data);


		RequestDispatcher dis = req.getRequestDispatcher("/practice/result.jsp");
		dis.forward(req, resp);
	}
}
