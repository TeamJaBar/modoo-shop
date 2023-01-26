package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class MemDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("memDelete.do");
		forward.setRedirect(false);
		
		MemberVO mvo=new MemberVO();
		MemberDAO mdao=new MemberDAO();
		mvo.setmNum(Integer.parseInt(request.getParameter("mNum")));
		
		mdao.delete(mvo);
		
		return forward;
	}

}
