package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

// pw-find - 비밀번호 재설정
// change-inform - 회원 정보 변경
// admin-member-update - 관리자 회원 정보 변경
public class UpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		forward.setRedirect(false);

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		String mId = (String)request.getSession().getAttribute("mId");
		mvo.setmId(mId);

		if (mId == null) { // pw-find
			forward.setPath("login.jsp");
			mvo.setmId(request.getParameter("mId"));
			mvo.setmPw(request.getParameter("mPw"));
		} else if (request.getParameter("mNum") == null) { // change-inform
			forward.setPath("changeInfo.do");
			mvo.setmPw(request.getParameter("mPw"));
			mvo.setmEmail(request.getParameter("mEmail"));
			mvo.setmTel(request.getParameter("mTel"));
			mvo.setZipCode(request.getParameter("zipCode"));
			mvo.setUserAddr(request.getParameter("userAddr"));
			mvo.setDetailAddr(request.getParameter("detailAddr"));
		}
//		else { // admin-member-update
//			forward.setPath("admin-member-update.jsp");
//			mvo = mdao.selectOneInfo(mvo);
//			mvo.setmPw(request.getParameter("mPw"));
//			mvo.setmName(request.getParameter("mName"));
//			mvo.setmEmail(request.getParameter("mEmail"));
//			mvo.setmTel(request.getParameter("mTel"));
//			mvo.setZipCode(request.getParameter("zipCode"));
//			mvo.setUserAddr(request.getParameter("userAddr"));
//			mvo.setDetailAddr(request.getParameter("detailAddr"));
//			mvo.setmPoint(mvo.getmPoint());
//			mvo.setmNum(mvo.getmNum());
//		}

		if (mdao.update(mvo)) {
			return forward;
		}

		return null;
	}
}
