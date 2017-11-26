package test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import dao.fruitDao;
import entity.Fruit;

public class TestCase {
	@Test
	public void test1(){
		fruitDao dao = new fruitDao();
		List<Fruit>list = new ArrayList<Fruit>();
		list = dao.searchFruit("橙");
		System.out.println(list);
		
	}
}
