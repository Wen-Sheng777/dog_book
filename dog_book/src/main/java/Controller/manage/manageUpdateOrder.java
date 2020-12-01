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
import model.porder;

@WebServlet("/manageUpdateOrder")
public class manageUpdateOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public manageUpdateOrder() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
			String Id=request.getParameter("id");
			String Name=request.getParameter("name");
			String Product1=request.getParameter("product1");
			String Product2=request.getParameter("product2");
			String Product3=request.getParameter("product3");
			String Product4=request.getParameter("product4");
			String Product5=request.getParameter("product5");
			//String Sum=request.getParameter("sum");
			//int CHI=Integer.parseInt(request.getParameter("chi"));
			
			porder p = new porder();
			int a=Integer.parseInt(Id);
			int a1=Integer.parseInt(Product1);
			int a2=Integer.parseInt(Product2);
			int a3=Integer.parseInt(Product3);
			int a4=Integer.parseInt(Product4);
			int a5=Integer.parseInt(Product5);
//			m.setId(m.getId());
			p.setName(Name);
			p.setProduct1(a1);
			p.setProduct2(a2);
			p.setProduct3(a3);
			p.setProduct4(a4);
			p.setProduct5(a5);
			
			new manageDao().updatePorder(a, p);
			
			response.sendRedirect("manage/manageQueryOrder.jsp");


	}

}
