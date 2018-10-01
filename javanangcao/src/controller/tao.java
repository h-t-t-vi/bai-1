package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xml.internal.serialize.Printer;

import bo.sachbo;

/**
 * Servlet implementation class tao
 */
@WebServlet("/tao")
public class tao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tao() {
        super();
        // TODO Auto-generated constructor stub
    }

    sachbo sach = new sachbo();
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// tao ra doi tuong out
		PrintWriter out = response.getWriter();
		// tao ra 1 session
		HttpSession session = request.getSession();
		session.setAttribute("ht", "Le Thanh Nam");
		// mo trang ht.jsp
		//response.sendRedirect("ht.jsp?ts=haha");
		// lay va a, b
		 Long s =(long) 0;
		if(request.getParameter("txta")!=null) {
			Long a = Long.parseLong(request.getParameter("txta"));
			Long b = Long.parseLong(request.getParameter("txtb"));
		   s = a+b;
		}
		
		//if(request.getParameter("btn1")!=null) {
		//	s = a+b;
		//}
		//if(request.getParameter("btn2")!=null) {
		//	s = a-b;
		//}
		//if(request.getParameter("btn3")!=null) {
		//	s = a *b;
		//}
		//if(request.getParameter("btn4")!=null) {
		//	s = a/b;
		//}
		//response.sendRedirect("tong.jsp?t=" + s.toString());
		
		
		//out.print("<html><body> <b>alo</b></body></html>");
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		request.setAttribute("dssach", sach.getsach());
		request.setAttribute("t", s);
		request.setAttribute("ht", "abc");
		// forward du lieu ve 1 trag jsp
		RequestDispatcher rd = request.getRequestDispatcher("tong.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
