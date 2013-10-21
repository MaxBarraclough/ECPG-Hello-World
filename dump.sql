--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: MyFirstTable; Type: TABLE; Schema: public; Owner: username; Tablespace: 
--

CREATE TABLE "MyFirstTable" (
    "Number" integer NOT NULL,
    "CorrespondingChar" character(1) NOT NULL,
    "EnglishString" character varying(9) NOT NULL,
    "XMLrepresentation" xml NOT NULL
);


ALTER TABLE public."MyFirstTable" OWNER TO username;

--
-- Data for Name: MyFirstTable; Type: TABLE DATA; Schema: public; Owner: username
--

COPY "MyFirstTable" ("Number", "CorrespondingChar", "EnglishString", "XMLrepresentation") FROM stdin;
0	0	Zero	<p>Zero</p>
7	7	Seven	<p>Seven</p>
2	2	Two	<p>Two</p>
1	1	One	<p>One</p>
9	9	Nine	<p>Nine</p>
6	6	Six	<p>Six</p>
\.


--
-- Name: CharIsUnique; Type: CONSTRAINT; Schema: public; Owner: username; Tablespace: 
--

ALTER TABLE ONLY "MyFirstTable"
    ADD CONSTRAINT "CharIsUnique" UNIQUE ("CorrespondingChar");


--
-- Name: EngStrIsUnique; Type: CONSTRAINT; Schema: public; Owner: username; Tablespace: 
--

ALTER TABLE ONLY "MyFirstTable"
    ADD CONSTRAINT "EngStrIsUnique" UNIQUE ("EnglishString");


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

