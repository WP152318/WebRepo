package org.dimigo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.dimigo.vo.ListVO;

public class ListDao {
	private Connection conn = null;
	
	public ListDao(Connection conn) {
		this.conn = conn;
	}
	
	public ListVO searchList(ListVO vo) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "SELECT * FROM LIST WHERE TITLE=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getText());
			
			rs = pstmt.executeQuery();
			
			ListVO result = null;
			
			if(rs.next()) {
				result = new ListVO();
				result.setTitle(rs.getString(1));
				result.setDate(rs.getString(3));
				result.setDestination(rs.getString(4));
			}
			
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("데이터베이스 연결에 실패하였습니다.");
		} finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
		}
	}
	
	public List<ListVO> search() throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "SELECT TITLE, TEXT, DATE, DESTINATION FROM LIST";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ListVO result = null;
			List<ListVO> list = new ArrayList<>();
			
			while(rs.next()) {
				result = new ListVO();
				result.setTitle(rs.getString(1));
				result.setText(rs.getString(2));
				result.setDate(rs.getString(3));
				result.setDestination(rs.getString(4));
				list.add(result);
			}
			
			return list;
			
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("데이터베이스 연결에 실패하였습니다.");
		} finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
		}
	}

	public void insertList(ListVO vo) throws Exception {
		
		PreparedStatement pstmt = null;
	
		String sql = "INSERT INTO LIST VALUES(?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getText());
			pstmt.setString(3, vo.getDate());
			pstmt.setString(4, vo.getDestination());
			
			// SELECT : executeQuery
			// INSERT, UPDATE, DELETE : executeUpdate
			int cnt = pstmt.executeUpdate();
			
			if(cnt == 0) throw new Exception("등록된 정보가 없습니다.");
			
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("데이터베이스 연결에 실패하였습니다.");
		} finally {
			if(pstmt != null) pstmt.close();
		}
	}
	
	public ListVO searchUserById(ListVO vo) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "SELECT * FROM LIST WHERE ID=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getTitle());
			
			rs = pstmt.executeQuery();
			
			ListVO result = null;
			
			if(rs.next()) {
				result = new ListVO();
				result.setTitle(rs.getString(1));
				result.setDate(rs.getString(3));
				result.setDestination(rs.getString(4));
			}
			
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("데이터베이스 연결에 실패하였습니다.");
		} finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
		}
	}
}
