package org.dimigo.service;

import java.sql.Connection;
import java.util.List;

import org.dimigo.dao.UserDao;
import org.dimigo.vo.UserVO;

public class UserService extends AbstractService {
	
	public UserVO login(UserVO user) throws Exception {
		
		Connection conn = null;
		
		try {
			conn = getConnection();
			
			UserDao dao = new UserDao(conn);
			UserVO result = dao.searchUser(user);
			
			System.out.println(result);
			
			if(result == null)
				throw new Exception("Invalid username or password.");
			
			return result;
			
		} finally {
			if(conn != null) conn.close();
		}
		
	}
	
	public List<UserVO> searchUserList() throws Exception {
		
		Connection conn = null;
		
		try {
			conn = getConnection();
			
			UserDao dao = new UserDao(conn);
			return dao.searchUserList();
			
		} finally {
			if(conn != null) conn.close();
		}
	}
	
	public void signup(UserVO user) throws Exception {
		Connection conn = null;
		try {
			conn = getConnection();
			
			UserDao dao = new UserDao(conn);
			
			UserVO result = dao.searchUserById(user);
			if(result != null)
				throw new Exception("문제가 발생하였습니다.");
			
			dao.insertUser(user);
			
		} finally {
			if(conn != null) conn.close();
		}
	}
	
}
