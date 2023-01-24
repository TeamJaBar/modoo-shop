package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

// inform - 아이디 중복 검사
// pw-find-01 - 아이디 실재 검사
@WebServlet("/view/check")
public class CheckIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckIdController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		mvo.setmId(request.getParameter("mId"));
		
		if (mdao.selectOneId(mvo) == null) {
			response.getWriter().println("1"); // 응답할 때 getWriter()를 사용
		}
	}
}
