package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductVO;

public class ProdAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		
		forward.setPath("product.jsp");
		forward.setRedirect(false);
		
		ProductVO pvo=new ProductVO();
		ProductDAO pdao=new ProductDAO();
		
		pvo.setCateNum(100);
		
		ArrayList<ProductVO> prodList = pdao.selectAll(pvo);
		
		System.out.println(prodList);
		
		request.setAttribute("prodList", prodList);
		
		return forward;
	}

}
