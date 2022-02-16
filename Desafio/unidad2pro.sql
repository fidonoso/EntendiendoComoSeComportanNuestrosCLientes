--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12
-- Dumped by pg_dump version 10.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    email character varying(40) NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra (
    id integer NOT NULL,
    cliente_id integer NOT NULL,
    fecha date
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- Name: compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compra_id_seq OWNER TO postgres;

--
-- Name: compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;


--
-- Name: detalle_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_compra (
    id integer NOT NULL,
    producto_id integer NOT NULL,
    compra_id integer NOT NULL,
    cantidad integer
);


ALTER TABLE public.detalle_compra OWNER TO postgres;

--
-- Name: detalle_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_compra_id_seq OWNER TO postgres;

--
-- Name: detalle_compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_compra_id_seq OWNED BY public.detalle_compra.id;


--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    descripcion character varying(500) NOT NULL,
    stock integer,
    precio integer,
    CONSTRAINT stock_valido CHECK ((stock >= 0))
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_id_seq OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: compra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);


--
-- Name: detalle_compra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_compra ALTER COLUMN id SET DEFAULT nextval('public.detalle_compra_id_seq'::regclass);


--
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente(id, nombre, email)
VALUES (1,'usuario01','usuario01@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (2,'usuario02','usuario02@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (3,'usuario03','usuario03@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (4,'usuario04','usuario04@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (5,'usuario05','usuario05@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (6,'usuario06','usuario06@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (7,'usuario07','usuario07@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (8,'usuario08','usuario08@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (9,'usuario09','usuario09@gmail.com');

INSERT INTO public.cliente(id, nombre, email)
VALUES (10,'usuario010','usuario010@gmail.com');



--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--




INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (1,4,'2020-02-12');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (2,5,'2020-03-14');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (3,10,'2020-02-07');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (4,9,'2020-04-25');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (5,7,'2020-04-03');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (6,2,'2020-03-23');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (7,9,'2020-03-11');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (8,3,'2020-04-21');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (9,2,'2020-02-24');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (10,10,'2020-04-18');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (11,3,'2020-04-22');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (12,8,'2020-03-22');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (13,10,'2020-02-20');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (14,9,'2020-02-07');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (15,3,'2020-04-25');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (16,4,'2020-03-20');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (17,9,'2020-02-22');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (18,8,'2020-02-17');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (19,10,'2020-03-14');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (20,9,'2020-03-07');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (21,6,'2020-04-28');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (22,5,'2020-02-06');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (23,10,'2020-01-31');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (24,3,'2020-02-15');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (25,9,'2020-03-12');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (26,1,'2020-01-31');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (27,10,'2020-04-08');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (28,3,'2020-03-20');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (29,9,'2020-03-16');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (30,5,'2020-04-09');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (31,1,'2020-03-29');

INSERT INTO public.compra(id, cliente_id, fecha)
VALUES (32,2,'2020-03-29');



--
-- Data for Name: detalle_compra; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (1,2,2,9);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (2,7,6,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (3,16,23,1);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (4,10,13,4);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (5,7,8,2);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (6,2,14,6);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (7,19,8,7);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (8,7,19,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (9,17,3,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (10,2,3,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (11,16,27,8);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (12,16,10,8);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (13,13,14,8);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (14,3,30,4);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (15,13,15,2);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (16,20,21,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (17,15,21,2);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (18,15,16,3);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (19,16,19,9);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (20,1,6,10);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (21,17,1,7);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (22,18,1,9);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (23,20,4,8);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (24,16,4,9);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (25,14,5,6);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (26,17,7,2);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (27,17,9,6);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (28,18,11,4);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (29,20,12,7);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (30,3,17,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (31,2,18,10);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (32,20,20,1);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (33,10,22,10);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (34,18,24,2);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (35,3,25,10);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (36,3,26,4);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (37,3,28,2);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (38,11,29,7);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (39,9,31,5);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (40,1,32,3);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (41,2,32,3);

INSERT INTO public.detalle_compra(id, producto_id, compra_id, cantidad)
VALUES (42,8,32,3);



--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (1,'public.producto1',6,9107);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (2,'public.producto2',5,1760);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (3,'public.producto3',9,9449);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (4,'public.producto4',8,194);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (5,'public.producto5',10,3764);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (6,'public.producto6',6,8655);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (7,'public.producto7',4,2875);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (8,'public.producto8',0,8923);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (9,'public.producto9',4,4219);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (10,'public.producto10',1,3001);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (11,'public.producto11',9,7993);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (12,'public.producto12',3,8504);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (13,'public.producto13',10,2415);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (14,'public.producto14',5,3824);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (15,'public.producto15',10,7358);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (16,'public.producto16',7,3631);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (17,'public.producto17',3,4467);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (18,'public.producto18',2,9383);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (19,'public.producto19',6,1140);

INSERT INTO public.producto(id, descripcion, stock, precio)
VALUES (20,'public.producto20',4,102);



--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 12, true);


--
-- Name: compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compra_id_seq', 38, true);


--
-- Name: detalle_compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_compra_id_seq', 60, true);


--
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_seq', 20, true);


--
-- Name: cliente cliente_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);


--
-- Name: detalle_compra detalle_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_compra
    ADD CONSTRAINT detalle_compra_pkey PRIMARY KEY (id);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- Name: compra compra_cliente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


--
-- Name: detalle_compra detalle_compra_compra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_compra
    ADD CONSTRAINT detalle_compra_compra_id_fkey FOREIGN KEY (compra_id) REFERENCES public.compra(id);


--
-- Name: detalle_compra detalle_compra_producto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_compra
    ADD CONSTRAINT detalle_compra_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- PostgreSQL database dump complete
--

