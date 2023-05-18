<%-- 
    Document   : frmExcluirLivroVIEW
    Created on : 17 de mai. de 2023, 16:41:52
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="excluirLivro.jsp" method="POST">
             
            <label>Código do Livro: </label> <br>
            <input type="text" name="id" 
                   value="<%=request.getParameter("id") %>"> <br>
            
            <label>Nome do Livro: </label> <br>
            <input type="text" name="nome" 
                   value="<%=request.getParameter("nome") %>"><br>
            <button type="submit">Excluir</button>

        </form>
           
    </body>
</html>
