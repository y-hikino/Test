package practice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/chat")
public class ChatServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ

		String name = req.getParameter("name");
		String message =req.getParameter("message");

		HttpSession session = req.getSession();

		List<MessageBean> messageList= (List<MessageBean>)session.getAttribute("messageList");
		if(messageList ==null) {
			messageList = new ArrayList();
			session.setAttribute("messageList", messageList);
		}

		MessageBean mb = new MessageBean(name, message);
		messageList.add(mb);
		req.getRequestDispatcher("/practice/chat.jsp").forward(req, resp);

	}
}
