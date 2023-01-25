package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.CategoryVO;
import product.ProductDAO;
import product.ProductVO;


public class MainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("main.jsp");
		forward.setRedirect(false);
		
		//NEW 상품 목록
		ProductVO pvo = new ProductVO();
		ProductDAO pdao = new ProductDAO();
		pvo.setCateNum(1000);
		request.setAttribute("newList", pdao.selectAll(pvo));
		
		
		//MD 추천 목록
		pvo.setCateNum(300);
		pvo.setLowNum(300);
		pvo.setHighNum(600);
		request.setAttribute("pList", pdao.selectAll(pvo));
		
		
		//MD 추천 목록 카테고리 대분류		
		CategoryVO cvo = new CategoryVO();
		cvo.setLowNum(300);
		cvo.setHighNum(600);
		request.setAttribute("cList", pdao.selectAll(cvo));
		
		return forward;
	}
}
