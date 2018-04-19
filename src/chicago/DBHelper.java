package chicago;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class DBHelper {

	public static Logger log = LogManager.getLogger(DBHelper.class);

	public Connection connectMe() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/chicagoclass";
		Connection con = DriverManager.getConnection(url, "root", "root123");

		if (con != null) {
			System.out.println("Connected to database...");
		}
		return con;
	}

	public ArrayList<ChicagoUsers> getUsersBranch(String army) throws ClassNotFoundException, SQLException {
		ArrayList<ChicagoUsers> alusers = new ArrayList<>();

		try {
			Connection con = connectMe();
			String sql = "SELECT * FROM chicagoclass WHERE branch=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, army);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ChicagoUsers users = new ChicagoUsers();

				users.setFirstname(rs.getString(1));
				users.setLastname(rs.getString(2));
				users.setBranch(rs.getString(3));
				users.setAge(rs.getString(4));
				alusers.add(users);
			}
		} catch (Exception ex) {
			log.info("This is an info message");
		}
		return alusers;
	}

	public ArrayList<ChicagoUsers> getUsersAge(String age) throws ClassNotFoundException, SQLException {
		ArrayList<ChicagoUsers> alusers = new ArrayList<>();
		Connection con = connectMe();

		String sql = "SELECT * FROM chicagoclass WHERE age=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, age);
		ResultSet rs = ps.executeQuery();

		try {
		while (rs.next()) {
			ChicagoUsers users = new ChicagoUsers();
			users.setFirstname(rs.getString(1));
			users.setLastname(rs.getString(2));
			users.setBranch(rs.getString(3));
			users.setAge(rs.getString(4));
			alusers.add(users);
		}
	} catch (Exception e) {
		con.close();
		ps.close();
		rs.close();
	}
		return alusers;
	}

	public ArrayList<ChicagoUsers> getUsersName(String name) throws ClassNotFoundException, SQLException {
		ArrayList<ChicagoUsers> alusers = new ArrayList<>();
		Connection con = connectMe();

		String sql = "SELECT * FROM chicagoclass WHERE firstname=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ResultSet rs = ps.executeQuery();

		try {
			while (rs.next()) {
				ChicagoUsers users = new ChicagoUsers();
				users.setFirstname(rs.getString(1));
				users.setLastname(rs.getString(2));
				users.setBranch(rs.getString(3));
				users.setAge(rs.getString(4));
				alusers.add(users);
			}
		} catch (Exception e) {
			con.close();
			ps.close();
			rs.close();
		}
		return alusers;
	}
}
