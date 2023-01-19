package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("/main.do");
		forward.setRedirect(false);
		
		MemberDAO mdao=new MemberDAO();
		MemberVO mvo=new MemberVO();
		mvo.setmId(request.getParameter("mId"));
		mvo.setmPw(request.getParameter("mPw"));
		MemberVO member=mdao.selectOne(mvo);
		
		request.getSession().setAttribute("mId", member.getmId());
		request.getSession().setAttribute("mName", member.getmName());
		
		return forward;
	}

}
