package co.edu.poli.ces3.universitas.database;

import co.edu.poli.ces3.universitas.logica.Usuario;

import java.util.List;

public interface Crud {
    public void insert(Usuario x);
    public void update(Usuario x);
    public List<Usuario> get();


}
