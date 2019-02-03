--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-02-04 00:35:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16464)
-- Name: user; Type: TABLE; Schema: medicine; Owner: postgres
--

CREATE TABLE medicine."user" (
    id smallint NOT NULL,
    username character(50),
    password character(60),
    lastname character(50),
    firstname character(50),
    middlename character(50),
    enabled boolean
);


ALTER TABLE medicine."user" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16462)
-- Name: user_id_seq; Type: SEQUENCE; Schema: medicine; Owner: postgres
--

CREATE SEQUENCE medicine.user_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE medicine.user_id_seq OWNER TO postgres;

--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 197
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: medicine; Owner: postgres
--

ALTER SEQUENCE medicine.user_id_seq OWNED BY medicine."user".id;


--
-- TOC entry 2705 (class 2604 OID 16467)
-- Name: user id; Type: DEFAULT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine."user" ALTER COLUMN id SET DEFAULT nextval('medicine.user_id_seq'::regclass);


--
-- TOC entry 2832 (class 0 OID 16464)
-- Dependencies: 198
-- Data for Name: user; Type: TABLE DATA; Schema: medicine; Owner: postgres
--

COPY medicine."user" (id, username, password, lastname, firstname, middlename, enabled) FROM stdin;
2	a.merkel                                          	$2a$10$LOqePml/koRGsk2YAIOFI.4yuJ/fsSEpHUqAanEVc/1hZp9Ttp22u	Merkel                                            	Angela                                            	Glorious                                          	t
1	admin                                             	$2a$10$LOqePml/koRGsk2YAIOFI.4yuJ/fsSEpHUqAanEVc/1hZp9Ttp22u	Administrator                                     	Администратор                                     	\N	t
\.


--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 197
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: medicine; Owner: postgres
--

SELECT pg_catalog.setval('medicine.user_id_seq', 2, true);


--
-- TOC entry 2707 (class 2606 OID 16469)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 2709 (class 2606 OID 16471)
-- Name: user username_uk; Type: CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine."user"
    ADD CONSTRAINT username_uk UNIQUE (username);

-- Completed on 2019-02-04 00:35:22

--
-- PostgreSQL database dump complete
--

