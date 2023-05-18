<%-- 
    Document   : formInserirLivro
    Created on : 18 de mai. de 2023, 15:31:56
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <form action="inserirLivro.jsp" method="POST">
            
            <label>Nome do Livro: </label> <br>
            <input type="text" name="nome">
            <button type="submit">CADASTRAR</button>
 
        </form>
        <br>
        <form action="listarLivro.jsp" method="POST"> <button type="submit">Listar livro</button></form>
        <form action="formInserirLivro.jsp" method="POST"> <button type="submit">Inserir livro</button></form>

        
    </body>
</html>