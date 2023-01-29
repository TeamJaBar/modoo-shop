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
		int mNum = (int)request.getSession().getAttribute("mId");
		mvo.setmPw(request.getParameter("mPw"));
		mvo.setmNum(mNum);

		mvo=mdao.selectOneLogin(mvo);//탈퇴하려는 id랑 pw랑 같고 그게 멤버 테이블에 있으면
		if(mvo !=null ) {
			if (mdao.delete(mvo)) {
				request.getSession().invalidate();
				return forward;
			}
		}
		return null;
	}

}
