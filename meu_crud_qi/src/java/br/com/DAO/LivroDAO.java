
package br.com.DAO;

import br.com.DTO.LivroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;


public class LivroDAO{
    
    
    //Criando variável para passar a conexão do banco de dados
    //fora do método para poder usá-la universalmente
    Connection con;

    //Criand ovariável de preparação para preparar o código sql
    //também fora do método para poder usá-la universalmente
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<LivroDTO> lista = new ArrayList<>();
 
    // Criando método para cadastrar os livros
    public void CadastrarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        
        // criando variável para comando SQL
        String sql = "insert into livro (nome_livro) values (?)";
        
        // Atribuindo o método de conexão da classe java 
        // para a variável criada mais acima
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());
            
            pstm.execute();           
            pstm.close();
            
        } catch (SQLException e) {
            
            System.out.println("Erro de conexão com o BD no método CadastrarLivro (LivroDAO.java)");
        }
    }
 
    public ArrayList<LivroDTO> PesquisarLivro() throws ClassNotFoundException{
        
        String sql = "select *  from livro";
        
        // Atribuindo o método de conexão da classe java 
        // para a variável criada mais acima
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while (rs.next()){
                
                // Criando objeto a partir da classe DTO (get e set do bd)
                // e passando as informações do resultado da query para uma variável
                // do resultset
  
                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setId_livro(rs.getInt("id_livro"));
                objLivroDTO.setNome_livro(rs.getString("nome_livro"));
                
                
                lista.add(objLivroDTO);
                

            }
            
            
        } catch (SQLException e) {
            
            System.out.println("Erro no método PesquisarLivro (LivroDAO)");
        }
        
        return lista;
        
        }
    
    public void ExcluirLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        
        // criando variável para comando SQL
        String sql = "delete from livro where id_livro = ?";
        
        // Atribuindo o método de conexão da classe java 
        // para a variável criada mais acima
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objLivroDTO.getId_livro());
            
            pstm.execute();           
            pstm.close();
            
        } catch (SQLException e) {
            
            System.out.println("Erro de conexão com o BD no método Excluir Livro (LivroDAO.java)");
        }
    }
}
