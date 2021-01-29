--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.2

-- Started on 2021-01-28 13:48:54

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 41184)
-- Name: curso; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA curso;


ALTER SCHEMA curso OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 41193)
-- Name: c_tipo_producto; Type: TABLE; Schema: curso; Owner: postgres
--

CREATE TABLE curso.c_tipo_producto (
    id_tipo_producto integer NOT NULL,
    tipo_producto character varying NOT NULL,
    usuario_alta bigint NOT NULL,
    usuario_modificacion bigint NOT NULL,
    fecha_alta timestamp without time zone NOT NULL,
    fecha_modificacion timestamp without time zone NOT NULL,
    registro_activo boolean DEFAULT true NOT NULL
);


ALTER TABLE curso.c_tipo_producto OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 41238)
-- Name: sec_almacen; Type: SEQUENCE; Schema: curso; Owner: postgres
--

CREATE SEQUENCE curso.sec_almacen
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE curso.sec_almacen OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 41200)
-- Name: m_almacen; Type: TABLE; Schema: curso; Owner: postgres
--

CREATE TABLE curso.m_almacen (
    id_almacen integer DEFAULT nextval('curso.sec_almacen'::regclass) NOT NULL,
    nombre_almacen character varying NOT NULL,
    usuario_alta bigint NOT NULL,
    usuario_modificacion bigint NOT NULL,
    fecha_alta timestamp without time zone NOT NULL,
    fecha_modificacion timestamp without time zone NOT NULL,
    registro_activo boolean DEFAULT true NOT NULL
);


ALTER TABLE curso.m_almacen OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 41190)
-- Name: sec_producto; Type: SEQUENCE; Schema: curso; Owner: postgres
--

CREATE SEQUENCE curso.sec_producto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE curso.sec_producto OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 41185)
-- Name: m_producto; Type: TABLE; Schema: curso; Owner: postgres
--

CREATE TABLE curso.m_producto (
    id_producto bigint DEFAULT nextval('curso.sec_producto'::regclass) NOT NULL,
    nombre character varying NOT NULL,
    usuario_alta bigint NOT NULL,
    usuario_modificacion bigint NOT NULL,
    fecha_alta timestamp without time zone NOT NULL,
    fecha_modificacion timestamp without time zone NOT NULL,
    registro_activo boolean DEFAULT true NOT NULL,
    id_tipo_producto integer NOT NULL
);


ALTER TABLE curso.m_producto OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 41241)
-- Name: sec_producto_almacen; Type: SEQUENCE; Schema: curso; Owner: postgres
--

CREATE SEQUENCE curso.sec_producto_almacen
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 454545115451
    CACHE 1;


ALTER TABLE curso.sec_producto_almacen OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 41207)
-- Name: r_producto_almacen; Type: TABLE; Schema: curso; Owner: postgres
--

CREATE TABLE curso.r_producto_almacen (
    id_producto_almacen bigint DEFAULT nextval('curso.sec_producto_almacen'::regclass) NOT NULL,
    id_producto bigint NOT NULL,
    id_almacen integer NOT NULL,
    usurio_alta bigint NOT NULL,
    usuario_modificacion bigint NOT NULL,
    fecha_alta timestamp without time zone NOT NULL,
    fecha_modificacion timestamp without time zone NOT NULL,
    registro_activo boolean DEFAULT true NOT NULL
);


ALTER TABLE curso.r_producto_almacen OWNER TO postgres;

--
-- TOC entry 2846 (class 0 OID 41193)
-- Dependencies: 199
-- Data for Name: c_tipo_producto; Type: TABLE DATA; Schema: curso; Owner: postgres
--

INSERT INTO curso.c_tipo_producto VALUES (1, 'tipo 1', 1, 1, '2020-12-13 23:07:52', '2020-12-13 23:07:52', true);


--
-- TOC entry 2847 (class 0 OID 41200)
-- Dependencies: 200
-- Data for Name: m_almacen; Type: TABLE DATA; Schema: curso; Owner: postgres
--



--
-- TOC entry 2844 (class 0 OID 41185)
-- Dependencies: 197
-- Data for Name: m_producto; Type: TABLE DATA; Schema: curso; Owner: postgres
--

INSERT INTO curso.m_producto VALUES (3, 'prueba 2', 1, 1, '2021-01-28 11:32:45.650218', '2021-01-28 11:32:45.650218', true, 1);
INSERT INTO curso.m_producto VALUES (4, 'prueba 2', 1, 1, '2021-01-28 11:45:43.986397', '2021-01-28 11:45:43.987396', true, 1);
INSERT INTO curso.m_producto VALUES (5, 'prueba 2', 1, 1, '2021-01-28 11:47:30.693565', '2021-01-28 11:47:31.255554', true, 1);
INSERT INTO curso.m_producto VALUES (1, 'Producto1*', 1, 1, '2020-12-13 23:07:52', '2021-01-28 13:20:53.689819', false, 1);
INSERT INTO curso.m_producto VALUES (6, 'Amilcar', 1, 1, '2021-01-28 12:59:19.574152', '2021-01-28 13:22:37.38061', true, 1);
INSERT INTO curso.m_producto VALUES (7, 'juan', 1, 1, '2021-01-28 13:00:08.792535', '2021-01-28 13:27:11.00932', false, 1);
INSERT INTO curso.m_producto VALUES (2, 'prueba', 1, 1, '2021-01-28 11:32:20.085813', '2021-01-28 13:33:52.339366', true, 1);


--
-- TOC entry 2848 (class 0 OID 41207)
-- Dependencies: 201
-- Data for Name: r_producto_almacen; Type: TABLE DATA; Schema: curso; Owner: postgres
--



--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 202
-- Name: sec_almacen; Type: SEQUENCE SET; Schema: curso; Owner: postgres
--

SELECT pg_catalog.setval('curso.sec_almacen', 1, false);


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 198
-- Name: sec_producto; Type: SEQUENCE SET; Schema: curso; Owner: postgres
--

SELECT pg_catalog.setval('curso.sec_producto', 7, true);


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 203
-- Name: sec_producto_almacen; Type: SEQUENCE SET; Schema: curso; Owner: postgres
--

SELECT pg_catalog.setval('curso.sec_producto_almacen', 1, false);


--
-- TOC entry 2715 (class 2606 OID 41214)
-- Name: c_tipo_producto c_tipo_producto_pkey; Type: CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.c_tipo_producto
    ADD CONSTRAINT c_tipo_producto_pkey PRIMARY KEY (id_tipo_producto);


--
-- TOC entry 2717 (class 2606 OID 41212)
-- Name: m_almacen m_almacen_pkey; Type: CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.m_almacen
    ADD CONSTRAINT m_almacen_pkey PRIMARY KEY (id_almacen);


--
-- TOC entry 2713 (class 2606 OID 41189)
-- Name: m_producto m_producto_pkey; Type: CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.m_producto
    ADD CONSTRAINT m_producto_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 2719 (class 2606 OID 41221)
-- Name: r_producto_almacen r_producto_almacen_pkey; Type: CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.r_producto_almacen
    ADD CONSTRAINT r_producto_almacen_pkey PRIMARY KEY (id_producto_almacen);


--
-- TOC entry 2720 (class 2606 OID 41231)
-- Name: m_producto m_producto_fk; Type: FK CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.m_producto
    ADD CONSTRAINT m_producto_fk FOREIGN KEY (id_tipo_producto) REFERENCES curso.c_tipo_producto(id_tipo_producto);


--
-- TOC entry 2722 (class 2606 OID 41226)
-- Name: r_producto_almacen r_producto_almacen__almacen_fk; Type: FK CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.r_producto_almacen
    ADD CONSTRAINT r_producto_almacen__almacen_fk FOREIGN KEY (id_almacen) REFERENCES curso.m_almacen(id_almacen);


--
-- TOC entry 2721 (class 2606 OID 41215)
-- Name: r_producto_almacen r_producto_almacen_fk; Type: FK CONSTRAINT; Schema: curso; Owner: postgres
--

ALTER TABLE ONLY curso.r_producto_almacen
    ADD CONSTRAINT r_producto_almacen_fk FOREIGN KEY (id_producto) REFERENCES curso.m_producto(id_producto);


-- Completed on 2021-01-28 13:48:54

--
-- PostgreSQL database dump complete
--

