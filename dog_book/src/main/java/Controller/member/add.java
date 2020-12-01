package Controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member;

@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public add() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String User= request.getParameter("user");
		String Password=request.getParameter("password");
		String Name=request.getParameter("name");
		String Tel=request.getParameter("tel");
		String Email=request.getParameter("email");
		String Address=request.getParameter("address");
		
		//int CHI=Integer.parseInt(request.getParameter("chi"));
		
		member m = new member();
		m.setUser(User);
		m.setPassword(Password);
		m.setName(Name);
		m.setTel(Tel);
		m.setEmail(Email);
		m.setAddress(Address);
		
		HttpSession session=request.getSession();
		session.setAttribute("M",m);
		
		response.sendRedirect("member/confirm.jsp");
	}



}
