<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"%>
<div class="row">
    <div class = "col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        
        <footer class="footer">
            <p class="text-center">
                <br/>
                 <% Date date = new Date();
                 SimpleDateFormat sdf= new SimpleDateFormat("dd.MM.yyyy");
                 String nekiDatum = sdf.format(date);%> 
                <%=nekiDatum %>
            </p>
        </footer>
    </div>
    
</div>
