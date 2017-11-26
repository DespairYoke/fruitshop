package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Shopcart;
import util.DBUtil;

public class buyDao {
	/**
	 * �¼��빺�ﳵ��Ʒ��Ϣ
	 */
		public void save(Shopcart shop) {
			Connection conn=null;
			try {
				conn=DBUtil.getConnection();
				String sql="insert into shoppcar values(shoppcar_seq.nextval,?,?,?,?)";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,shop.getUname());
				ps.setString(2,shop.getName());
				ps.setString(3,shop.getPath());
				ps.setDouble(4,shop.getPrice());
				ps.executeUpdate();
			}  catch (SQLException e1) {
				//����1.����־(�����ֳ�)
				e1.printStackTrace();
				/*
				 * ����2.���쳣�ܷ�ָ�.������ָܻ�,�����ݿ����,�����жϳ�Ϊϵͳ�쳣,
				 * Ҫ��ʾ�û��Ժ�����.
				 * ����ܹ��ָ�,�������ָ�
				 */
				throw new RuntimeException("数据异常", e1);
				} finally {
					DBUtil.close(conn);
				}
		}
		/**
		 * �鹺�ﳵ�б���
		 */
		public List<Shopcart> findAll(){
			Connection conn=null;
			List<Shopcart> list=new ArrayList<Shopcart>();
			try {
				conn=DBUtil.getConnection();
				String sql="select uname,name,path,price from shoppcar";
				PreparedStatement ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					Shopcart e=new Shopcart();
					e.setUname(rs.getString("uname"));
					e.setName(rs.getString("name"));
					e.setPath(rs.getString("path"));
					e.setPrice(rs.getDouble("price"));
					list.add(e);
				}
				
			} catch (SQLException e1) {
				//����1.����־(�����ֳ�)
				e1.printStackTrace();
				/*
				 * ����2.���쳣�ܷ�ָ�.������ָܻ�,�����ݿ����,�����жϳ�Ϊϵͳ�쳣,
				 * Ҫ��ʾ�û��Ժ�����.
				 * ����ܹ��ָ�,�������ָ�
				 */
				throw new RuntimeException("数据异常", e1);
				} finally {
					DBUtil.close(conn);
				}
			return list;
			
		}
}
