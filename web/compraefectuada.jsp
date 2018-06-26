<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>


<c:set var="detalleventa" scope="page" value="<%= servicio.getDetalleVentas() %>"/>
<c:set var="detalleventa" scope="page" value="<%= servicio.getVentas() %>"/>


<center><h1>Medicina Veterinaria General</h1></center>

<div class="container">
			<br><br>
			
				
	<div class="row ">
            <div class="col s12"><span class="white-text text-darken-2"><div class="card-panel hoverable grey darken-2"><h4><center>Compra Exitosa! Disfrute</center></h4></div></span></div>
				
			</div>		
			
                      <table class="bordered">
                 <thead>
                     <tr><th>Código Compra</th>
                         <th>Rut</th>
                         <th>Fecha de la Compra</th>
                         <th>Total</th>
                        
                         
                     
                     </tr>
                     
                 </thead>
                 <tbody>
                     
                     <c:forEach items="${pageScope.detalleventa}" var="d">
                         <tr>
                             <td>${d.idVenta}</td> 
                             <td>${sessionScope.person.rutUser}</td>
                             <td>${d.fechaVenta}</td>
                             <td>${d.totalVenta}</td>
                             
                             
                         </tr>
                     </c:forEach>
                      
                 </tbody>
                 
             </table>  	
                        
                        
                        
                        
                        
                        
                        
	<div class="row ">
    <div class="col s4 hoverable ">
      <div class="card">
        <div class="card-image">
          <img width="300" height="300" src="plantilla/gatos.jpg">
          <span class="card-title"></span>
        </div>
      </div>
	      </div>
	  
	  <div class="col s4 hoverable">
      <div class="card">
        <div class="card-image">
          <img  width="300" height="300" src="plantilla/perros.jpg">
          <span class="card-title"></span>
        </div>
      </div>
    </div>
	
	<div class="col s4 hoverable">
      <div class="card">
        <div class="card-image">
            <img width="300" height="300" src="plantilla/aves.jpg">
          <span class="card-title"></span>
        </div>
      </div>
    </div>

  </div>
	
                        
	</div>		
			
			
			
		



<%@include file="plantilla/footer.jsp" %>