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
-- Name: affair; Type: SCHEMA; Schema: -; Owner: parent
--

CREATE SCHEMA affair;


ALTER SCHEMA affair OWNER TO parent;

--
-- Name: family; Type: SCHEMA; Schema: -; Owner: parent
--

CREATE SCHEMA family;


ALTER SCHEMA family OWNER TO parent;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bedroom; Type: TABLE; Schema: affair; Owner: dad
--

CREATE TABLE affair.bedroom (
    id integer NOT NULL,
    appliance character varying(20),
    inuse boolean DEFAULT false
);


ALTER TABLE affair.bedroom OWNER TO dad;

--
-- Name: bedroom_id_seq; Type: SEQUENCE; Schema: affair; Owner: dad
--

CREATE SEQUENCE affair.bedroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE affair.bedroom_id_seq OWNER TO dad;

--
-- Name: bedroom_id_seq; Type: SEQUENCE OWNED BY; Schema: affair; Owner: dad
--

ALTER SEQUENCE affair.bedroom_id_seq OWNED BY affair.bedroom.id;


--
-- Name: bathroom; Type: TABLE; Schema: family; Owner: parent
--

CREATE TABLE family.bathroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL,
    users text[]
);


ALTER TABLE family.bathroom OWNER TO parent;

--
-- Name: bathroom_id_seq; Type: SEQUENCE; Schema: family; Owner: parent
--

CREATE SEQUENCE family.bathroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.bathroom_id_seq OWNER TO parent;

--
-- Name: bathroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: parent
--

ALTER SEQUENCE family.bathroom_id_seq OWNED BY family.bathroom.id;


--
-- Name: childroom; Type: TABLE; Schema: family; Owner: parent
--

CREATE TABLE family.childroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL,
    users text[]
);


ALTER TABLE family.childroom OWNER TO parent;

--
-- Name: childroom_id_seq; Type: SEQUENCE; Schema: family; Owner: parent
--

CREATE SEQUENCE family.childroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.childroom_id_seq OWNER TO parent;

--
-- Name: childroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: parent
--

ALTER SEQUENCE family.childroom_id_seq OWNED BY family.childroom.id;


--
-- Name: current_roles; Type: VIEW; Schema: family; Owner: parent
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


ALTER TABLE family.current_roles OWNER TO parent;

--
-- Name: kitchen; Type: TABLE; Schema: family; Owner: parent
--

CREATE TABLE family.kitchen (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL,
    users text[]
);


ALTER TABLE family.kitchen OWNER TO parent;

--
-- Name: kitchen_id_seq; Type: SEQUENCE; Schema: family; Owner: parent
--

CREATE SEQUENCE family.kitchen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.kitchen_id_seq OWNER TO parent;

--
-- Name: kitchen_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: parent
--

ALTER SEQUENCE family.kitchen_id_seq OWNED BY family.kitchen.id;


--
-- Name: livingroom; Type: TABLE; Schema: family; Owner: parent
--

CREATE TABLE family.livingroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false,
    users text[]
);


ALTER TABLE family.livingroom OWNER TO parent;

--
-- Name: livingroom_id_seq; Type: SEQUENCE; Schema: family; Owner: parent
--

CREATE SEQUENCE family.livingroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.livingroom_id_seq OWNER TO parent;

--
-- Name: livingroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: parent
--

ALTER SEQUENCE family.livingroom_id_seq OWNED BY family.livingroom.id;


--
-- Name: parentroom; Type: TABLE; Schema: family; Owner: parent
--

CREATE TABLE family.parentroom (
    id integer NOT NULL,
    appliance character varying(20) NOT NULL,
    inuse boolean DEFAULT false NOT NULL,
    users text[]
);


ALTER TABLE family.parentroom OWNER TO parent;

--
-- Name: parentroom_id_seq; Type: SEQUENCE; Schema: family; Owner: parent
--

CREATE SEQUENCE family.parentroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE family.parentroom_id_seq OWNER TO parent;

--
-- Name: parentroom_id_seq; Type: SEQUENCE OWNED BY; Schema: family; Owner: parent
--

ALTER SEQUENCE family.parentroom_id_seq OWNED BY family.parentroom.id;


--
-- Name: bedroom id; Type: DEFAULT; Schema: affair; Owner: dad
--

ALTER TABLE ONLY affair.bedroom ALTER COLUMN id SET DEFAULT nextval('affair.bedroom_id_seq'::regclass);


--
-- Name: bathroom id; Type: DEFAULT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.bathroom ALTER COLUMN id SET DEFAULT nextval('family.bathroom_id_seq'::regclass);


--
-- Name: childroom id; Type: DEFAULT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.childroom ALTER COLUMN id SET DEFAULT nextval('family.childroom_id_seq'::regclass);


--
-- Name: kitchen id; Type: DEFAULT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.kitchen ALTER COLUMN id SET DEFAULT nextval('family.kitchen_id_seq'::regclass);


--
-- Name: livingroom id; Type: DEFAULT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.livingroom ALTER COLUMN id SET DEFAULT nextval('family.livingroom_id_seq'::regclass);


--
-- Name: parentroom id; Type: DEFAULT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.parentroom ALTER COLUMN id SET DEFAULT nextval('family.parentroom_id_seq'::regclass);


--
-- Data for Name: bedroom; Type: TABLE DATA; Schema: affair; Owner: dad
--

COPY affair.bedroom (id, appliance, inuse) FROM stdin;
1	television	f
2	bed	f
3	adult toys	t
\.


--
-- Data for Name: bathroom; Type: TABLE DATA; Schema: family; Owner: parent
--

COPY family.bathroom (id, appliance, inuse, users) FROM stdin;
1	toilet	f	\N
2	urinal	f	\N
4	bathtub	f	\N
5	sink	f	\N
3	shower	t	\N
6	lipstick	f	\N
\.


--
-- Data for Name: childroom; Type: TABLE DATA; Schema: family; Owner: parent
--

COPY family.childroom (id, appliance, inuse, users) FROM stdin;
1	desk	f	\N
2	television	f	\N
3	videogames	f	\N
4	toys	f	\N
5	bed	f	\N
6	ouija board	f	\N
7	drugs	f	\N
\.


--
-- Data for Name: kitchen; Type: TABLE DATA; Schema: family; Owner: parent
--

COPY family.kitchen (id, appliance, inuse, users) FROM stdin;
3	toaster	f	\N
5	microwave	f	\N
6	fridge	f	\N
7	freezer	f	\N
4	oven	t	\N
2	dishwasher	f	{postgres}
\.


--
-- Data for Name: livingroom; Type: TABLE DATA; Schema: family; Owner: parent
--

COPY family.livingroom (id, appliance, inuse, users) FROM stdin;
1	couch	f	\N
2	coffee table	f	\N
3	television	f	\N
4	ceiling fan	f	\N
5	boardgmaes	f	\N
6	radio	f	\N
\.


--
-- Data for Name: parentroom; Type: TABLE DATA; Schema: family; Owner: parent
--

COPY family.parentroom (id, appliance, inuse, users) FROM stdin;
1	television	f	\N
2	ceiling fan	f	\N
3	desk	f	\N
4	bed	f	\N
\.


--
-- Name: bedroom_id_seq; Type: SEQUENCE SET; Schema: affair; Owner: dad
--

SELECT pg_catalog.setval('affair.bedroom_id_seq', 3, true);


--
-- Name: bathroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: parent
--

SELECT pg_catalog.setval('family.bathroom_id_seq', 6, true);


--
-- Name: childroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: parent
--

SELECT pg_catalog.setval('family.childroom_id_seq', 7, true);


--
-- Name: kitchen_id_seq; Type: SEQUENCE SET; Schema: family; Owner: parent
--

SELECT pg_catalog.setval('family.kitchen_id_seq', 7, true);


--
-- Name: livingroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: parent
--

SELECT pg_catalog.setval('family.livingroom_id_seq', 10, true);


--
-- Name: parentroom_id_seq; Type: SEQUENCE SET; Schema: family; Owner: parent
--

SELECT pg_catalog.setval('family.parentroom_id_seq', 4, true);


--
-- Name: bedroom bedroom_pkey; Type: CONSTRAINT; Schema: affair; Owner: dad
--

ALTER TABLE ONLY affair.bedroom
    ADD CONSTRAINT bedroom_pkey PRIMARY KEY (id);


--
-- Name: bathroom bathroom_pkey; Type: CONSTRAINT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.bathroom
    ADD CONSTRAINT bathroom_pkey PRIMARY KEY (id);


--
-- Name: childroom childroom_pkey; Type: CONSTRAINT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.childroom
    ADD CONSTRAINT childroom_pkey PRIMARY KEY (id);


--
-- Name: kitchen kitchen_pkey; Type: CONSTRAINT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.kitchen
    ADD CONSTRAINT kitchen_pkey PRIMARY KEY (id);


--
-- Name: livingroom livingroom_pkey; Type: CONSTRAINT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.livingroom
    ADD CONSTRAINT livingroom_pkey PRIMARY KEY (id);


--
-- Name: parentroom parentroom_pkey; Type: CONSTRAINT; Schema: family; Owner: parent
--

ALTER TABLE ONLY family.parentroom
    ADD CONSTRAINT parentroom_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA affair; Type: ACL; Schema: -; Owner: parent
--

GRANT USAGE ON SCHEMA affair TO dad;
GRANT USAGE ON SCHEMA affair TO mistress;


--
-- Name: SCHEMA family; Type: ACL; Schema: -; Owner: parent
--

GRANT USAGE ON SCHEMA family TO child;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE bedroom; Type: ACL; Schema: affair; Owner: dad
--

GRANT SELECT,UPDATE ON TABLE affair.bedroom TO mistress;
GRANT SELECT ON TABLE affair.bedroom TO parent;


--
-- Name: TABLE bathroom; Type: ACL; Schema: family; Owner: parent
--

GRANT ALL ON TABLE family.bathroom TO child;


--
-- Name: SEQUENCE bathroom_id_seq; Type: ACL; Schema: family; Owner: parent
--

GRANT USAGE ON SEQUENCE family.bathroom_id_seq TO child;


--
-- Name: TABLE childroom; Type: ACL; Schema: family; Owner: parent
--

GRANT ALL ON TABLE family.childroom TO child;


--
-- Name: SEQUENCE childroom_id_seq; Type: ACL; Schema: family; Owner: parent
--

GRANT USAGE ON SEQUENCE family.childroom_id_seq TO child;


--
-- Name: TABLE kitchen; Type: ACL; Schema: family; Owner: parent
--

GRANT SELECT,UPDATE ON TABLE family.kitchen TO child;


--
-- Name: TABLE livingroom; Type: ACL; Schema: family; Owner: parent
--

GRANT SELECT,UPDATE ON TABLE family.livingroom TO child;


--
-- Name: TABLE parentroom; Type: ACL; Schema: family; Owner: parent
--

GRANT SELECT ON TABLE family.parentroom TO child;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: affair; Owner: dad
--

ALTER DEFAULT PRIVILEGES FOR ROLE dad IN SCHEMA affair GRANT SELECT,UPDATE ON TABLES  TO mistress;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: family; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA family GRANT USAGE ON SEQUENCES  TO parent;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA family GRANT USAGE ON SEQUENCES  TO child;


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

