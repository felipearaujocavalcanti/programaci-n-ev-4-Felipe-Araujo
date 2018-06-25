
<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>



   <c:set var="categorias" scope="page" value="<%= servicio.getCategorias() %>"/>
    <c:set var="productos" scope="page" value="<%= servicio.getProductos() %>"/>

 <div class="row">
     <div class="col s6 offset-s3 ">
          <h3><center>Animales</center></h3>
         <div class="card-panel">
             
             <form action="control.do" method="POST">
                 <label> Nombre </label>
                 <input type="text" name="nombre"/>
                 
                 <label> Precio</label>
                 <input type="text" name="precio"/>
                 
                 <label> Unidad</label>
                 <input type="text" name="unidad"/>
                 
                 <label> Descripcion</label>
                 <textarea name="descripcion" class="materialize-textarea"></textarea>
                 <select name="idcategoria">
                     <c:forEach items="${pageScope.categorias}" var="e">
                          <option value="${e.idCategoria}" var="e">${e.nombreCategoria}</option>
                     </c:forEach>
                    
                     
                 </select>
                 
                 <button name="boton" value="nuevoproducto" class="btn">Crear</button>
                 <button class="btn right" name="bt" value="" type="submit">Borrar</button>
                 <a class="btn-floating btn-large cyan pulse"><i class="material-icons">edit</i></a>
                 <br>

             </form>
                   
             ${requestScope.msg}
             <hr>
             <table class="bordered">
                 <thead>
                     <tr><th>ID</th>
                         <th>Nombre</th>
                         <th>Unidad</th>
                         <th>Precio</th>
                         <th>Categoria</th>
                         <th>Foto</th>
                     
                     </tr>
                     
                 </thead>
                 <tbody>
                     <c:forEach items="${pageScope.productos}" var="p">
                         <tr>
                             <td>${p.idProducto}</td> 
                             <td>${p.nombreProducto}</td>
                             <td>${p.unidadesProducto}</td>
                             <td>${p.precioProducto}</td>
                             <td>${p.categoria.nombreCategoria}</td>
                             <td><xx:TagImg arreglo="${p.fotoProducto}" entero="50"/></td>
                         </tr>
                     </c:forEach>
                     
                 </tbody>
                 
             </table>
             
             
         </div>
       
       
      
         
         
     </div>
     
     
 </div>
      
   <%@include file="plantilla/footer.jsp" %>
