package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.DibDAO;
import member.DibVO;

public class DibAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("dibs-list.jsp");
		forward.setRedirect(false);
		
		DibVO dvo=new DibVO();
		DibDAO ddao=new DibDAO();
		
		dvo.setmNum((int)request.getSession().getAttribute("mNum"));
		
		ArrayList<DibVO> dibs=ddao.selectAll(dvo);
		
		request.setAttribute("dibs", dibs);
		return forward;
	}

}
