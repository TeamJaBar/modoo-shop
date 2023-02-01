package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.OrderDAO;
import member.OrderVO;

public class OrListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("order-list.jsp");
		forward.setRedirect(false);

		OrderVO ovo=new OrderVO();
		OrderDAO odao=new OrderDAO();

		ovo.setoStatus(4);
		ovo.setmNum((int)request.getSession().getAttribute("mNum"));

		ArrayList<OrderVO> orders=odao.selectAll(ovo);

		request.setAttribute("orders", orders);

		return forward;
	}

}
