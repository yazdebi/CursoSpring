package modelo;

import java.util.Date;

public class Visitante {
	int IdVisitante;
	String nombre;
	String area;
	Date cita;
	String descripcionvisita;
	public int getIdVisitante() {
		return IdVisitante;
	}
	public void setIdVisitante(int idVisitante) {
		IdVisitante = idVisitante;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Date getCita() {
		return cita;
	}
	public void setCita(Date cita) {
		this.cita = cita;
	}
	public String getDescripcionvisita() {
		return descripcionvisita;
	}
	public void setDescripcionvisita(String descripcionvisita) {
		this.descripcionvisita = descripcionvisita;
	}
	
	

	
}
