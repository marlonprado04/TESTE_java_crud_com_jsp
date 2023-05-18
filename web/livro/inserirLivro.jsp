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

            try {

                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setNome_livro(request.getParameter("nome"));

                LivroDAO objLivroDAO = new LivroDAO();
                objLivroDAO.CadastrarLivro(objLivroDTO);

                out.println("Livro inserido com sucesso!");

            } catch (Exception e) {

                out.println(e);

            }


        %>


        <br>
        <form action="listarLivro.jsp" method="POST"> <button type="submit">Listar livro</button></form>
        <form action="formInserirLivro.jsp" method="POST"> <button type="submit">Inserir livro</button></form> 




    </body>
</html>
