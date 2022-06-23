package Implements;

import java.util.Date;

import org.springframework.stereotype.Service;

import Services.ProcesoExamenService;
@Service
public class ProcesoExamenServiceImpl implements ProcesoExamenService {

	public boolean ingresavisitante() {
		// Ingresa visitante a edificio indicado tiendas neto
		return true;
	}

	public boolean registrovisitante(String nombrevisante, String Departamento, String Piso, String PersonaVisitada) {
		// se registra con recepcionista, proporcionando su nombre, departamento que visita y quien lo recibe, piso
		//Recibe acceso
		return true;
	}

	public boolean validacionacceso(Date fechacita) {
		// Recepcionista valida acceso con la fecha
		return true;
	}

	public boolean ingresoElevador(boolean accesovalido) {
		// Acceso valida, el visitante ingresa a un elevador
		return true;
	}

	public boolean seleccionPiso(int piso) {
		// Dentro de el elevador selecciona piso de tiendas neto
		return true;
	}

	public boolean registroDepartemento(String nombrevisitante, String departamento, String Personavisitada,
			String motivo) {
		// al llegar a el puso tiendas neto, ingresa con otra recepcinista, proporciona nombre departamento que visira y persona , la recepcionita valida informcion
		return true;
	}

	public boolean asigancionEquipo(int idvisitante, int idExamen) {
		// Se le asigna un equipo para realizar un examen
		return false;
	}

	public void intruccionesExamen() {
		// Se le explican las instrucciones a realizar

	}

	public int realizaExamen() {
		// Realiza el examen
		
		//Se obtiene una calificacin
		return 0;
	}

}
