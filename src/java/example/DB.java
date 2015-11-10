/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ivan93
 */
public class DB {
    
    
    	public static Connection createConn() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		//	conn = DriverManager.getConnection("jdbc:mysql://localhost/bbs2009", "root", "");
                        conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bbs2009?useUnicode=true&characterEncoding=UTF-8", "root", "123");//获取连接  point
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static PreparedStatement prepare(Connection conn, String sql) {
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
	
	public static void close(Connection conn) {
	if(conn==null) return;	
		try {
			conn.close();
			conn = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			stmt.close();
			stmt = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			rs.close();
			rs = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
    
}
