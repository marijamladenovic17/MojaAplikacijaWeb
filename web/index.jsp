<%-- 
    Document   : index
    Created on : Sep 7, 2018, 5:10:02 PM
    Author     : PC
--%>
<%@page import="java.sql.*"%>
<% try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecting data from database</title>

    </head>
    <body>
        <div class="container"> 
            <%@include file = "header.jsp" %> 
            <div class="row"> 
                <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="jumbotron">
                    <h1>Unos podataka:</h1>
                    <form name="sacuvajKandidata" action="sacuvajKandidata.jsp" class="form-group">
                        <table border="0" class = "table">
                           
                            <tbody>
                                <tr>
                                    <td>Ime:</td>
                                    <td><input type="text" name="ime" value="" size="50" /></td>
                                </tr>
                                <tr>
                                    <td>Prezime: </td>
                                    <td><input type="text" name="prezime" value="" size="50" /></td>
                                </tr>
                                <tr>
                                    <td>Ime jednog roditelja:</td>
                                    <td><input type="text" name="imeRoditelja" value="" size="50" /></td>
                                </tr>
                                <tr>
                                    <td>JMBG:</td>
                                    <td><input type="text" name="jmbg" value="" size="50" /></td>
                                </tr>
                                <tr>
                                    <td>Pol</td>
                                    <td><select name="pol">
                                            <option>Zenski</option>
                                            <option>Muski</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>Mobilni:</td>
                                    <td><input type="text" name="mobilni" value="" size="50" /></td>
                                </tr>
                                <tr>
                                    <td>Fiksni:</td>
                                    <td><input type="text" name="fiksni" value="" size="50" /></td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="submit" value="Submit" class="btn-success" name="sacuvaj" />
                    </form>
                   
                        
                  </div>
                </div>
            </div>
            <%@include  file="footer.jsp" %>
        </div>

    </body>
</html>
