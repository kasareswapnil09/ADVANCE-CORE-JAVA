package img;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.lang.*;

import javax.servlet.http.Cookie;


 
public class RegisterDao {
 private String dburl = "jdbc:mysql://localhost:3306/imageuploader";
 private String dbuname = "root";
 private String dbpassword = "";
 private String dbdriver = "com.mysql.cj.jdbc.Driver";
 
 public void loadDriver(String dbDriver)
 {
 try {
 Class.forName(dbDriver);
 } catch (ClassNotFoundException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
 }
 public Connection getConnection() {
 Connection con = null;
 try {
 con = DriverManager.getConnection(dburl, dbuname, dbpassword);
 } catch (SQLException e) {
 // TODO Auto-generated catch block
 e.printStackTrace();
 }
 return con;
 }
 
 public String insert(User member) {
 loadDriver(dbdriver);
 Connection con = getConnection();
 String sql = "insert into member values(?,?,?,?)";
 String result="Data Entered Successfully";
 try {
 PreparedStatement ps = con.prepareStatement(sql);
 ps.setString(1, member.getUname());
 ps.setString(2, member.getPassword());
 ps.setString(3, member.getEmail());
 ps.setNString(4, member.getPhone());
 ps.executeUpdate();
 } catch (SQLException e) {
 result="Data Not Entered Successfully";
 e.printStackTrace();
 }
 return result;
 }
 
 public String checkLogin(String name, String pass) {
	 String sqlname="";
	 String sqlpass="";
	 loadDriver(dbdriver);
	 Connection con = getConnection();
	 String sql = "select * from member where name=? and pass=?";
	 try {
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setString(1, name);
		 ps.setString(2, pass);
		 ResultSet rs1 = ps.executeQuery();
		 
		if (rs1.next()) {
				sqlname = rs1.getString("name");
				sqlpass = rs1.getString("pass");	
		}
		if (name.equals(sqlname)&&pass.equals(sqlpass)) {  
            return "Successful";
        }
		else {
			return "Unsuccessful";
		}
		 
	} catch (Exception e) {
		e.printStackTrace();
	}
	 
	 return "";
 }
 
 public String updateDetails(User obj, String cname, String cpass) {
	loadDriver(dbdriver);
	Connection con = getConnection();
	String sql = "update member set name=?, pass=?, email=?, phone=? where name=? and pass=?";
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, obj.getUname());
		ps.setString(2, obj.getPassword());
		ps.setString(3, obj.getEmail());
		ps.setString(4, obj.getPhone());
		ps.setString(5, cname);
		ps.setString(6, cpass);
		ps.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
		return "Details not updated.";
	}
	return "Details updated successfully";
 }
 
	public User getUserDetails(String name) {
		String sqlname="";
		String sqlpass="";
		String sqlemail="";
		String sqlphone="";
		User obj = null;
		loadDriver(dbdriver);
		Connection con = getConnection();
		String sql = "select * from member where name=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				sqlname = rs.getString("name");
				sqlpass = rs.getString("pass");
				sqlemail = rs.getString("email");
				sqlphone = rs.getString("phone");
			}
			
			obj = new User(sqlname,sqlpass,sqlemail,sqlphone);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return obj;
	}
	public String deleteUser(String cname) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		String sql = "delete from member where name=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cname);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return "User not deleted";
		}
		
		return "User deleted successfully";
	}
}