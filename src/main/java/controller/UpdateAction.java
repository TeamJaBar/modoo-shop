package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class UpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		forward.setRedirect(false);

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();

		mvo.setmId(request.getParameter("mId"));
		mvo.setmPw(request.getParameter("mPw"));

//		if (mdao.update(mvo)) {
//			forward.setPath("view/login.jsp");
//			return forward;
//		}

		return null;
	}
}
