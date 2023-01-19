package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		forward.setPath("/join-ok.jsp");
		forward.setRedirect(true);
		
		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		
		mvo.setmId(request.getParameter("mId"));
		mvo.setmPw(request.getParameter("mPw"));
		mvo.setmName(request.getParameter("mName"));
		mvo.setmEmail(request.getParameter("mEmail"));
		mvo.setmTel(request.getParameter("mTel"));
		mvo.setZipCode(request.getParameter("zipCode"));
		mvo.setUserAddr(request.getParameter("userAddr"));
		mvo.setDetailAddr(request.getParameter("detailAddr"));
		
		
		if(mdao.insert(mvo)) {
			return forward;
		}
		
		return null;
	}
}
