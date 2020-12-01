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

@WebServlet("/updateMember")
public class updateMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public updateMember() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
			String Id=request.getParameter("id");
			String Password=request.getParameter("password");
			String Name=request.getParameter("name");
			String Tel=request.getParameter("tel");
			String Email=request.getParameter("email");
			String Address=request.getParameter("address");
			
			//int CHI=Integer.parseInt(request.getParameter("chi"));
			
			member m = new member();
			int a=Integer.parseInt(Id);
//			m.setId(m.getId());
			m.setPassword(Password);
			m.setName(Name);
			m.setTel(Tel);
			m.setEmail(Email);
			m.setAddress(Address);
			
			new memberDao().update(a, m);
			
			response.sendRedirect("member/okUpdateMember.jsp");


	}

}
