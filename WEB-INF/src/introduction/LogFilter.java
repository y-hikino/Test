package introduction;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class LogFilter implements Filter {
	private PrintWriter pw;
	@Override
	public void destroy() {
		// TODO 自動生成されたメソッド・スタブ
		System.out.println("LogFilterの後処理を行います");
		pw.close();
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO 自動生成されたメソッド・スタブ
		System.out.println("LogFilterのログ出力処理を行います");
		pw.println("アクセス時刻："+new Date());
		pw.flush();
		arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO 自動生成されたメソッド・スタブ
		System.out.println("LogFilterの初期化処理を行います");
		try {
			String logFilePath =arg0.getServletContext().getRealPath("WEB-INF/access.log");
//			第二引数は何か…追加で書くやつ
			pw =new PrintWriter(new BufferedWriter(new FileWriter(logFilePath,true)));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

}
