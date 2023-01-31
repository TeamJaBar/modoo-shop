package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.CategoryVO;
import product.ProductDAO;
import product.ProductVO;

public class ProdAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		forward.setRedirect(false);

		CategoryVO cvo = new CategoryVO();
		ProductVO pvo = new ProductVO();
		ProductDAO pdao = new ProductDAO();

		int initPageCnt = 16;
		int cateNum = Integer.parseInt(request.getParameter("cateNum"));
//		int cateCat = cateNum / 100 * 100;
		int lowNum = cateNum;
		int highNum = cateNum;
		System.out.println(cateNum);

		// 카테고리 목록
		cvo.setCateNum(cateNum);
		cvo.setLowNum(lowNum);
		cvo.setHighNum(highNum);
		System.out.println(pdao.selectAllCateNum(cvo));
		request.setAttribute("cList", pdao.selectAllCateNum(cvo));

		// 상품 목록
		pvo.setCateNum(cateNum);
		pvo.setLowNum(lowNum);
		pvo.setHighNum(highNum);
		pvo.setPageCnt(initPageCnt);
		request.setAttribute("prodList", pdao.selectAll(pvo));

		if (request.getSession().getAttribute("mNum") != null) {
			pvo.setDib((int)request.getSession().getAttribute("mNum"));
		}

		String pathFront = "product.jsp?cateNum=";

		if (cateNum / 1000 == 1) { // New
			forward.setPath(pathFront + "1000");
		} else if (cateNum / 1100 == 1) { // Best
			forward.setPath(pathFront + "1100");
		} else if (cateNum / 100 == 1) { // 연령별
			forward.setPath(pathFront + "100");
		} else if (cateNum / 200 == 1) { // 1인 추천
			forward.setPath(pathFront + "200");
		} else if (cateNum / 300 == 1) { // 전략
			forward.setPath(pathFront + "300");
		} else if (cateNum / 400 == 1) { // 두뇌
			forward.setPath(pathFront + "400");
		} else if (cateNum / 500 == 1) { // 파티게임
			forward.setPath(pathFront + "500");
		} else if (cateNum / 600 == 1) { // 카드게임
			forward.setPath(pathFront + "600");
		} else if (cateNum / 700 == 1) { // 사회/과학
			forward.setPath(pathFront + "700");
		} else if (cateNum / 800 == 1) { // 언어/정서
			forward.setPath(pathFront + "800");
		} else if (cateNum / 900 == 1) { // 악세사리
			forward.setPath(pathFront + "900");
		}

		return forward;
	}

}
