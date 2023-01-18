package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class AddressDAO {
	ArrayList<AddressVO> addr;
	Connection conn;
	PreparedStatement pstmt;

	final String INSERT = "INSERT INTO ADDRESS VALUES((SELECT NVL(MAX(ANUM),1)+1 FROM ADDRESS), ?, ?, ?, ?, ?, ?, ?)";
	final String SELECTALL = "SELECT * FROM ADDRESS ORDER BY ANUM ASC";
	final String UPDATE = "UPDATE ADDRESS SET SHPNAME=?, DESTINATION=?, ZIPCODE=?, USERADDR=?, DETAILADDR=?, TEL=? WHERE ANUM=?";
	final String DELETE = "DELETE FROM ADDRESS WHERE ANUM=?";

	public boolean insert(AddressVO avo) {
		try {
			conn = JDBCUtil.connect();
			pstmt = conn.prepareStatement(INSERT);

			pstmt.setInt(1, avo.getmNum());
			pstmt.setString(2, avo.getShipName());
			pstmt.setString(3, avo.getDestination());
			pstmt.setString(4, avo.getZipCode());
			pstmt.setString(5, avo.getUserAddr());
			pstmt.setString(6, avo.getDetailAddr());
			pstmt.setString(7, avo.getTel());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			JDBCUtil.disconnect(conn, pstmt);
		}
		return true;
	}

	public ArrayList<AddressVO> selectAll(AddressVO avo) {
		ArrayList<AddressVO> datas = new ArrayList<AddressVO>();
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(SELECTALL);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				AddressVO data = new AddressVO();
				data = new AddressVO();
				data.setShipName(rs.getString("SHIPNAME"));
				data.setDestination(rs.getNString("DESTINATION"));
				data.setZipCode(rs.getNString("ZIPCODE"));
				data.setUserAddr(rs.getNString("USERADDR"));
				data.setDetailAddr(rs.getString("DETAILADDR"));
				data.setTel(rs.getString("TEL "));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(conn, pstmt);
		return datas;
	}

	public boolean update(AddressVO avo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(UPDATE);
			pstmt.setString(1, avo.getShipName());
			pstmt.setString(2, avo.getDestination());
			pstmt.setString(3, avo.getZipCode());
			pstmt.setString(4, avo.getUserAddr());
			pstmt.setString(5, avo.getDetailAddr());
			pstmt.setString(6, avo.getTel());

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

	public boolean delete(AddressVO avo) {
		conn = JDBCUtil.connect();
		try {
			pstmt = conn.prepareStatement(DELETE);
			pstmt.setInt(1, avo.getaNum());
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
