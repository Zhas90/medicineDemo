--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-02-04 00:39:10

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
-- TOC entry 199 (class 1259 OID 16478)
-- Name: user_roles; Type: TABLE; Schema: medicine; Owner: postgres
--

CREATE TABLE medicine.user_roles (
    user_id smallint,
    role character(30)
);


ALTER TABLE medicine.user_roles OWNER TO postgres;

--
-- TOC entry 2827 (class 0 OID 16478)
-- Dependencies: 199
-- Data for Name: user_roles; Type: TABLE DATA; Schema: medicine; Owner: postgres
--

COPY medicine.user_roles (user_id, role) FROM stdin;
1	ROLE_ADMIN                    
2	ROLE_DOCTOR                   
\.


--
-- TOC entry 2705 (class 2606 OID 16481)
-- Name: user_roles user_id_fk; Type: FK CONSTRAINT; Schema: medicine; Owner: postgres
--

ALTER TABLE ONLY medicine.user_roles
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES medicine."user"(id);


--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE user_roles; Type: ACL; Schema: medicine; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE medicine.user_roles TO test_user;


-- Completed on 2019-02-04 00:39:11

--
-- PostgreSQL database dump complete
--

