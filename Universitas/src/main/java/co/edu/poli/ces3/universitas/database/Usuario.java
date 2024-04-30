package co.edu.poli.ces3.universitas.database;

import java.sql.Time;
import java.util.Date;

public class Usuario {
    private int id;
    private String name;
    private String lastName;
    private String email;
    private String pass;
    private Date createdAt;
    private Date updatedAt;
    private Date deletedAt;
    //Constructores, en este caso creo solo el nombre y apellido para un ejemplo.
    public Usuario(String name, String lastName) {
        this.name = name;
        this.lastName = lastName;
    }


    // Getters y setters...

    public Usuario() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }


    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
    this.createdAt = createdAt;
}


    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Date getDeletedAt(){
        return  deletedAt;
    }

    public void setDeletedAt(Date deletedAt) {this.deletedAt = deletedAt;}



}
