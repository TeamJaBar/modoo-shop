package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

// inform - 이메일 중복 검사
@WebServlet("/view/checkEm")
public class CheckEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckEmailController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		mvo.setmEmail(request.getParameter("mEmail"));
		
		if (mdao.selectOneEmailCHK(mvo) == null) {
			response.getWriter().println("1");
		}
	}
}
