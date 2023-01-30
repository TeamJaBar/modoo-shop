package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import product.ProductDAO;
import product.ProductVO;

public class CartDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		forward.setPath("cart.do");
		forward.setRedirect(true);
		
		String jsonStr = request.getParameter("dList");
		System.out.println("\t로그 " + jsonStr);
		JSONArray arJson = (JSONArray)JSONValue.parse(jsonStr);

		ProductDAO pdao = new ProductDAO();
		ProductVO pvo = new ProductVO();
		ArrayList<ProductVO> cart = (ArrayList<ProductVO>)request.getSession().getAttribute("cart");
		
		for (int i = 0; i < arJson.size(); i++) {
			JSONObject jobj = (JSONObject)arJson.get(i);
			for (int j = 0; j < cart.size(); j++) {
				if (cart.get(j).getpNum() == (int)jobj.get("pNum")) { // 같은 번호 찾으면
					cart.remove(j); // 해당 인덱스의 상품 제거
					break;
				}
			}
			
		}
		
		return forward;
	}
}
