package co.edu.poli.ces3.universitas.database;
import co.edu.poli.ces3.universitas.logica.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConexionMySql {

    private String user;
    private String password;
    private int port;
    private String host;
    private String nameDatabase;
    private Connection cnn;

    public ConexionMySql(){
        user = "root";
        password = "";
        port = 3306;
        host = "localhost";
        nameDatabase = "ces3";
    }

    private void createConexion(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnn = DriverManager.getConnection(
                    "jdbc:mysql://" +host+":"+port+"/"+nameDatabase, user, password
            );
            System.out.println("Successful connection");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("An error occurred during the connection");
            throw new RuntimeException(e);
        }
    }

    public  List<Usuario> getUsers() throws SQLException {
        List<Usuario> usuarios = new ArrayList<Usuario>(); // de un interfaz no se puede eredar una instancia
        String sql = "SELECT * FROM users";
        try {
            createConexion();
            Statement stmt = cnn.createStatement();
            ResultSet result = stmt.executeQuery(sql);
            while (result.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(result.getInt("id"));
                usuario.setName(result.getString("name"));
                usuario.setLastName(result.getString("lastName"));
                usuario.setEmail(result.getString("mail"));
                usuario.setPass(result.getString("password"));
                usuario.setCreatedAt(result.getDate("createdAt"));
                usuario.setUpdatedAt(result.getDate("updatedAt"));
                usuario.setDeletedAt(result.getDate("deletedAt"));
                usuarios.add(usuario);
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            cnn.close();
        }
        return usuarios;
    }

public  Usuario getUser(String id) throws  SQLException{
        String sql = "SELECT * FROM users WHERE id = ?";
        createConexion();
        try {
            createConexion();
            PreparedStatement smt = cnn.prepareStatement(sql);
            smt.setInt(1, Integer.parseInt(id));
            ResultSet resultSet = smt.executeQuery();
            return new Usuario(resultSet.getString("name"), resultSet.getString("lastName"));
        }catch (SQLException error){
            error.printStackTrace();
        }finally {
            if (cnn != null){
                cnn.close();
            }
            return null;
        }
}

}
