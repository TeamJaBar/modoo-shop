package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

// pw-find - 비밀번호 재설정
public class UpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		forward.setPath("login.jsp");
		forward.setRedirect(false);

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();

		mvo.setmId(request.getParameter("mId"));
		mvo.setmPw(request.getParameter("mPw"));

		if (mdao.update(mvo)) {
			return forward;
		}

		return null;
	}
}
