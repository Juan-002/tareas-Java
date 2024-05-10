package co.edu.poli.ces3.universitas.Servlet;

import co.edu.poli.ces3.universitas.logica.Usuario;
import co.edu.poli.ces3.universitas.database.ConexionMySql;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;


@WebServlet(name = "userServlet", value = "/Usuario")
public class UserServlet extends HttpServlet {
    private ConexionMySql cnn;
    private GsonBuilder gsonBuilder;
    private Gson gson;
    public void init() {
        cnn = new ConexionMySql();
        gsonBuilder = new GsonBuilder();
        gson = gsonBuilder.create();
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>PUT</h1>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");

        // Hello
        PrintWriter out = response.getWriter();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        try {
            PrintWriter out = response.getWriter();
            if(request.getParameter("id") == null) {
                ArrayList<Usuario> listUsers = (ArrayList<Usuario>) cnn.getUsers();
                out.print(gson.toJson(listUsers));
            }else{
                Usuario usuario = cnn.getUser(request.getParameter("id"));
                out.print (usuario);

            }
            out.flush();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    public void destroy() {
    }
}