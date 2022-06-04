package servletTest;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;

public class Dao {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	

	public Dao() {

		sqlsession = sessionf.openSession(true); // true 로 할시 자동 commit
	}



	public List<UserVO> loginUser(UserVO param) {
		// TODO Auto-generated method stub
		List<UserVO> list;
		list = sqlsession.selectList("loginUser",param);

		return list;
	}

	public void joinUser(UserVO param) {
		// TODO Auto-generated method stub
		sqlsession.insert("joinUser", param);
		
	}

	public List<ProductVO> productList() {
		// TODO Auto-generated method stub
		List<ProductVO> list;
		list = sqlsession.selectList("productList");

		return list;
	}



	public List<ProductVO> buyList(ProductVO param) {
		// TODO Auto-generated method stub
		List<ProductVO> list;
		list = sqlsession.selectList("buyList",param);

		return list;
	}



	public List<ProductVO> basketList(ProductVO param) {
		// TODO Auto-generated method stub
		List<ProductVO> list;
		list = sqlsession.selectList("basketList",param);

		return list;
	}



	public ProductVO product(ProductVO param) {
		// TODO Auto-generated method stub
		ProductVO vo;
		vo = sqlsession.selectOne("product",param);

		return vo;
	}



	public void addBasket(ProductVO param) {
		// TODO Auto-generated method stub
		sqlsession.insert("addBasket", param);
	}



	public void buyProduct(ProductVO param) {
		// TODO Auto-generated method stub
		sqlsession.insert("buyProduct", param);
	}



	public UserVO getUser(UserVO param) {
		// TODO Auto-generated method stub
		UserVO vo;
		vo = sqlsession.selectOne("getUser",param);

		return vo;
	}



	public void updateUser(UserVO param) {
		// TODO Auto-generated method stub
		sqlsession.update("updateUser", param);
	}



	public void delBasket(ProductVO param) {
		// TODO Auto-generated method stub
		sqlsession.delete("delBasket", param);
		
	}



	public List<UserVO> adminLoginUser(UserVO param) {
		// TODO Auto-generated method stub
		List<UserVO> list;
		list = sqlsession.selectList("adminLoginUser",param);

		return list;
	}



	public List<ProductVO> adminMain() {
		// TODO Auto-generated method stub
		List<ProductVO> list;
		list = sqlsession.selectList("adminMain");

		return list;
	}



	public void delProduct(ProductVO param) {
		// TODO Auto-generated method stub
		sqlsession.delete("delProduct", param);
	}



	public void addProduct(ProductVO param) {
		// TODO Auto-generated method stub
		sqlsession.insert("addProduct", param);
	}



	public List<ProductVO> OrderList() {
		// TODO Auto-generated method stub
		List<ProductVO> list;
		list = sqlsession.selectList("OrderList");
		return list;
	}
}
