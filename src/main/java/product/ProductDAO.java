package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class ProductDAO {
	ArrayList<ProductVO> product;
	ArrayList<CategoryVO> category;
	Connection conn;
	PreparedStatement pstmt;
	String txt1, txt2, txt3, txt4;

	final String INSERT = "INSERT INTO PRODUCT VALUES((SELECT NVL(MAX(PNUM),1001)+1 FROM PRODUCT), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	final String SELECTONE = "SELECT PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG FROM PRODUCT WHERE PNUM=?";
	final String SELECTALL_NEW = "SELECT PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG FROM PRODUCT ORDER BY RDATE DESC";
	final String SELECTALL_BEST = "SELECT P.PNUM, P.CATENUM, P.PNAME, P.FIXPRICE, P.SELPRICE, P.RDATE, P.REPERSON, P.REAGE, P.BRAND, P.PIMG, P.PRODUCTCNT, DECODE(SUM(CNT), NULL, 0, SUM(CNT))  A"
			+ "FROM PRODUCT P FULL JOIN ORDERDETAIL O ON P.PNUM=O.PNUM"
			+ "GROUP BY P.PNUM, P.CATENUM, P.PNAME, P.FIXPRICE, P.SELPRICE, P.RDATE, P.REPERSON, P.REAGE, P.BRAND, P.PIMG, P.PRODUCTCNT"
			+ "ORDER BY A DESC";
	final String SELECTALL_CATEALL = "SELECT PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG FROM PRODUCT WHERE CATENUM BETWEEN ? AND ? ORDER BY RDATE DESC";
	final String SELECTALL_CATE = "SELECT PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG FROM PRODUCT WHERE CATENUM=? ORDER BY RDATE DESC";
	final String SELECTALL_AGE = "SELECT PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG FROM PRODUCT WHERE REAGE BETWEEN ? AND ?";
	final String SELECTALL = "SELECT PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT FROM PRODUCT";
	final String SELECTALL_CATE_ADMIN = "SELECT CATENUM, CATEL, CATEM FROM CATEGORY WHERE CATEL=?";
	final String UPDATE = "UPDATE PRODUCT SET CATAENUM=?, PNAME=?, FIXPRICE=?, SELPRICE=?, RDATE=?, REPERSON=?, REAGE=?, BRAND=?, PIMG=?, INFOIMG=?, PRODUCTCNT=? WHERE PNUM=?";
	final String DELETE = "DELETE FROM PRODUCT WHERE PNUM=?";

	public ProductDAO() {
		product = new ArrayList<ProductVO>();
	}

	public boolean insert(ProductVO pvo) {
		try {
			conn = JDBCUtil.connect();
			pstmt = conn.prepareStatement(INSERT);

			pstmt.setInt(1, pvo.getCateNum());
			pstmt.setString(2, pvo.getpName());
			pstmt.setInt(3, pvo.getFixPrice());
			pstmt.setInt(4, pvo.getSelPrice());
			pstmt.setDate(5, pvo.getrDate());
			pstmt.setString(6, pvo.getRePerson());
			pstmt.setInt(7, pvo.getReAge());
			pstmt.setString(8, pvo.getBrand());
			pstmt.setString(9, pvo.getpImg());
			pstmt.setString(10, pvo.getInfoImg());
			pstmt.setInt(11, pvo.getProductCnt());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			JDBCUtil.disconnect(conn, pstmt);
		}
		return true;
	}

	public ProductVO selectOne(ProductVO pvo) {
		ProductVO data = null;
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(SELECTONE);
			pstmt.setInt(1, pvo.getpNum());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				data = new ProductVO();
				data.setpNum(rs.getInt("PNUM"));
				data.setCateNum(rs.getInt("CATENUM"));
				data.setpName(rs.getString("PNAME"));
				data.setFixPrice(rs.getInt("FIXPRICE"));
				data.setSelPrice(rs.getInt("SELPRICE"));
				data.setrDate(rs.getDate("RDATE"));
				data.setRePerson(rs.getString("REPERSON"));
				data.setReAge(rs.getInt("REAGE"));
				data.setBrand(rs.getString("BRAND"));
				data.setpImg(rs.getString("PIMG"));
				data.setInfoImg(rs.getString("INFOIMG"));
				data.setProductCnt(rs.getInt("PRODUCTCNT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return data;
	}

	public ArrayList<ProductVO> selectAll(ProductVO pvo) {
		ArrayList<ProductVO> datas = new ArrayList<ProductVO>();
		conn = JDBCUtil.connect();
		try {
			if (pvo.getCateNum() == 1000) {
				pstmt = conn.prepareStatement(SELECTALL_NEW);
			} else if (pvo.getCateNum() == 1100) {
				pstmt = conn.prepareStatement(SELECTALL_BEST);
			} else if (pvo.getCateNum() == 100) {
				pstmt = conn.prepareStatement(SELECTALL);
			} else if (pvo.getCateNum() > 100 && pvo.getCateNum() < 200) {
				pstmt = conn.prepareStatement(SELECTALL_AGE);
				pstmt.setInt(1, pvo.getLowNum());
				pstmt.setInt(2, pvo.getHighNum());
			} else if (pvo.getCateNum() % 100 == 0) {
				pstmt = conn.prepareStatement(SELECTALL_CATEALL);
				pstmt.setInt(1, pvo.getCateNum() + 1);
				pstmt.setInt(2, pvo.getCateNum() + 99);
			} else {
				pstmt = conn.prepareStatement(SELECTALL_CATE);
				pstmt.setInt(1, pvo.getCateNum());
			}
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO data = new ProductVO();
				data = new ProductVO();
				data.setpNum(rs.getInt("PNUM"));
				data.setCateNum(rs.getInt("CATENUM"));
				data.setpName(rs.getString("PNAME"));
				data.setFixPrice(rs.getInt("FIXPRICE"));
				data.setSelPrice(rs.getInt("SELPRICE"));
				data.setrDate(rs.getDate("RDATE"));
				data.setRePerson(rs.getString("REPERSON"));
				data.setReAge(rs.getInt("REAGE"));
				data.setBrand(rs.getString("BRAND"));
				data.setpImg(rs.getString("PIMG"));
				data.setInfoImg(rs.getString("INFOIMG"));
				data.setProductCnt(rs.getInt("PRODUCTCNT"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return datas;
	}

	public ArrayList<CategoryVO> selectAll(CategoryVO cvo) {
		ArrayList<CategoryVO> datas = new ArrayList<CategoryVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(SELECTALL_CATE_ADMIN);
			pstmt.setString(1, cvo.getCateL());
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				CategoryVO data = new CategoryVO();
				data = new CategoryVO();
				data.setCateNum(rs.getInt("CATENUM"));
				data.setCateL(rs.getString("CATEL"));
				data.setCateM(rs.getString("CATEM"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return datas;
	}

	public ArrayList<ProductVO> selectAllSearch(ProductVO pvo) {
		ArrayList<ProductVO> datas = new ArrayList<ProductVO>();
		conn = JDBCUtil.connect();
		ProductVO data0 = null;
		
		try {
			try {
				pstmt = conn.prepareStatement("SELECT MAX(SELPRICE) MAXPRICE FROM PRODUCT");

				ResultSet rs = pstmt.executeQuery();
				if (rs.next()) {
					data0 = new ProductVO();
					data0.setHighNum(rs.getInt("MAXPRICE"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			String searchBar = "SELECT * FROM PRODUCT WHERE SELPRICE BETWEEN ? AND ?";
			
			if(pvo.getCateNum() != 0) {
				searchBar += " AND CATENUM=? ";
			}
			if(pvo.getpName() != null) {
				searchBar += " AND PNAME LIKE '%'||?||'%' ";				
			}
			if(pvo.getBrand() != null) {
				searchBar += " AND Brand=? ";				
			}
			
			pstmt = conn.prepareStatement(searchBar);
			pstmt.setInt(1, pvo.getLowNum());
			pstmt.setInt(2, pvo.getHighNum()==0 ? data0.getHighNum() : pvo.getHighNum());
			
			int cnt =3;
			if(pvo.getCateNum() != 0) {
				pstmt.setInt(cnt++, pvo.getCateNum());
			}
			if(pvo.getpName() != null) {
				pstmt.setString(cnt++, pvo.getpName());
			}
			if(pvo.getBrand() != null) {
				pstmt.setString(cnt++, pvo.getBrand());
			}

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO data = new ProductVO();
				data = new ProductVO();
				data.setpNum(rs.getInt("PNUM"));
				data.setCateNum(rs.getInt("CATENUM"));
				data.setpName(rs.getString("PNAME"));
				data.setFixPrice(rs.getInt("FIXPRICE"));
				data.setSelPrice(rs.getInt("SELPRICE"));
				data.setrDate(rs.getDate("RDATE"));
				data.setRePerson(rs.getString("REPERSON"));
				data.setReAge(rs.getInt("REAGE"));
				data.setBrand(rs.getString("BRAND"));
				data.setpImg(rs.getString("PIMG"));
				data.setInfoImg(rs.getString("INFOIMG"));
				data.setProductCnt(rs.getInt("PRODUCTCNT"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return datas;
	}

	public boolean update(ProductVO pvo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(UPDATE);
			pstmt.setInt(1, pvo.getCateNum());
			pstmt.setString(2, pvo.getpName());
			pstmt.setInt(3, pvo.getFixPrice());
			pstmt.setInt(4, pvo.getSelPrice());
			pstmt.setDate(5, pvo.getrDate());
			pstmt.setString(6, pvo.getRePerson());
			pstmt.setInt(7, pvo.getReAge());
			pstmt.setString(8, pvo.getBrand());
			pstmt.setString(9, pvo.getpImg());
			pstmt.setString(10, pvo.getInfoImg());
			pstmt.setInt(11, pvo.getProductCnt());

			int res = pstmt.executeUpdate();
			if (res <= 0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean delete(ProductVO pvo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(DELETE);
			pstmt.setInt(1, pvo.getpNum());
			int res = pstmt.executeUpdate();
			if (res <= 0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		JDBCUtil.disconnect(conn, pstmt);
		return true;
	}
}
