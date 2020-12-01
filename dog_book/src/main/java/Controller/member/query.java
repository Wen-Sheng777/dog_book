package Controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member;

@WebServlet("/query")
public class query extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public query() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session=request.getSession();
		member m=(member)session.getAttribute("M");
		
		if(m!=null) {
			response.sendRedirect("member/queryOrder.jsp");
		}
		else
		{
			response.sendRedirect("member/login.jsp");
		}
		
		
	}

}
