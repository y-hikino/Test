package introduction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ

		String id=req.getParameter("id");
		String password = req.getParameter("password");

		resp.setCharacterEncoding("SHIFT-JIS");
		PrintWriter pw = resp.getWriter();
		pw.println("ログインしました<br>");
		pw.println("入力された情報を表示します<br>");
		pw.println("ID:"+id+" Password:"+password);

	}

}
