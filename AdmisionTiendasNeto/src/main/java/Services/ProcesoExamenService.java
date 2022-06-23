package Services;

import java.util.Date;

public interface ProcesoExamenService {
	
	public boolean ingresavisitante();
	public boolean registrovisitante(String nombrevisante, String Departamento, String Piso, String PersonaVisitada);
	public boolean validacionacceso(Date fechacita);
	public boolean ingresoElevador(boolean accesovalido);
	public boolean seleccionPiso(int piso);
	public boolean registroDepartemento(String nombrevisitante, String departamento,String Personavisitada, String motivo );
	public boolean asigancionEquipo(int idvisitante, int idExamen);
	public void intruccionesExamen();
	public int realizaExamen();
	
	

}
