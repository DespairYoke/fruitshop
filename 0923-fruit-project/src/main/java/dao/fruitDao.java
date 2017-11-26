package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Fruit;
import util.DBUtil;

public class fruitDao {
	
	/**
	 * 模糊查询水果
	 */
	public List<Fruit> searchFruit(String name){
		List<Fruit>list = new ArrayList<Fruit>();
		Connection conn=null;
		
		try {
			conn=DBUtil.getConnection();
			String sql = "select * from fruit where name like?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, "%"+name+"%");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				Fruit f = new Fruit();
				f.setName(rs.getString("name"));
				f.setPrice(rs.getDouble("price"));
				f.setSellprice(rs.getDouble("sellprice"));
				f.setNum(rs.getInt("num"));
				f.setEvaluate(rs.getString("evaluate"));
				f.setCount(rs.getInt("count"));
				f.setPath(rs.getString("path"));
				f.setAdmin_name("admin_name");
				f.setHref(rs.getString("href"));
				list.add(f);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			DBUtil.close(conn);
		}
		return list;
		
	}
	

}
