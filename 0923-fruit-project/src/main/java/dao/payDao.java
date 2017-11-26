package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import entity.Order;
import util.DBUtil;

public class payDao {
	public void save(Order order)
	{
		Connection conn=null;
		try {
			conn=DBUtil.getConnection();
			String sql="insert into fruitorder values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, order.getUname());
			ps.setDouble(2,order.getPrice());
			ps.setString(3, order.getAddress());
			ps.setLong(4, order.getPhone());
			ps.executeUpdate();
		}  catch (SQLException e1) {
			e1.printStackTrace();
			throw new RuntimeException("数据异常", e1);
			} finally {
				DBUtil.close(conn);
			}
	}
}
