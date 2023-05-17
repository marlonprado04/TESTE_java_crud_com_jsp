
package br.com.DAO;

import br.com.DTO.LivroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class LivroDAO{
    
    //Essas duas variáveis estão demonstrando erro, pois o auto importar 
    //sugerido por elas foi outro
    Connection con;

    PreparedStatement pstm;
 
    public void CadastrarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "insert into livro (nome_livro) values (?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());
            
            pstm.execute();           
            pstm.close();
            
        } catch (SQLException e) {
            
            System.out.println("Erro de conexão com o BD (LivroDAO.java)");
        }
    }
    
}
