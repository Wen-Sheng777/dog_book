package Controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.memberDao;
import model.member;

@WebServlet("/loginUpdateMember")
public class loginUpdateMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public loginUpdateMember() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session=request.getSession();

		member mm=(member)session.getAttribute("M");
		
		if(mm!=null) {
			
			response.sendRedirect("member/updateMember.jsp");
		}
		else
		{
			response.sendRedirect("member/login.jsp");
		}
		
	}



}
