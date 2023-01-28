package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.DibDAO;
import member.DibVO;

/**
 * Servlet implementation class DeleteDibController
 */
@WebServlet("/view/dibDelete")
public class DeleteDibController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteDibController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DibVO dvo=new DibVO();
		DibDAO ddao=new DibDAO();
		
		dvo.setmNum((int)(request.getSession().getAttribute("mNum")));	
		System.out.println("로그 : DeleteDibController - mNum: " + (int)(request.getSession().getAttribute("mNum")));
		
		dvo.setpNum(Integer.parseInt(request.getParameter("pNum")));
		System.out.println("로그 : DeleteDibController - pNum: " + Integer.parseInt(request.getParameter("pNum")));
		if(ddao.delete(dvo)) {
			response.getWriter().println("1");
		}
	}

}
