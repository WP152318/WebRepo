package org.dimigo.service;

import java.sql.Connection;
import java.util.List;

import org.dimigo.dao.ListDao;
import org.dimigo.vo.ListVO;

public class ListService extends AbstractService {
	

	
	public List<ListVO> list() throws Exception {
		
		Connection conn = null;
		
		try {
			conn = getConnection();
			
			ListDao dao = new ListDao(conn);
			return dao.search();
			
		} finally {
			if(conn != null) conn.close();
		}
	}

	public void registration(ListVO list) throws Exception {
		Connection conn = null;
		try {
			conn = getConnection();
			
			ListDao dao = new ListDao(conn);
			
			
			dao.insertList(list);
			
		} finally {
			if(conn != null) conn.close();
		}
		
	}
	
	
}
