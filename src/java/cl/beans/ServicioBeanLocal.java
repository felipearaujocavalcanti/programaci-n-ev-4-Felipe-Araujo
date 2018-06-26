/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.beans;

import cl.entities.Categoria;
import cl.entities.DetalleVenta;
import cl.entities.Perfil;
import cl.entities.Producto;
import cl.entities.Usuario;
import cl.entities.Venta;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author 25597723-7
 */
@Local
public interface ServicioBeanLocal {
    Usuario iniciarSesion(String rut,String clave);
    void guardar(Object o);
    void sincronizar(Object o);
    
    Categoria buscarCategoria(int id);
    Perfil buscarPerfil(int id);
    Usuario buscarUsuario(String rut);
    Producto buscarProducto(int idProducto);
    
    
    List<Categoria> getCategorias();
    List<Producto> getProductos();
    List<Usuario> getUsuarios();
    List<Perfil> getPerfiles();
    List<Venta> getVentas();
    List<DetalleVenta> getDetalleVentas();
    
   void compra(String rut, ArrayList<String> lista) throws TransactionException;
    
   public void insertar(Categoria newcat);

    
}