<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>



<c:set var="categorias" scope="page" value="<%= servicio.getCategorias()%>"/>
<c:set var="productos" scope="page" value="<%= servicio.getProductos()%>"/>

<c:if test="${not empty sessionScope.person}">
    <div class="row">
        <c:forEach items="${pageScope.productos}" var="p">
            <c:if test="${p.unidadesProducto >= 1}">
                <div class="col s8 offset-s2">
                    <div class="card-panel">
                        <form action="ControladorCarro" method="post">
                            <input type="hidden" name="idProducto" value="${p.idProducto}"/> 
                            <center><h5>Foto: <xx:TagImg arreglo="${p.fotoProducto}" entero="200"/></h5></center>
                            <p><h5><center> ${p.nombreProducto}</center></h5></p>
                        <h4><center> $${p.precioProducto}</center></h4>
                              <h5>Categoria: ${p.categoria.nombreCategoria}</h5>
                              <h5>Stock: ${p.unidadesProducto}</h5>
                              
                            <button class="btn-floating right " type="submit" name="boton2" value="addcar">
                        <i class="material-icons" >add</i>
                            </button><br><br>
                            
                            
                         
                            
                            
                        </form>
                    </div>
                </div>
            </c:if>

        </c:forEach>

        
        
        
    </div>
</c:if>





<%@include file="plantilla/footer.jsp" %>