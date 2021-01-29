package com.curso.softura.curso.productos.dto;
import java.io.Serializable;

public class AlmacenDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id_almacen;
    private String nombre_almacen;
    private Integer usuario_alta;
    private Integer usuario_modificacion;

    public AlmacenDTO() {
        super();
    }

    public AlmacenDTO(Long id_almacen, String nombre_almacen, Integer usuario_alta, Integer usuario_modificacion) {
        this.id_almacen = id_almacen;
        this.nombre_almacen = nombre_almacen;
        this.usuario_alta = usuario_alta;
        this.usuario_modificacion = usuario_modificacion;
    }

    public Long getIdAlmacen() {
        return id_almacen;
    }

    public AlmacenDTO setIdAlmacen(Long idAlmacen) {
        this.id_almacen = id_almacen;
        return this;
    }

    public String getNombre() {
        return nombre_almacen;
    }

    public AlmacenDTO setNombre(String nombre_almacen) {
        this.nombre_almacen = nombre_almacen;
        return this;
    }

    public Integer getUsuarioAlta() {
        return usuario_alta;
    }

    public AlmacenDTO setIdUsuarioAlta(Integer usuario_alta) {
        this.usuario_alta = usuario_alta;
        return this;
    }
    public Integer getUsuarioModificacion() {
        return usuario_modificacion;
    }

    public AlmacenDTO setUsuarioModificacion(Integer usuario_modificacion) {
        this.usuario_modificacion = usuario_modificacion;
        return this;
    }

}