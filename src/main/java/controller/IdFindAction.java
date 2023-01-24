package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class IdFindAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		forward.setPath("id-find-ok.jsp");
		forward.setRedirect(false);

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		
		mvo.setmName(request.getParameter("mName"));
		mvo.setmEmail(request.getParameter("mEmail"));
		MemberVO member = mdao.selectOneId(mvo);
		
		request.setAttribute("mName", request.getParameter("mName"));
		request.setAttribute("mId", member.getmId());

		return forward;
	}

}
