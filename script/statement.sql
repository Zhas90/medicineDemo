--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-02-04 00:41:32

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
-- TOC entry 205 (class 1259 OID 16515)
-- Name: statement; Type: TABLE; Schema: medicine; Owner: postgres
--

CREATE TABLE medicine.statement (
    id smallint NOT NULL,
    patient_id smallint,
    doctor_id smallint,
    title text,
    patient_complaint text,
    conclusion text,
    created_date date
);


ALTER TABLE medicine.statement OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16513)
-- Name: statement_id_seq; Type: SEQUENCE; Schema: medicine; Owner: postgres
--

CREATE SEQUENCE medicine.statement_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE medicine.statement_id_seq OWNER TO postgres;

--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 204
-- Name: statement_id_seq; Type: SEQUENCE OWNED BY; Schema: medicine; Owner: postgres
--

ALTER SEQUENCE medicine.statement_id_seq OWNED BY medicine.statement.id;


--
-- TOC entry 2705 (class 2604 OID 16518)
-- Name: statement id; Type: DEFAULT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.statement ALTER COLUMN id SET DEFAULT nextval('medicine.statement_id_seq'::regclass);


--
-- TOC entry 2832 (class 0 OID 16515)
-- Dependencies: 205
-- Data for Name: statement; Type: TABLE DATA; Schema: medicine; Owner: postgres
--

COPY medicine.statement (id, patient_id, doctor_id, title, patient_complaint, conclusion, created_date) FROM stdin;
2	3	\N	Подозрение на грыжу позвоночника	Боли в пояснице	Сделать МРТ	2019-02-02
3	3	\N	Title of statement	Complaint test	Conclusion test	2019-02-03
4	3	1	tsst	jhjhjkjkjk		2019-02-03
5	8	1	nbnbnbn	nbnbnbn	v cvcvcv	2019-02-03
6	3	1	TTT	TTT	TTT	2019-02-03
7	4	1	Gggg	nnnnmmm	test test test	2019-02-03
8	3	2	TETETE	FEFEFEFEF	FEFEFEFEF	2019-02-03
9	10	1	Test	Test	Test	2019-02-03
10	3	1	Ddddddd	ffffffffffffffff	Cccccccccccccc	2019-02-03
11	16	1	mmm	mmm	mmm	2019-02-03
12	4	1	RewRew	Ddeddedd	Ffrfrfgfghh	2019-02-03
\.


--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 204
-- Name: statement_id_seq; Type: SEQUENCE SET; Schema: medicine; Owner: postgres
--

SELECT pg_catalog.setval('medicine.statement_id_seq', 12, true);


--
-- TOC entry 2707 (class 2606 OID 16523)
-- Name: statement statement_pkey; Type: CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.statement
    ADD CONSTRAINT statement_pkey PRIMARY KEY (id);


--
-- TOC entry 2709 (class 2606 OID 16529)
-- Name: statement statement_doctor_id_fkey; Type: FK CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.statement
    ADD CONSTRAINT statement_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES medicine."user"(id);


--
-- TOC entry 2708 (class 2606 OID 16524)
-- Name: statement statement_patient_id_fkey; Type: FK CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.statement
    ADD CONSTRAINT statement_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES medicine.patient(id);


--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE statement; Type: ACL; Schema: medicine; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE medicine.statement TO test_user;


-- Completed on 2019-02-04 00:41:33

--
-- PostgreSQL database dump complete
--

