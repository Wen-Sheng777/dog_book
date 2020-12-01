package Controller.manage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.manageDao;
import model.manage;

@WebServlet("/manageLogin")
public class manageLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public manageLogin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String User= request.getParameter("user");
		String Password=request.getParameter("password");
		manage m=manageDao.manageLogin( User, Password);
		
		if(m!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("MM",m);
			
			response.sendRedirect("manage/manageSuccess.jsp");
		}
		else
		{
			response.sendRedirect("manage/manageLogin.jsp");
		}
	}

}
