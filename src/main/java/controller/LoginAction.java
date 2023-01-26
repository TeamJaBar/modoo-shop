package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		forward.setPath("main.do");
		forward.setRedirect(false);

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		mvo.setmId(request.getParameter("mId"));
		mvo.setmPw(request.getParameter("mPw"));
		MemberVO member = mdao.selectOneLogin(mvo);

		if(member == null) {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			request.setAttribute("title", "가입된 정보가 없습니다.");
			request.setAttribute("msg", "아이디 혹은 비밀번호를 확인하세요.");
			request.setAttribute("url", "login.jsp");
			forward.setPath("alert.jsp");			
		} else {
			request.getSession().setAttribute("mNum", member.getmNum());
			request.getSession().setAttribute("mId", member.getmId());
			request.getSession().setAttribute("mName", member.getmName());
		}

		return forward;
	}

}
