package lab.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/header")
public class HeaderInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HeaderInfo() {
        super();
    
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head><title>Request Header정보</title><head>");
		out.print("<body>");
		out.print("<h3>Request Header정보</h3>");
		out.print("<ul>");
		Enumeration<String> headerName = request.getHeaderNames();
		while(headerName.hasMoreElements()) {
			String name = headerName.nextElement();
			out.print("<li>" + name + ":");
			Enumeration<String> values = request.getHeaders(name);
			while(values.hasMoreElements()) {
				out.print(values.nextElement() + ", ");
			}
			out.print("</li>");
		}
		out.print("<li>요청 메소드:"+request.getMethod()+"</li>");
		out.print("<li>요청한 client의 ip:" +request.getRemoteAddr()+"</li>");
		out.print("<li>ContextPath:"+request.getContextPath()+"</li>");
		out.print("<li>RequestURI:"+request.getRequestURI()+"</li>");
		out.print("<li>RequestURL:"+request.getRequestURL()+"</li>");
		out.print("<li>ServletPath:"+request.getServletPath()+"</li>");
		out.print("</body></html>");
	}

}
