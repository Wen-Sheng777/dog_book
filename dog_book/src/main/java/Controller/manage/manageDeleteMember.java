package Controller.manage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.manageDao;
import Dao.memberDao;
import model.member;

@WebServlet("/manageDeleteMember")
public class manageDeleteMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public manageDeleteMember() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
			String Id=request.getParameter("id");

			
			member m = new member();
			int a=Integer.parseInt(Id);
			
			new manageDao().delete(a);
			
			response.sendRedirect("manage/manageDeleteMember.jsp");


	}

}
