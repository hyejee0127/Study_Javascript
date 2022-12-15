package ajax;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.me")
public class MemberFrontController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("MemberFrontController");
		
		request.setCharacterEncoding("UTF-8");
		
		// 서블릿 주소 추출
		String command = request.getServletPath();
		System.out.println("command : " + command);
		
		// 공통으로 사용할 변수 선언
		Action action = null; // XXXAction 클래스를 공통으로 관리할 Action 인터페이스 타입
		ActionForward forward = null; // 포워딩 정보를 저장할 ActionForward 타입
		
		if(command.equals("/MemberJoinForm.me")) {
			forward = new ActionForward();
			forward.setPath("1013_ajax/test2_join.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/MemberJoinPro.me")) {
			action = new MemberJoinProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/MemberJoinResult.me")) {
			forward = new ActionForward();
			forward.setPath("1013_ajax/test2_join_result.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/MemberSendAuthMail.me")) {
			action = new MemberSendAuthMailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// --------------------------------------------------------------------------------
		// ActionForward 객체 내용에 따라 각각 다른 포워딩 작업 수행(포워딩 작업 공통 처리)
		// 1. ActionForward 객체가 null 이 아닐 경우 판별
		if(forward != null) {
			// 2. ActionForward 객체에 저장된 포워딩 방식 판별
			if(forward.isRedirect()) { // Redirect 방식
				response.sendRedirect(forward.getPath());
			} else { // Dispatcher 방식
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		// --------------------------------------------------------------------------------
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
