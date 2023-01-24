package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		mvo.setmId(request.getParameter("mId"));
		mvo.setmPw(request.getParameter("mPw"));
		MemberVO member = mdao.selectOneLogin(mvo);

		if(member == null) {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");  
			response.getWriter().println("<script>alert('회원정보가 없습니다. 아이디 또는 비밀번호를 확인해주세요.'); history.go(-1);</script>");
		} else {
			request.getSession().setAttribute("mId", member.getmId());
			request.getSession().setAttribute("mName", member.getmName());
			forward.setPath("main.do");
			forward.setRedirect(false);
		}

		return forward;
	}

}
