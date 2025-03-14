package com.distribuida.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="factura_detalle")
public class FacturaDetalle {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_factura_detalle")
	private int idFacturaDetalle;
	@Column(name="cantidad")
	private int cantidad;
	@Column(name="subtotal")
	private double subtotal;
	
	///FOREING
	@JoinColumn(name= "id_factura")
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	private Factura factura;
	@JoinColumn(name= "id_libro")
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	private Libro libro;
	
	
	
	
	
	public FacturaDetalle() {
		
	}

	public FacturaDetalle(int idFacturadetalle, int cantidad, double subtotal, Factura factura, Libro libro) {
		
		this.idFacturaDetalle = idFacturadetalle;
		this.cantidad = cantidad;
		this.subtotal = subtotal;
		this.factura = factura;
		this.libro = libro;
	}

	public int getIdFacturadetalle() {
		return idFacturaDetalle;
	}

	public void setIdFacturadetalle(int idFacturadetalle) {
		this.idFacturaDetalle = idFacturadetalle;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public Factura getFactura() {
		return factura;
	}

	public void setFactura(Factura factura) {
		this.factura = factura;
	}

	public Libro getLibro() {
		return libro;
	}

	public void setLibro(Libro libro) {
		this.libro = libro;
	}

	@Override
	public String toString() {
		return "FacturaDetalle [idFacturadetalle=" + idFacturaDetalle + ", cantidad=" + cantidad + ", subtotal="
				+ subtotal + ", factura=" + factura + ", libro=" + libro + "]";
	}
	
	
	
	
	

}
