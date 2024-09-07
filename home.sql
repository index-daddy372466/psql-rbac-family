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
-- Name: affair; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA affair;


ALTER SCHEMA affair OWNER TO postgres;

--
-- Name: family; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA family;


ALTER SCHEMA family OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bathroom; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.bathroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL
);


ALTER TABLE family.bathroom OWNER TO postgres;

--
-- Name: bathroom_id_seq; Type: SEQUENCE; Schema: family; Owner: postgres
--

CREATE SEQUENCE family.bathroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.bathroom_id_seq OWNER TO postgres;

--
-- Name: bathroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: postgres
--

ALTER SEQUENCE family.bathroom_id_seq OWNED BY family.bathroom.id;


--
-- Name: childroom; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.childroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL
);


ALTER TABLE family.childroom OWNER TO postgres;

--
-- Name: childroom_id_seq; Type: SEQUENCE; Schema: family; Owner: postgres
--

CREATE SEQUENCE family.childroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.childroom_id_seq OWNER TO postgres;

--
-- Name: childroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: postgres
--

ALTER SEQUENCE family.childroom_id_seq OWNED BY family.childroom.id;


--
-- Name: current_roles; Type: VIEW; Schema: family; Owner: postgres
--

CREATE VIEW family.current_roles AS
 SELECT pg_roles.rolname,
    pg_roles.rolsuper,
    pg_roles.rolinherit,
    pg_roles.rolcreaterole,
    pg_roles.rolcreatedb,
    pg_roles.rolcanlogin,
    pg_roles.rolreplication,
    pg_roles.rolconnlimit,
    pg_roles.rolpassword,
    pg_roles.rolvaliduntil,
    pg_roles.rolbypassrls,
    pg_roles.rolconfig,
    pg_roles.oid
   FROM pg_roles
  WHERE ((pg_roles.rolname !~~ 'pg%'::text) AND (pg_roles.rolname !~~ 'postgres'::text));


ALTER TABLE family.current_roles OWNER TO postgres;

--
-- Name: kitchen; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.kitchen (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL
);


ALTER TABLE family.kitchen OWNER TO postgres;

--
-- Name: kitchen_id_seq; Type: SEQUENCE; Schema: family; Owner: postgres
--

CREATE SEQUENCE family.kitchen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.kitchen_id_seq OWNER TO postgres;

--
-- Name: kitchen_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: postgres
--

ALTER SEQUENCE family.kitchen_id_seq OWNED BY family.kitchen.id;


--
-- Name: livingroom; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.livingroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false
);


ALTER TABLE family.livingroom OWNER TO postgres;

--
-- Name: livingroom_id_seq; Type: SEQUENCE; Schema: family; Owner: postgres
--

CREATE SEQUENCE family.livingroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.livingroom_id_seq OWNER TO postgres;

--
-- Name: livingroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: postgres
--

ALTER SEQUENCE family.livingroom_id_seq OWNED BY family.livingroom.id;


--
-- Name: parentroom; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.parentroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL
);


ALTER TABLE family.parentroom OWNER TO postgres;

--
-- Name: parentroom_id_seq; Type: SEQUENCE; Schema: family; Owner: postgres
--

CREATE SEQUENCE family.parentroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.parentroom_id_seq OWNER TO postgres;

--
-- Name: parentroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: postgres
--

ALTER SEQUENCE family.parentroom_id_seq OWNED BY family.parentroom.id;


--
-- Name: bathroom id; Type: DEFAULT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.bathroom ALTER COLUMN id SET DEFAULT nextval('family.bathroom_id_seq'::regclass);


--
-- Name: childroom id; Type: DEFAULT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.childroom ALTER COLUMN id SET DEFAULT nextval('family.childroom_id_seq'::regclass);


--
-- Name: kitchen id; Type: DEFAULT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.kitchen ALTER COLUMN id SET DEFAULT nextval('family.kitchen_id_seq'::regclass);


--
-- Name: livingroom id; Type: DEFAULT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.livingroom ALTER COLUMN id SET DEFAULT nextval('family.livingroom_id_seq'::regclass);


--
-- Name: parentroom id; Type: DEFAULT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.parentroom ALTER COLUMN id SET DEFAULT nextval('family.parentroom_id_seq'::regclass);


--
-- Data for Name: bathroom; Type: TABLE DATA; Schema: family; Owner: postgres
--

COPY family.bathroom (id, appliance, inuse) FROM stdin;
1	toilet	f
2	urinal	f
3	shower	f
4	bathtub	f
5	sink	f
\.


--
-- Data for Name: childroom; Type: TABLE DATA; Schema: family; Owner: postgres
--

COPY family.childroom (id, appliance, inuse) FROM stdin;
1	desk	f
2	television	f
3	videogames	f
4	toys	f
5	bed	f
\.


--
-- Data for Name: kitchen; Type: TABLE DATA; Schema: family; Owner: postgres
--

COPY family.kitchen (id, appliance, inuse) FROM stdin;
1	sink	f
2	dishwasher	f
3	toaster	f
4	oven	f
5	microwave	f
6	fridge	f
7	freezer	f
\.


--
-- Data for Name: livingroom; Type: TABLE DATA; Schema: family; Owner: postgres
--

COPY family.livingroom (id, appliance, inuse) FROM stdin;
1	couch	f
2	coffee table	f
3	television	f
4	ceiling fan	f
5	boardgmaes	f
6	radio	f
\.


--
-- Data for Name: parentroom; Type: TABLE DATA; Schema: family; Owner: postgres
--

COPY family.parentroom (id, appliance, inuse) FROM stdin;
1	television	f
2	ceiling fan	f
3	desk	f
4	bed	f
\.


--
-- Name: bathroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: postgres
--

SELECT pg_catalog.setval('family.bathroom_id_seq', 5, true);


--
-- Name: childroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: postgres
--

SELECT pg_catalog.setval('family.childroom_id_seq', 5, true);


--
-- Name: kitchen_id_seq; Type: SEQUENCE SET; Schema: family; Owner: postgres
--

SELECT pg_catalog.setval('family.kitchen_id_seq', 7, true);


--
-- Name: livingroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: postgres
--

SELECT pg_catalog.setval('family.livingroom_id_seq', 10, true);


--
-- Name: parentroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: postgres
--

SELECT pg_catalog.setval('family.parentroom_id_seq', 4, true);


--
-- Name: bathroom bathroom_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.bathroom
    ADD CONSTRAINT bathroom_pkey PRIMARY KEY (id);


--
-- Name: childroom childroom_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.childroom
    ADD CONSTRAINT childroom_pkey PRIMARY KEY (id);


--
-- Name: kitchen kitchen_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.kitchen
    ADD CONSTRAINT kitchen_pkey PRIMARY KEY (id);


--
-- Name: livingroom livingroom_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.livingroom
    ADD CONSTRAINT livingroom_pkey PRIMARY KEY (id);


--
-- Name: parentroom parentroom_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.parentroom
    ADD CONSTRAINT parentroom_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA affair; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA affair TO dad;


--
-- Name: SCHEMA family; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA family TO parent;
GRANT USAGE ON SCHEMA family TO child;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE bathroom; Type: ACL; Schema: family; Owner: postgres
--

GRANT ALL ON TABLE family.bathroom TO parent;
GRANT ALL ON TABLE family.bathroom TO child;


--
-- Name: TABLE childroom; Type: ACL; Schema: family; Owner: postgres
--

GRANT ALL ON TABLE family.childroom TO parent;
GRANT ALL ON TABLE family.childroom TO child;


--
-- Name: TABLE current_roles; Type: ACL; Schema: family; Owner: postgres
--

GRANT ALL ON TABLE family.current_roles TO parent;


--
-- Name: TABLE kitchen; Type: ACL; Schema: family; Owner: postgres
--

GRANT ALL ON TABLE family.kitchen TO parent;
GRANT SELECT,UPDATE ON TABLE family.kitchen TO child;


--
-- Name: TABLE livingroom; Type: ACL; Schema: family; Owner: postgres
--

GRANT ALL ON TABLE family.livingroom TO parent;
GRANT SELECT,UPDATE ON TABLE family.livingroom TO child;


--
-- Name: TABLE parentroom; Type: ACL; Schema: family; Owner: postgres
--

GRANT ALL ON TABLE family.parentroom TO parent;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO parent;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: child1
--

ALTER DEFAULT PRIVILEGES FOR ROLE child1 GRANT ALL ON TABLES  TO parent;


--
-- PostgreSQL database dump complete
--

