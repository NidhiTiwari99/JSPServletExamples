
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
            %>
        <form method="post">
            <table>
                <tr>
                    <td>Employee Id</td>
                    <td><input type="text" name="employee_id" value="<%=id%>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Employee Name</td>
                    <td><input type="text" name="employee_name"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="Male"> Male  
                        &nbsp;
                        <input type="radio" name="gender" value="Female"> Female  
                        &nbsp;
                    
                    </td>
                </tr>
                <tr>
                    <td>Birth Date</td>
                    <td><input type="date" name="birth_date"></td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td>
                        <select name="dddesignation">
                            <option selected="selected" disabled="disabled">Select Designation</option>
                            <%
                                while(rs.next())
                                {
                                    %>
                                    <option value="<%=rs.getInt("designation_id") %>"><%=rs.getString("designation_name") %> </option>    
                                    <%
                                }
                            %>
                        
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td><input type="text" name="salary"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit"  value="Submit"></td>
                </tr>

            </table>
        </form>
<%
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
    %>
<hr/>

    </body>
</html>
