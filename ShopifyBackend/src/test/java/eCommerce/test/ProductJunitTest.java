package eCommerce.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import eCommerce.DAO.ProductDAO;
import eCommerce.model.Product;



public class ProductJunitTest {

	static ProductDAO productDAO;

	@BeforeClass
	public static void executeFirst() 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("eCommerce");
		context.refresh();
		
		productDAO = (ProductDAO)context.getBean("productDAO");
	}

	@Test
	public void addProductTest() 
	{
		Product product = new Product();
		product.setProductName("Levi's TShirt");
		product.setProductDesc("Levi's Brand TShirts");
		product.setPrice(1600);
		product.setStock(45);
		product.setCategoryId(3);
		product.setSupplierId(1);
		
		assertTrue("Problem in adding Product", productDAO.addProduct(product));
			
	}

}
