package introduction;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet(/test)
public class FirstServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServerException,IOException{


		PrintWriter out = response.getWriter();
		out.println("firtst Servlet");
		out.println("<br>");
		out.println("Now time:"
				+ new java.util.Date());
	}
}
