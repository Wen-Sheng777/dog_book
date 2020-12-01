package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.porderDao;
import domain.Cart;
import domain.CartItem;
import model.member;
import model.porder;

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		member m=(member)session.getAttribute("M");
		
		if(m!=null) {
			String[] bookId = request.getParameterValues("bookId");
			String[] parameterValues = request.getParameterValues("quantity");
			Integer Sum=Integer.parseInt(request.getParameter("Sum"));
			int Quantity1=0;
			int Quantity2=0;
			int Quantity3=0;
			int Quantity4=0;
			int Quantity5=0;
			for(int j=0;j<bookId.length;j++) {
				int bk=Integer.parseInt(bookId[j]);
					if(bk==1) {
						Quantity1=Integer.parseInt(parameterValues[j]);
					}if(bk==2) {
						Quantity2=Integer.parseInt(parameterValues[j]);
					}if(bk==3) {
						Quantity3=Integer.parseInt(parameterValues[j]);
					}if(bk==4) {
						Quantity4=Integer.parseInt(parameterValues[j]);
					}if(bk==5) {
						Quantity5=Integer.parseInt(parameterValues[j]);
					}
			}

		porder p = new porder();
		p.setName(m.getName());
		p.setTel(m.getTel());
		p.setAddress(m.getAddress());
		p.setProduct1(Quantity1);
		p.setProduct2(Quantity2);
		p.setProduct3(Quantity3);
		p.setProduct4(Quantity4);
		p.setProduct5(Quantity5);
		p.setSum(Sum);
		
		new porderDao().add(p);
		
		response.sendRedirect("porder/orderOk.jsp");
		
		}
		else
		{
			response.sendRedirect("member/login.jsp");
		}
		
	}



}