package dosya;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");


        if (username.equals("kullanici") && password.equals("sifre")) {
            
            if (rememberMe != null) {
                Cookie cookie = new Cookie("username", username);
                response.addCookie(cookie);
            }

            
            response.sendRedirect("AnaSayfa.jsp");
        } else {
            out.print("Kullanıcı adı veya şifre yanlış!");
            RequestDispatcher rd = request.getRequestDispatcher("loginUser.jsp");
            rd.include(request, response);
        }

        out.close();
    }
}
