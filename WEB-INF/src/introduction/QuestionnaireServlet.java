package introduction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quest")
public class QuestionnaireServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ
		req.setCharacterEncoding("Windows-31J");
		resp.setCharacterEncoding("Windows-31J");

		resp.setContentType("text/html");

		PrintWriter out = resp.getWriter();

		out.println("<h3>アンケートの送信ありがとうございます！<br>入力された内容を表示します</h3>");

		Enumeration names = req.getParameterNames();

		while(names.hasMoreElements()) {
			String name= (String)names.nextElement();

			String[] valueArray = req.getParameterValues(name);
			out.println(name+":<br>");
			for(String str:valueArray)out.println("."+str+"<br>");
			out.println("<br><br>");
		}
	}
}
