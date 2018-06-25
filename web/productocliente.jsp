<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>
<c:set var="categorias" scope="page" value="<%= servicio.getCategorias() %>"/>
    <c:set var="productos" scope="page" value="<%= servicio.getProductos() %>"/>
    
    
    
   <div class="container">
     <h3><center>Animales y Accesorios Disponibles</center></h3>
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<%@include file="plantilla/footer.jsp" %>
