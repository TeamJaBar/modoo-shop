package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import product.ProductDAO;
import product.ProductVO;

// 찜 목록
@WebServlet("/view/cartInsertDips")
public class CartInsertDibsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartInsertDibsController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsonStr = request.getParameter("dList");
		System.out.println("\t로그 " + jsonStr);
		JSONArray arJson = (JSONArray)JSONValue.parse(jsonStr);

		// 로그
		for (int i = 0; i < arJson.size(); i++) {
			JSONObject jobj = (JSONObject)arJson.get(i);
			System.out.print("\t로그 pCnt: ");
			System.out.print(jobj.get("pCnt"));
		}

		ProductVO pvo = new ProductVO();
		ProductDAO pdao = new ProductDAO();
		ArrayList<ProductVO> cart = (ArrayList<ProductVO>)request.getSession().getAttribute("cart");

		boolean isExisting = false;
		int pNum = Integer.parseInt(request.getParameter("pNum"));

		for (int i = 0; i < arJson.size(); i++) {
			JSONObject jobj = (JSONObject)arJson.get(i);
			isExisting = false;
			for (int j = 0; j < cart.size(); j++) {
				if (cart.get(j).getpNum() == (int)jobj.get("pNum")) { // 추가하려는 상품이 장바구니에 있다면
					isExisting = true;
					cart.get(i).setpCnt(cart.get(i).getpCnt() + 1); // 기존 장바구니 구매 수량 + pCnt
					break;
				}
			}
			if (!isExisting) { // 장바구니에 없다면
				pvo.setpNum(pNum); // 상품 번호(PK)
				cart.add(pdao.selectOne(pvo)); // 해당 상품 정보 추가
				cart.get(cart.size() - 1).setpCnt(1); // 구매 수량 = 1
			}
		}

		request.getSession().setAttribute("cart", cart);
		response.getWriter().println("1");

	}
}
