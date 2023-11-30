package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Employee_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from tbldesignations");

           Statement st1=con.createStatement();

            ResultSet rs1=st1.executeQuery("select max(employee_id) employee_id from tblemployee_details");
            int id=0;
            if(rs1.next())
            {
                id=rs1.getInt("employee_id");
                id++;
            }
            else
            {
                id=1;
            }
            
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Employee Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"employee_id\" value=\"");
      out.print(id);
      out.write("\" readonly=\"readonly\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Employee Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"employee_name\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"Male\"> Male  \n");
      out.write("                        &nbsp;\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"Female\"> Female  \n");
      out.write("                        &nbsp;\n");
      out.write("                    \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Birth Date</td>\n");
      out.write("                    <td><input type=\"date\" name=\"birth_date\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Designation</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"dddesignation\">\n");
      out.write("                            <option selected=\"selected\" disabled=\"disabled\">Select Designation</option>\n");
      out.write("                            ");

                                while(rs.next())
                                {
                                    
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getInt("designation_id") );
      out.write('"');
      out.write('>');
      out.print(rs.getString("designation_name") );
      out.write(" </option>    \n");
      out.write("                                    ");

                                }
                            
      out.write("\n");
      out.write("                        \n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Salary</td>\n");
      out.write("                    <td><input type=\"text\" name=\"salary\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\">\n");
      out.write("                        <input type=\"submit\"  value=\"Submit\"></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </form>\n");

    if(request.getMethod().equals("POST"))
    {
        String name=request.getParameter("employee_name");
        String gender=request.getParameter("gender");
        String date=request.getParameter("birth_date");
        int did=Integer.parseInt(request.getParameter("dddesignation"));
        float sal=Float.parseFloat(request.getParameter("salary"));
        st=con.createStatement();
        int cnt=st.executeUpdate("insert into tblemployee_details(employee_id,employee_name,gender,birth_date,designation_id,salary)values("+id+",'"+name+"','"+gender+"','"+date+"',"+did+","+sal+")");
        if(cnt>0)
        {
            out.println("<h2>Employee Added Successfully</h2>");
        }
        else
        {
                out.println("<h2>Error!!!!</h2>");
        
        }
    }
    
      out.write("\n");
      out.write("<hr/>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
