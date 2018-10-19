package kr.or.kosta.jsp.blog.Common;

import java.lang.reflect.Method;

import javax.sql.DataSource;

import kr.or.kosta.blog.GuestBook.GuestBookDao;
import kr.or.kosta.blog.GuestBook.JdbcGuestBookDao;
import kr.or.kosta.blog.User.JdbcUserDao;
import kr.or.kosta.blog.User.UserDao;

public class JdbcDaoFactory extends DaoFactory {

	@Override
	public UserDao getUserDao() {
		UserDao dao = new JdbcUserDao();
		Class cls = dao.getClass();
		
		// 동적 메소드호출
		Method method;
		try {
			method = cls.getMethod("setDataSource", DataSource.class);
			method.invoke(dao, createDataSource());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dao;
	}

	@Override
	public GuestBookDao getGuestBookDao() {
		
		GuestBookDao dao = new JdbcGuestBookDao(); 
		Class cls = dao.getClass();
		
		Method method; 
		
		try {
			method = cls.getMethod("setDataSource", DataSource.class);
			method.invoke(dao, createDataSource());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dao; 
	}
	
	
	
	
	
//	public BarDao getBarDao() {...};
//	public FooDao getFooDao() {...};

}
