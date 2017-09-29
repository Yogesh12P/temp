package login;
import java.sql.*;

public class jdbc 
{

	//this is class for jdbc verification
	
	public static boolean checkUser(String email,String pass)
	{
		boolean rt = false;
		
		try {
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql:/ /localhost:3306/loginUser\",\"root\",\"root");
		PreparedStatement query = conn.prepareStatement("select * from user_Info where EmailId = ? && `Password` = ?");
		
		query.setString(2, email);
		query.setString(3, pass);
		
		ResultSet rs = query.executeQuery();
		
		rt = rs.next();
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception occured at check_user"+e);
		}
		
		return rt;
		
	}
}
