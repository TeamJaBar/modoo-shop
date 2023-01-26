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
		String uri = request.getRequestURI();
		System.out.println("uri: " + uri);
		String cp = request.getContextPath() + "/view/";
		System.out.println("cp: " + cp);
		String command = uri.substring(cp.length());
		System.out.println("command: " + command);

		ActionForward forward = null;
		if (command.equals("main.do")) {
			try {
				forward = new MainAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("join.do")) {
			try {
				forward = new JoinAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("login.do")) {
			try {
				forward = new LoginAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("logout.do")) {
			try {
				forward = new LogoutAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("sendEmail.do")) {
			try {
				forward = new SendEmailAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("update.do")) {
			try {
				forward = new UpdateAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("idFind.do")) {
			try {
				forward = new IdFindAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("pwFind.do")) {
			try {
				forward = new PwFindAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("changeInfo.do")) {
			try {
				forward = new ChangeInfoAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("withdrawal.do")) {
			try {
				forward = new WithdrawalAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("manageAddress.do")) {
			try {
				forward = new ManageAddressAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("addAddress.do")) {
			try {
				forward = new AddAddressAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("prSelectAll.do")) {
			try {
				forward = new PrSelectAllAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("prDelete.do")) {
			try {
				forward = new PrDeleteAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("prUpdate.do")) {
			try {
				forward = new PrUpdateAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (forward == null) {
			forward = new ActionForward();
			forward.setPath("/view/error/error.jsp");
			forward.setRedirect(false);
		}

		if (forward.isRedirect()) {
			System.out.println("리다이렉트");
			response.sendRedirect(forward.getPath());
		} else {
			System.out.println("포워드");
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

}