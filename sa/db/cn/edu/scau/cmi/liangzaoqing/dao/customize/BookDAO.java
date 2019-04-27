package cn.edu.scau.cmi.liangzaoqing.dao.customize;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.scau.cmi.liangzaoqing.hibernate.domain.Book;

public class BookDAO {

	public void newBook(Book book) {
		Connection conn = DBUtil.getConn();
		String sql = "insert into book (id,name) values(?,?)";
		PreparedStatement pstmt;
		try {
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.setString(2, book.getName());
			pstmt.setLong(1, book.getId());

			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void update(Book book) {
		Connection conn = DBUtil.getConn();
		String sql = "update book set id='" + book.getId() + "' where Name='" + book.getName() + "'";
		PreparedStatement pstmt;
		try {
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Integer listAllBooks() {
		Connection conn = DBUtil.getConn();
		String sql = "select * from book";
		PreparedStatement pstmt;
		try {
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			int col = rs.getMetaData().getColumnCount();
			System.out.println("============================");
			while (rs.next()) {
				for (int i = 1; i <= col; i++) {
					System.out.print(rs.getString(i) + "\t");
					if ((i == 2) && (rs.getString(i).length() < 8)) {
						System.out.print("\t");
					}
				}
				System.out.println("");
			}
			System.out.println("============================");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void delete(Book book) {
		Connection conn = DBUtil.getConn();
		String sql = "delete from book where Name='" + book.getName() + "'";
		PreparedStatement pstmt;
		try {
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}