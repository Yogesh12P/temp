package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		if (validate.checkUser(email, pass)) 
		{
			out.print("<html><body>");
			out.print("<h3>Well-Come</h3>");
			out.print("</body></html>");
		} 
		else
		{
			out.print("<html><body>");
			out.print("<h3>Incorrect</h3>");
			out.print("</body></html>");
		}*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		out.print("<h3>Hello Servlet</h3>");
		out.print("</body></html>");
	}
		
	

}
	
	

