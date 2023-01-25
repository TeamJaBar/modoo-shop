package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class DibDAO {
	ArrayList<DibVO> dvo;
	Connection conn;
	PreparedStatement pstmt;

	final String INSERT = "INSERT INTO DIB VALUES(DIBNUM_SEQ.NEXTVAL, ?, ?, 1)";
	final String SELECTALL = "SELECT D.DIBNUM, P.PNUM, D.MNUM, P.PIMG, P.PNAME, P.SELPRICE, D.DCNT FROM DIB D, PRODUCT P WHERE D.PNUM=P.PNUM AND MNUM=? ORDER BY DIBNUM ASC";
	final String DELETE = "DELETE FROM DIB WHERE DIBNUM=?";

	public boolean insert(DibVO dvo) {
		try {
			conn = JDBCUtil.connect();
			pstmt = conn.prepareStatement(INSERT);

			pstmt.setInt(1, dvo.getpNum());
			pstmt.setInt(2, dvo.getmNum());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			JDBCUtil.disconnect(conn, pstmt);
		}
		return true;
	}

	public ArrayList<DibVO> selectAll(DibVO dvo) {
		ArrayList<DibVO> datas = new ArrayList<DibVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(SELECTALL);
			pstmt.setInt(1, dvo.getmNum());
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				DibVO data = new DibVO();
				data = new DibVO();
				data.setDibNum(rs.getInt("DIBNUM"));
				data.setpNum(rs.getInt("PNUM"));
				data.setmNum(rs.getInt("MNUM"));
				data.setpNumPimg(rs.getString("PIMG"));
				data.setpNumPname(rs.getString("PNAME"));
				data.setpNumSelPrice(rs.getInt("SELPRICE"));
				data.setdCnt(rs.getInt("DCNT"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return datas;
	}


	public boolean delete(DibVO dvo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(DELETE);
			pstmt.setInt(1, dvo.getDibNum());
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
