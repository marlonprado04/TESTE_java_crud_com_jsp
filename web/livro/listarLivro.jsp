
<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.LivroDAO"%>
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
                    LivroDAO objLivroDAO = new LivroDAO();
                    
                    ArrayList<LivroDTO> lista = objLivroDAO.PesquisarLivro();
                    
                    
                    for(int num = 0; num < lista.size(); num++){
                        out.print("Código: " + lista.get(num).getId_livro() + "<br>");
                        out.print("Nome: " + lista.get(num).getNome_livro() + "<br>");
                        
                        
                        out.print("<a href='formExcluirLivro.jsp?id="
                        + lista.get(num).getId_livro() + "&nome=" 
                        + lista.get(num).getNome_livro() + "'> Excluir</a>");
                        
                        
                        out.print("<a href='formAlterarLivro.jsp?id="
                        + lista.get(num).getId_livro() + "&nome=" 
                        + lista.get(num).getNome_livro() + "'> Alterar</a>");
                        out.print("<br><br>");
                    
                    }
                               
                } catch (Exception e) {
                }

        %>
        <br>
        <form action="listarLivro.jsp" method="POST"> <button type="submit">Listar livro</button></form>
        <form action="formInserirLivro.jsp" method="POST"> <button type="submit">Inserir livro</button></form> 
    </body>
</html>
