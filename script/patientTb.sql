--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-02-04 00:40:23

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
-- TOC entry 203 (class 1259 OID 16506)
-- Name: patient; Type: TABLE; Schema: medicine; Owner: postgres
--

CREATE TABLE medicine.patient (
    id smallint NOT NULL,
    iin character(12),
    lastname character(50),
    firstname character(50)
);


ALTER TABLE medicine.patient OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16504)
-- Name: patient_id_seq; Type: SEQUENCE; Schema: medicine; Owner: postgres
--

CREATE SEQUENCE medicine.patient_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE medicine.patient_id_seq OWNER TO postgres;

--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 202
-- Name: patient_id_seq; Type: SEQUENCE OWNED BY; Schema: medicine; Owner: postgres
--

ALTER SEQUENCE medicine.patient_id_seq OWNED BY medicine.patient.id;


--
-- TOC entry 2705 (class 2604 OID 16509)
-- Name: patient id; Type: DEFAULT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.patient ALTER COLUMN id SET DEFAULT nextval('medicine.patient_id_seq'::regclass);


--
-- TOC entry 2830 (class 0 OID 16506)
-- Dependencies: 203
-- Data for Name: patient; Type: TABLE DATA; Schema: medicine; Owner: postgres
--

COPY medicine.patient (id, iin, lastname, firstname) FROM stdin;
3	123456123456	Mark                                              	Twen                                              
4	012345678988	Usenov                                            	Asan                                              
5	012345678977	Ivanov                                            	Ivan                                              
6	123456789123	Bill                                              	Gates                                             
8	124578215487	Messi                                             	Lionel                                            
9	123456789456	Nazarbayev                                        	Nursultan                                         
10	565656565656	Putin                                             	Vladimir                                          
11	858585858585	Nadal                                             	Rafael                                            
12	141414141414	Nadal                                             	Rafael                                            
13	123123123123	Federer                                           	Roger                                             
14	969696969696	Putin                                             	Vladimir                                          
15	111111111111	Osaka                                             	Naomi                                             
16	124578215487	Nazarbayev                                        	Nursultan                                         
17	124578215487	Nazarbayev                                        	Vladimir                                          
18	565656565656	Putin                                             	Nursultan                                         
\.


--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 202
-- Name: patient_id_seq; Type: SEQUENCE SET; Schema: medicine; Owner: postgres
--

SELECT pg_catalog.setval('medicine.patient_id_seq', 18, true);


--
-- TOC entry 2707 (class 2606 OID 16511)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);


--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE patient; Type: ACL; Schema: medicine; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE medicine.patient TO test_user;


-- Completed on 2019-02-04 00:40:24

--
-- PostgreSQL database dump complete
--

