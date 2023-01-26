package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class WithdrawalAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		forward.setPath("main.do");
		forward.setRedirect(true);
		
		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		String mId = (String)request.getSession().getAttribute("mId");
		mvo.setmId(mId);
		
		if (mdao.delete(mvo)) {
			request.getSession().invalidate();
			return forward;
		}
		return null;
	}

}
