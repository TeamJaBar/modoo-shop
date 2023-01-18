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

	final String INSERT = "INSERT INTO DIB VALUES((SELECT NVL(MAX(DIBNUM),1)+1 FROM DIB), ?, ?, ?)";
	final String SELECTALL = "SELECT * FROM DIB D, PRODUCT P WHERE D.PNUM=P.PNUM ORDER BY DIBNUM ASC";
	final String UPDATE = "UPDATE DIB SET DCNT=? WHERE DIBNUM=?";
	final String DELETE = "DELETE FROM DIB WHERE DIBNUM=?";

	public boolean insert(DibVO dvo) {
		try {
			conn = JDBCUtil.connect();
			pstmt = conn.prepareStatement(INSERT);

			pstmt.setInt(1, dvo.getpNum());
			pstmt.setInt(2, dvo.getmNum());
			pstmt.setInt(3, dvo.getdCnt());

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
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				DibVO data = new DibVO();
				data = new DibVO();
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

	public boolean update(DibVO dvo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(UPDATE);
			pstmt.setInt(1, dvo.getdCnt());

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
