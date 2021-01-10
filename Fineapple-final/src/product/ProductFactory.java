package product;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;

public class ProductFactory {
	private static SqlSessionFactory factory;
	
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("product/config.xml");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
