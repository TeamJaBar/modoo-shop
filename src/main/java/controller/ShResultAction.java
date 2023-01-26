package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductVO;

public class ShResultAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("search-result.jsp");
		forward.setRedirect(false);
		
		ProductVO pvo=new ProductVO();
		ProductDAO pdao=new ProductDAO();
		
		
		
		return null;
	}

}
