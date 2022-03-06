import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.Connection;
import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;

public class myServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("user");
        int nume1 = Integer.parseInt(request.getParameter("num1"));
        int nume2 = Integer.parseInt(request.getParameter("num2"));

        int randomNum = ThreadLocalRandom.current().nextInt(nume1, nume2 + 1);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD>");
        out.println("<TITLE>Servlet Response </TITLE>");
        out.println("<?HEAD>");
        out.println("<BODY>");
        out.println("Hello Mr. " + userName);
        out.println("<br><br>");
        out.println("Random number: " + randomNum);


        HttpSession session = request.getSession(true);

        String title;
        Integer sessionNumber = new Integer(0);

        if (session.isNew()) {
            title = "Welcome, Newcomer";
        } else {
            title = "Welcome Back";

            Integer sessionId=(Integer)session.getAttribute(userName);

            if (sessionId != null) {
                sessionNumber = new Integer(sessionId.intValue() + 1);
            }
        }
        session.setAttribute(userName,sessionNumber);

        out.println(
                "<BODY>\n" +
                        "<H1 ALIGN=\"CENTER\">" + title + "</H1>\n" +
                        "<H2>Information on Your Session:</H2>\n" +
                        "<TABLE BORDER=1 ALIGN=CENTER>\n" +
                        "<TR>\n" +
                        " <TH>Info Type<TH>Value\n" +
                        "<TR>\n" +
                        "  <TD>ID\n" +
                        "  <TD>" + session.getId() + "\n" +
                        "<TR>\n" +
                        "  <TD>Creation Time\n" +
                        "  <TD>" + new Date(session.getCreationTime()) + "\n" +
                        "<TR>\n" +
                        "  <TD>Time of Last Access\n" +
                        "  <TD>" + new Date(session.getLastAccessedTime()) + "\n" +
                        "<TR>\n" +
                        "  <TD>Number of Previous Accesses\n" +
                        "  <TD>" + sessionNumber + "\n" +
                        "</TABLE>\n" +
                        "</BODY></HTML>");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
    }

}

