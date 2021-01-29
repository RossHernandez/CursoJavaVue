package com.curso.softura.curso.productos.controlador;

import com.curso.softura.curso.general.RespuestaServicio;
import com.curso.softura.curso.productos.dto.AlmacenDTO;
import com.curso.softura.curso.productos.servicio.ProductoServicio;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("api/almacen")

public class AlmacenControlador implements Serializable{
    private static final long serialVersionUID = 1L;

    private transient Logger log = LoggerFactory.getLogger(AlmacenControlador.class);

    @Autowired
    private transient ProductoServicio productoServicio;

   @GetMapping("/obtener")
    public ResponseEntity<RespuestaServicio<List<AlmacenDTO>>> obtenerAlmacen() {
        final RespuestaServicio<List<AlmacenDTO>> respuesta = new RespuestaServicio<>();

       try {
           List<AlmacenDTO> listaAlm = productoServicio.obtenerAlmacen();
           return respuesta.obtenerRespuesta(listaAlm, "Datos obtenidos correctamente");
       } catch (Exception e) {
           log.error(e.getMessage(), e);
           return respuesta.obtenerRespuestaError("Ocurrio un error al obtener los datos");
       }

   }


    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**")
                        .allowedOrigins("*")
                        .allowedMethods("*")
                        .allowedHeaders("*");
            }

        };
    }

}
