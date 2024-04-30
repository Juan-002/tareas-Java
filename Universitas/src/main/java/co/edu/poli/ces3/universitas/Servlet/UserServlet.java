package co.edu.poli.ces3.universitas.Servlet;

import co.edu.poli.ces3.universitas.database.ConexionMySql;
import co.edu.poli.ces3.universitas.database.Usuario;
import com.google.gson.GsonBuilder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {

    private ConexionMySql cnn;


    public void init()  {
        private cnn = new ConexionMySql();
        private GsonBuilder gsonBuilder;
        private Gson

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        try {
            ArrayList<Usuario> listUsers = (ArrayList<Usuario>) cnn.getUsers();


        }catch (SQLException e)

        PrintWriter writer = resp.getWriter();

        writer.flush();
        super.doGet(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("id: "+ id);
        System.out.println("name: "+ name);
        System.out.println("lastName: "+ lastName);
        System.out.println("email: "+ email);
        System.out.println("contraseña: "+ password);

    }

}
