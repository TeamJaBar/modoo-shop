package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductVO;

public class PrDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("prDelete.do");
		forward.setRedirect(false);
		
		ProductVO pvo=new ProductVO();
		ProductDAO pdao=new ProductDAO();
		pvo.setpNum(Integer.parseInt(request.getParameter("pNum")));
		
		pdao.delete(pvo);
		
		return forward;
	}

}
