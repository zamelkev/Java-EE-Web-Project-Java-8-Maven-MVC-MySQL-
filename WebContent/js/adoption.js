
var idTipoTelefono ="";

document.getElementById("tipoTel").addEventListener("change", function() {
	idTipoTelefono = this.options[this.selectedIndex].value;

	console.log("Id del tipoTelefono.Seleccionado =" +idTipoTelefono);
});

/*para guardar los datos en formato ajax y json */

document.getElementById("form1").addEventListener("submit", function() {
	event.preventDefault();
	event.stopPropagation();

	var objPersona = new Object() ;
	
	objPersona.id = 0;
	objPersona.nombre = document.getElementById("nombre").value;
	objPersona.primerApellido = document.getElementById("primerApellido").value;
	objPersona.segundoApellido = document.getElementById("segundoApellido").value;
	objPersona.direccion = document.getElementById("direccion").value;
	objPersona.correo = document.getElementById("correo").value;
	objPersona.usuario = document.getElementById("usuario").value;
	objPersona.password = document.getElementById("password").value;
	objPasajero.telefono = document.getElementById("tel").value;
	objPasajero.tipoTelefono = idTipoTelefono;
	
	console.log(objPersona);

	var strObjPersonaJSON = JSON.stringify(objPersona);
	console.log(strObjPersonaJSON);
	
	var http = new XMLHttpRequest();
	http.onreadystatechange = function(){
		if(this.readyState == 4 && this.status == 200){
            var rtaRecibida = this.responseText;

           /* var objRtaRecibida = JSON.parse(rtaRecibida);
			console.log("JSON convertido a Objecto JavaScript");
			console.log(objRtaRecibida);  */
            if (rtaRecibida == "SavedCorrectly"){
            	location.href="http://localhost:8080/ProyectoTransverWeb/welcome.jsp"
            }else{
            	location.href="http://localhost:8080/ProyectoTransverWeb/index.jsp"
            }
			
		}

	}


		http.open("POST", "InsertaPersona", true );

		http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		http.send("persona="+strObjPersonaJSON);
	
});



document.getElementById("btn1").addEventListener("click", function() {
	location.href = "MuestraLogin"
});



document.getElementById("formLogin").addEventListener("submit", function() {
	event.preventDefault();
	event.stopPropagation();

	var objUsuario = new Object();

	objUsuario.id = 0;
	objUsuario.login = document.getElementById("login").value;
	objUsuario.password = document.getElementById("password").value;

	console.log(objUsuario);

	var strObjUsuarioJSON = JSON.stringify(objUsuario);
	console.log(strObjUsuarioJSON);

	var http = new XMLHttpRequest();

	http.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
             var rtaRecibida = this.responseText;

             if(rtaRecibida == "UsuarioValido") {
                 location.href = "http://localhost:8080/Caso_Practica_4_Web_Java__SQL/reserva.jsp" ;
             }else{
                 location.href ="http://localhost:8080/Caso_Practica_4_Web_Java__SQL/index.jsp";


                 }
			
//              var objRtaRecibida = JSON.parse(rtaRecibida);
// 				console.log("JSON convertido a Objecto JavaScript");
// 				console.log(objRtaRecibida);  

            }

		};

		http.open("POST", "AJAXCheckLogin", true );

		http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		http.send("usuario="+strObjUsuarioJSON);
	
});