<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>


    <c:set var="usuarios" scope="page" value="<%= servicio.getUsuarios() %>"/>
    <c:set var="Perfiles" scope="page" value="<%= servicio.getPerfiles() %>"/>
<div class="container">
 
    <div class="row ">
                                    <div class="col s12"><span class="white-text text-darken-2"><div class="card-panel hoverable grey darken-2"><center><h3>Mis Datos</h3></center></div></span></div>
				</div>
    
    
    <table class="bordered">
                <tr>
                    <td>Rut</td>
                    <td>Nombre</td>
                    <td>Apellido</td>
                    <td>Email</td>
                    <td>Clave</td>
                    <td>Perfil</td>
                    
                </tr>
              
                <tr>
                    <td>${sessionScope.person.rutUser}</td>
                    <td>${sessionScope.person.nombreUser}</td>
                    <td>${sessionScope.person.apellidoUser}</td>
                    <td>${sessionScope.person.emailUser}</td>
                    <td>${sessionScope.person.clave}</td>
                    <td>${sessionScope.person.perfil.nombrePerfil}</td>
                    
                </tr>
               
                
            </table>
                    
                 <div class="row ">
                     <div class="col s12"><span class="white-text text-darken-2"><div class="card-panel hoverable grey darken-2"><center><h5>No comparta su contraseña<h5></center></div></span></div>
				
				
                                
			</div>   
                    
                    
</div>
<%@include file="plantilla/footer.jsp" %>
