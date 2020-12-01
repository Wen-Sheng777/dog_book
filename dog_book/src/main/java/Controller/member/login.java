package Controller.member;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.memberQuery;
import model.member;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String User= request.getParameter("user");
		String Password=request.getParameter("password");
		member m=memberQuery.memberLogin2( User, Password);
		
		if(m!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("M",m);
			
			response.sendRedirect("member/success.jsp");
		}
		else
		{
			response.sendRedirect("member/login.jsp");
		}
	}

}
