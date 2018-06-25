<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
    <div class="nav-wrapper black darken-4">
      <a href="bienvenido.jsp" class="brand-logo">
          <c:if test="${not empty sessionScope.admin}">
              Inicio 
              
          </c:if>
              
              <c:if test="${not empty sessionScope.person}">
              Inicio 
              <!-- accedemos al atributo del nombre en la base de datos -->
              
          </c:if>
      </a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
          
          <c:if test="${not empty sessionScope.admin}">
              <li><a href="Usuario.jsp">Perfiles</a></li>
               <li> <a href="Categorias.jsp">Categorias</a></li>
               <li> <a href="Producto.jsp">Productos</a></li>
                <li> <a href="catalogo.jsp">Catalogo</a></li>
           
                  <li> <a href="Salir.jsp">Logout</a></li>
              
          </c:if>
          
           <c:if test="${not empty sessionScope.person}">
              <li><a href="perfilcliente.jsp">Perfil</a></li>
              <li><a href="carrito.jsp">Carrito</a></li>
              <li><a href="miscompras.jsp">Compras</a></li>
              <li><a href="productocliente.jsp">Catalógo</a></li>
            
                  <li> <a href="Salir.jsp">Logout</a></li>
              
          </c:if>
          
         
         
      </ul>
    </div>
    </nav>