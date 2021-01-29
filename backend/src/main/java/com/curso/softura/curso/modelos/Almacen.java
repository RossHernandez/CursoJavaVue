package com.curso.softura.curso.modelos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "m_almacen")
public class Almacen extends BitacoraModelo implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @Column
    private Integer id_almacen;

    @Column
    private String nombre_almacen;

    @Column
    private Integer usuario_alta;

    @Column
    private String usuario_modificacion;
}
