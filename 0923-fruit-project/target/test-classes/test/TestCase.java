package test;

import java.sql.Connection;
import java.util.List;

import org.junit.Test;

import dao.fruitDao;
import entity.Fruit;
import util.DBUtil;

public class TestCase {
	@Test
	public void test1(){
		fruitDao dao = new fruitDao();
		List<Fruit>list = dao.searchFruit("橙");
		System.out.println(list);
	}
}
