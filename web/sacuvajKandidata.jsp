<%-- 
    Document   : sacuvajKandidata
    Created on : Sep 7, 2018, 9:52:15 PM
    Author     : PC
--%>
<%@page import="domen.Kandidat"%>
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
        <title>Sacuvaj podatke</title>
    </head>
    <body>
        <h1>Uspesno sacuvano!</h1>
        <%
                String ime = request.getParameter("ime");
                String prezime = request.getParameter("prezime");
                String imeRoditelja = request.getParameter("imeRoditelja");
                String jmbg = request.getParameter("jmbg");
                String pol = request.getParameter("pol");
                String mobilni = request.getParameter("mobilni");
                String fiksni = request.getParameter("fiksni");
                
        %>
        <%!
          
                        public class Baza {

                            String URL = "jdbc:mysql://localhost:3306/mojaaplikacijanovo";
                            String USER = "root";
                            String PASS = "";

                            Connection konekcija = null;
                            PreparedStatement ps = null;
                            ResultSet rs = null;

                            public Baza() {
                                try {
                                    System.out.println("Uslo");
                                    konekcija = DriverManager.getConnection(URL, USER, PASS);
                                    ps = konekcija.prepareStatement("INSERT INTO kandidat(prezime,imeRoditelja,jmbg,ime,pol,mobilni,fiksni) VALUES(?,?,?,?,?,?,?)");
                                    
                                    System.out.println("Uslo");
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                            }

                            public void ubaci(String prezime, String imeRoditelja, String jmbg, String ime, String pol, String mobilni, String fiksi){
                                try {
                                    ps.setString(1,prezime);
                                    ps.setString(2,imeRoditelja);
                                    ps.setString(3,jmbg);
                                    ps.setString(4,ime);
                                    ps.setString(5,pol);
                                    ps.setString(6,mobilni);
                                    ps.setString(7,fiksi);
                                    ps.executeUpdate();
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                            }

                        }
        %>
        
                    <%
                        Baza clan = new Baza();
                        clan.ubaci(prezime, imeRoditelja, jmbg, ime, pol, mobilni, fiksni);
                    %>
    </body>
</html>
