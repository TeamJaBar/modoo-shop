package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class MemUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("memUpdate.do");
		forward.setRedirect(false);
		
		MemberVO mvo=new MemberVO();
		MemberDAO mdao=new MemberDAO();
		
		mvo.setmPw(request.getParameter("mPw"));
		mvo.setmName(request.getParameter("mName"));
		mvo.setmEmail(request.getParameter("mEmail"));
		mvo.setmTel(request.getParameter("mTel"));
		mvo.setZipCode(request.getParameter("zipCode"));
		mvo.setUserAddr(request.getParameter("userAddr"));
		mvo.setDetailAddr(request.getParameter("detailAddr"));
		mvo.setmPoint(Integer.parseInt(request.getParameter("mPoint")));
		
		mdao.update(mvo);
		
		return forward;
	}

}
