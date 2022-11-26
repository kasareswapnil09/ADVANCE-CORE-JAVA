package img;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String name=request.getParameter("name");  
        String pass=request.getParameter("pass");
        RegisterDao rdao=new RegisterDao();
        String result = rdao.checkLogin(name, pass);
        if(result.equals("Successful")) {
        	
        	User obj = rdao.getUserDetails(name);

        	Cookie cname=new Cookie("name",obj.getUname());
        	Cookie cpass=new Cookie("pass",obj.getPassword());
        	Cookie cemail=new Cookie("email",obj.getEmail());
        	Cookie cphone=new Cookie("phone",obj.getPhone());
        	
        	response.addCookie(cname);
        	response.addCookie(cpass);
        	response.addCookie(cemail);
        	response.addCookie(cphone);
        	
        	response.sendRedirect("Profile.jsp");
        }
        else{
        	pw.print("Sorry, Username or Password is incorrect!");
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
