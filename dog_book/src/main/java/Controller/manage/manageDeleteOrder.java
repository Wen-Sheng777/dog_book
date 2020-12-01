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

@WebServlet("/manageDeleteOrder")
public class manageDeleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public manageDeleteOrder() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
			String Id=request.getParameter("id");

			
			porder p = new porder();
			int a=Integer.parseInt(Id);
			
			new manageDao().deletePorder(a);
			
			response.sendRedirect("manage/manageDeleteOrder.jsp");


	}

}
