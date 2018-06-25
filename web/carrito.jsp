<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>


<c:set var="ventas" scope="page" value="<%= servicio.getVentas()%>"/>

    <div class="row">
        <div class="col s10 offset-s1">
            <div class="card-panel">
                <form action="ControladorCarro" method="post">
                    <h5><center>Carro de compras</center></h5>
                    <button class="btn-floating right pulse" type="submit" name="boton2" value="compra">
                        <i class="material-icons">shopping_cart</i>
                    </button>
                    <input type="text" name="rut" placeholder="Ingrese su Rut"/>
                    <br>
                    <table class="bordered">
                        <tr>
                            <td>Nombre</td>
                            <td>Foto</td>
                            <td>Precio</td>
                            <td>Unidades</td>
                            <td></td> 
                        </tr>
                        <c:forEach items="${carro}" var="p">
                            <tr>
                                <td>${p.nombreProducto}</td>
                                <td><xx:TagImg arreglo="${p.fotoProducto}" entero="50"/></td>
                                <td>$ ${p.precioProducto}</td>
                                <td>
                                    <select name="unidades${p.idProducto}">
                                        <c:forEach begin="1" end="${p.unidadesProducto}" var="i">
                                            <option>${i}</option>                                    
                                        </c:forEach>                                                                    
                                    </select>
                                </td>
                                <td>
                                    <a href="ControladorCarro?boton2=deletecar&idProducto=${p.idProducto}"
                                       class="btn-floating red">
                                        <i class="material-icons">delete</i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                            
                           
                    </table>
                </form>
            </div>
        </div>
    </div>








<%@include file="plantilla/footer.jsp" %>
