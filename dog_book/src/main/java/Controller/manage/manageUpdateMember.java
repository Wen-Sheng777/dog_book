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

@WebServlet("/manageUpdateMember")
public class manageUpdateMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public manageUpdateMember() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
			String Id=request.getParameter("id");
			String User=request.getParameter("user");
			String Password=request.getParameter("password");
			String Name=request.getParameter("name");
			String Tel=request.getParameter("tel");
			String Email=request.getParameter("email");
			String Address=request.getParameter("address");
			
			//int CHI=Integer.parseInt(request.getParameter("chi"));
			
			member m = new member();
			int a=Integer.parseInt(Id);
//			m.setId(m.getId());
			m.setUser(User);
			m.setPassword(Password);
			m.setName(Name);
			m.setTel(Tel);
			m.setEmail(Email);
			m.setAddress(Address);
			
			new manageDao().update(a, m);
			
			response.sendRedirect("manage/manageQueryMember.jsp");


	}

}
