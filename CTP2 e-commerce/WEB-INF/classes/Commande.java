// Servlet commande.java exactement la même fonctionnalité que commander.jsp
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import metier.*;


@WebServlet("/servlet/Commander")
public class Commande extends HttpServlet
{
  public void service( HttpServletRequest req, HttpServletResponse res ) 
       throws ServletException, IOException
  {
	PrintWriter out = res.getWriter();
    
	res.setContentType( "text/html" );
	HttpSession session = req.getSession(true);
	Panier myPanier=null;

  	if(session.getAttribute("pan")!=null){
		myPanier=(Panier)session.getAttribute("pan");
		myPanier.sauver();
		session.invalidate();
		res.sendRedirect("index.jsp?command=ok");
	}else{
		res.sendRedirect("index.jsp?command=no");
	}
  }
}
