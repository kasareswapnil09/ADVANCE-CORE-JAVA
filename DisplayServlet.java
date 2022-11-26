package img;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisplayServlet
 */
@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		System.out.println("In do post of Display Image servlet. ");
		String imageId=request.getParameter("imageId");
		int id=Integer.parseInt(imageId);
		//jdbc code ....
				//database connection code.....
				Connection connection=null;
				int imageId1=0;
				String imgFillName=null;
				
				try
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/imageuploader","root","");
					
					Statement stmt;
					String query="select * from image";
					stmt=connection.createStatement();
					ResultSet rs=stmt.executeQuery(query);
					
					while(rs.next())
					{
						if(rs.getInt("imageId")==id)
						{
							imageId1=rs.getInt("imageId");
							imgFillName=rs.getString("imageFillName");
						}
					}
					
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				
				RequestDispatcher rd;
				request.setAttribute("id", String.valueOf(imageId1));  //value of
				request.setAttribute("img", imgFillName);
				rd=request.getRequestDispatcher("displayImage.jsp");
				rd.forward(request, response);
	}

}
