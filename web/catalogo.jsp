<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>
<c:set var="categorias" scope="page" value="<%= servicio.getCategorias() %>"/>
    <c:set var="productos" scope="page" value="<%= servicio.getProductos() %>"/>
    
    
    
     ${requestScope.msg}
     
     <div class="row">
         
         <c:forEach items="${pageScope.productos}" var="p">

        <div class="col s8 offset-s2 ">
            <div class="card-panel grey darken-4 white-text">
                <form action="control.do" method="post">
                    <center>
                    
                        <p><h3>${p.nombreProducto}</h3></p>
                    <h5>Precio:$ ${p.precioProducto}</h5>
                    <h5>Stock: ${p.unidadesProducto}</h5>
                    <h5>Categoria: ${p.categoria.nombreCategoria}</h5>
                        <center><h5>Foto: <xx:TagImg arreglo="${p.fotoProducto}" entero="200"/></h5></center>    
                    
                    <br>
                    </center>
                </form>
            </div>
        </div>
    </c:forEach>
</div>

     </div>
    