package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Cart;
import service.BusinessService;


@WebServlet("/ChangeQuantity")
public class ChangeQuantity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ChangeQuantity() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id= request.getParameter("id");
		String quantity=request.getParameter("quantity");
		
		Cart cart=(Cart)request.getSession().getAttribute("cart");
		
		BusinessService service= new BusinessService();
		service.changeItemQuantity(id,quantity,cart);
		
		//request.getRequestDispatcher("/porder/listcart.jsp").forward(request, response);
		request.getRequestDispatcher("test2.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
