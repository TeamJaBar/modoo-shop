package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.AddressDAO;
import member.AddressVO;
import member.MemberDAO;
import member.MemberVO;

public class ManageAddressAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		forward.setPath("manage-address.jsp");
		forward.setRedirect(false);

		MemberDAO mdao = new MemberDAO();
		MemberVO mvo = new MemberVO();
		AddressDAO adao = new AddressDAO();
		AddressVO avo = new AddressVO();

		mvo.setmId((String)request.getSession().getAttribute("mId"));
		request.setAttribute("member", mdao.selectOneInfo(mvo));

		avo.setmNum((int)request.getSession().getAttribute("mNum"));
		request.setAttribute("address", adao.selectAll(avo));
		
		return forward;
	}
}
