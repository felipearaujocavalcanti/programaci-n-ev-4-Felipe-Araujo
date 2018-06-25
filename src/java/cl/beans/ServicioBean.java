/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.beans;

import cl.entities.Categoria;
import cl.entities.Perfil;
import cl.entities.Producto;

import cl.entities.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author clrubilarc
 */
@Singleton
public class ServicioBean implements ServicioBeanLocal {

    @PersistenceContext(unitName = "GestionMascotas2018PU")
    private EntityManager em;
    
    @Override
    public Usuario iniciarSesion(String rut, String clave){
        try{
            return  em.createNamedQuery("Usuario.iniciarSesion", Usuario.class)
            .setParameter("rutUser",rut)
                    .setParameter("clave",clave)
                    .getSingleResult();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void guardar(Object o) {
       em.persist(o);
    }
    
    @Override
    public List<Usuario> getUsuarios() {
        return em.createNamedQuery("Usuario.findAll").getResultList();
    }
    
    
    @Override
    public List<Categoria> getCategorias() {
        return em.createNamedQuery("Categoria.findAll").getResultList();
    }

    @Override
    public List<Producto> getProductos() {
         return em.createNamedQuery("Producto.findAll").getResultList();
    }

    @Override
    public void sincronizar(Object o) {
        em.merge(o);//actualiza la categoria
        em.flush();//sincroniza
    }

    @Override
    public Categoria buscarCategoria(int id) {
        return em.find(Categoria.class, id);
    }

    @Override
    public Usuario buscarUsuario(String rut) {
        return em.find(Usuario.class, rut);
    }

    @Override
    public void insertar(Categoria newcat) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Perfil buscarPerfil(int id) {
         return em.find(Perfil.class, id);
    }

    @Override
    public List<Perfil> getPerfiles() {
         return em.createNamedQuery("Perfil.findAll").getResultList();
    }

    @Override
    public Producto  buscarProducto(int idProducto) {
         return em.find(Producto.class, idProducto);
    }

    @Override
    public void compra(String rut, ArrayList<String> lista) throws TransactionException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Perfil> getVentas() {
        return em.createNamedQuery("Perfil.findAll").getResultList();
    }

    
  
}
