package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductVO;

public class CatrSelectAction implements Action{
	//session으로 저장된 것은 view에서 바로 확인이 가능! 하지만 향후 유지보수 때문에 만든 Action
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		forward.setPath("shopping-cart.jsp");
		forward.setRedirect(false);
		
		ProductVO pvo=new ProductVO();
				
		request.setAttribute("cart", (ArrayList)request.getSession().getAttribute("cart"));
		
		return forward;
	}

}
