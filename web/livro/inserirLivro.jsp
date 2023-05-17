<%-- 
    Document   : inserirLivro
    Created on : 17 de mai. de 2023, 14:32:50
    Author     : marlo
--%>

<%@page import="br.com.DAO.LivroDAO"%>
<%@page import="br.com.DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <% 
            
            
            LivroDTO objLivroDTO = new LivroDTO();
            objLivroDTO.setNome_livro(request.getParameter("nome"));

            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.CadastrarLivro(objLivroDTO);

        %>
        
        
    </body>
</html>
