package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// read form fields
		PrintWriter out = response.getWriter();
		
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        System.out.println("username::"+username);
        System.out.println("password::"+password);
        
        System.out.println("check condition"+jdbc.checkUser(username, password));
        
        if (jdbc.checkUser(username, password)) {

        	out.println("Login successfull");
		}
        else
        {
        	out.println("Login unsuccessfull...!!");
        }
	}
	

}

