--
-- PostgreSQL database dump
--

-- Dumped from database version 13.16 (Debian 13.16-0+deb11u1)
-- Dumped by pg_dump version 13.16 (Debian 13.16-0+deb11u1)

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
-- Name: affair; Type: SCHEMA; Schema: -; Owner: dad
--

CREATE SCHEMA affair;


ALTER SCHEMA affair OWNER TO dad;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bedroom; Type: TABLE; Schema: affair; Owner: postgres
--

CREATE TABLE affair.bedroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false
);


ALTER TABLE affair.bedroom OWNER TO postgres;

--
-- Name: bedroom_id_seq; Type: SEQUENCE; Schema: affair; Owner: postgres
--

CREATE SEQUENCE affair.bedroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE affair.bedroom_id_seq OWNER TO postgres;

--
-- Name: bedroom_id_seq; Type: SEQUENCE OWNED BY; Schema: affair; Owner: postgres
--

ALTER SEQUENCE affair.bedroom_id_seq OWNED BY affair.bedroom.id;


--
-- Name: bedroom id; Type: DEFAULT; Schema: affair; Owner: postgres
--

ALTER TABLE ONLY affair.bedroom ALTER COLUMN id SET DEFAULT nextval('affair.bedroom_id_seq'::regclass);


--
-- Data for Name: bedroom; Type: TABLE DATA; Schema: affair; Owner: postgres
--

COPY affair.bedroom (id, appliance, inuse) FROM stdin;
1	television	f
2	desk	f
3	bed	f
4	adult toys	f
\.


--
-- Name: bedroom_id_seq; Type: SEQUENCE SET; Schema: affair; Owner: postgres
--

SELECT pg_catalog.setval('affair.bedroom_id_seq', 4, true);


--
-- Name: bedroom bedroom_pkey; Type: CONSTRAINT; Schema: affair; Owner: postgres
--

ALTER TABLE ONLY affair.bedroom
    ADD CONSTRAINT bedroom_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE bedroom; Type: ACL; Schema: affair; Owner: postgres
--

GRANT ALL ON TABLE affair.bedroom TO mistress;


--
-- PostgreSQL database dump complete
--

