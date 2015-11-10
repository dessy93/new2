/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ivan93
 */
public class CategoryService {
    public void add(CategoryModel c){
        Connection conn=DB.createConn();
        String sql="insert into _category values(null,?,?,?)";
        PreparedStatement ps=DB.prepare((com.mysql.jdbc.Connection) conn, sql);
        
        try {
            ps.setString(1, c.getName());
             ps.setString(2, c.getDescription());
               ps.setString(3, c.getContext());
             System.out.println(c.getContext());
              ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryService.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        DB.close(ps);
        DB.close((com.mysql.jdbc.Connection) conn);
       
    }
    public List<CategoryModel> list(){
        
     Connection conn = DB.createConn();
		String sql = "select * from _category";
		PreparedStatement ps = DB.prepare((com.mysql.jdbc.Connection) conn, sql);
		List<CategoryModel> categories = new ArrayList<CategoryModel>();
		try {
			ResultSet rs = ps.executeQuery();
			CategoryModel c = null;
			while(rs.next()) {
				c = new CategoryModel();
                                c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setDescription(rs.getString("description"));
                                c.setContext(rs.getString("context"));
				categories.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close((com.mysql.jdbc.Connection) conn);
		return categories;

    }
    
    public void delete(CategoryModel c){
       deleteById(c.getId());
    }
    
    public void deleteById(int id){
        Connection conn = DB.createConn();
		String sql = "delete from _category where id = ?";
		PreparedStatement ps = DB.prepare((com.mysql.jdbc.Connection) conn, sql);
		try {
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close((com.mysql.jdbc.Connection) conn);
    }
    
    public void  update(CategoryModel c){
        		Connection conn = DB.createConn();
		String sql = "update _category set name = ?, description = ?,context=? where id = ?";
		PreparedStatement ps = DB.prepare((com.mysql.jdbc.Connection) conn, sql);
		try {
			ps.setString(1, c.getName());
			ps.setString(2, c.getDescription());
                        ps.setString(3,c.getContext());
			ps.setInt(4, c.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close((com.mysql.jdbc.Connection) conn);
    }
    
    public CategoryModel loadById(int id){
         Connection conn = DB.createConn();
		String sql = "select * from _category where id=?";
		PreparedStatement ps = DB.prepare((com.mysql.jdbc.Connection) conn, sql);
		CategoryModel c=null;
		try {
                    ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				c = new CategoryModel();
                                c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setDescription(rs.getString("description"));
                                c.setContext(rs.getString("context"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close((com.mysql.jdbc.Connection) conn);
		return c;
        
    }
}
