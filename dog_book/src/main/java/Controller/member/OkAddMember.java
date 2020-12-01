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

@WebServlet("/OkAddMember")
public class OkAddMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OkAddMember() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		member m=(member) session.getAttribute("M");
		new memberDao().add(m);
		
		response.sendRedirect("member/okaddmember.jsp");
		
	}

}
