package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Book;
import domain.Cart;
import service.BusinessService;

//�������y�ʶR
@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BuyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		BusinessService service=new BusinessService();
		Book book=service.findBook(id);
		
		//�o��Τ᪺�ʪ���
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null) {
			cart=new Cart();
			request.getSession().setAttribute("cart", cart);
		}
		
		//��ѥ[��Τ᪺�ʪ�����
		cart.add(book);
		
		//request.getRequestDispatcher("/porder/listcart.jsp").forward(request, response);
		request.getRequestDispatcher("test2.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
