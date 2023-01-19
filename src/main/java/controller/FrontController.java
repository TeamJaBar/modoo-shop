package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController() {
		super();
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String[] uri = request.getRequestURI().split("/");
		// "/"를 기준으로 분리
		String command = uri[uri.length -1];
		// 마지막 index에 있는 값 : 즉 ~.do


		ActionForward forward=null;
		if(command.equals("main.do")) {
			try {
				forward=new MainAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("join.do")) {
			try {
				forward=new JoinAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("login.do")) {
			try {
				forward=new LoginAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("logout.do")) {
			try {
				forward=new LogoutAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(forward==null) {
			forward=new ActionForward();
			forward.setPath("/view/error/error.jsp");
			forward.setRedirect(false);
		}

		if(forward.isRedirect()) {
			System.out.println("리다이렉트");
			response.sendRedirect(forward.getPath());
		}
		else {
			System.out.println("포워드");
			RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

}