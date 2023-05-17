/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexaoDAO {
    
    public Connection conexaoBD(){
        
        Connection con = null;
        
        
        try {
            String url = "jdbc:mysql//localhost:3307/sistema_biblioteca?user=root&password=";
            con = DriverManager.getConnection(url);
            
            
        } catch (SQLException e) {
            
            System.out.println("Erro de conexão com o Banco de Dados");
        }
        
        return con;
    }
    
}
