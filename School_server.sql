--
-- PostgreSQL database cluster dump
--

-- Started on 2022-11-04 22:45:24

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:yVQVDR8h4ax2JIiJg/YlcA==$X9rMvxGUYfx96MjMQOWoEqzohBsRlxu5kN5D8qEratQ=:HwWgpomp2qjzZT6hVPqzHaWYU2ceRarG1I29zZKkCtQ=';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-04 22:45:24

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

-- Completed on 2022-11-04 22:45:24

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-04 22:45:24

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
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16452)
-- Name: _schdule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._schdule (
    id smallint,
    name character varying(46) DEFAULT NULL::character varying,
    description character varying(21) DEFAULT NULL::character varying,
    "time" character varying(23) DEFAULT NULL::character varying
);


ALTER TABLE public._schdule OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16458)
-- Name: _user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._user (
    email character varying(23) DEFAULT NULL::character varying,
    name character varying(6) DEFAULT NULL::character varying,
    surname character varying(9) DEFAULT NULL::character varying,
    login character varying(9) DEFAULT NULL::character varying,
    password character varying(9) DEFAULT NULL::character varying,
    id smallint,
    role smallint
);


ALTER TABLE public._user OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16416)
-- Name: bonus_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bonus_books (
    books_id integer NOT NULL,
    book_name character varying(30),
    author character varying(30),
    genre character varying(30),
    price integer,
    accepted character varying(3),
    user_id integer
);


ALTER TABLE public.bonus_books OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16771)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    id integer NOT NULL,
    name character varying,
    date date
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16770)
-- Name: book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.book ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16446)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    books_id integer NOT NULL,
    book_name character varying(30),
    author character varying(30),
    genre character varying(30),
    price integer,
    accepted character varying(3)
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16426)
-- Name: favourite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favourite (
    books_id integer NOT NULL,
    book_name character varying(30),
    author character varying(30),
    genre character varying(30),
    price integer,
    accepted character varying(3),
    user_id integer
);


ALTER TABLE public.favourite OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16436)
-- Name: library; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.library (
    books_id integer NOT NULL,
    book_name character varying(30),
    author character varying(30),
    genre character varying(30),
    price integer,
    accepted character varying(3),
    user_id integer
);


ALTER TABLE public.library OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16401)
-- Name: player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player (
    player_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.player OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16411)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(30),
    login character varying(30),
    password character varying(30),
    balance integer,
    accounttype character varying(30)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 16452)
-- Dependencies: 216
-- Data for Name: _schdule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._schdule (id, name, description, "time") FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 16458)
-- Dependencies: 217
-- Data for Name: _user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._user (email, name, surname, login, password, id, role) FROM stdin;
\.


--
-- TOC entry 3363 (class 0 OID 16416)
-- Dependencies: 212
-- Data for Name: bonus_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bonus_books (books_id, book_name, author, genre, price, accepted, user_id) FROM stdin;
\.


--
-- TOC entry 3370 (class 0 OID 16771)
-- Dependencies: 219
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (id, name, date) FROM stdin;
1	book	2022-10-17
\.


--
-- TOC entry 3366 (class 0 OID 16446)
-- Dependencies: 215
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (books_id, book_name, author, genre, price, accepted) FROM stdin;
0	1984	Orwell	novel	2000	yes
1	Rebecca	Daphne du Maurier	novel	1500	yes
2	Onegin	Pushkin	verse	3000	yes
3	Capital	Karl Marx	politics	1000	yes
4	The Republic	Plato	politics	0	yes
5	Maxim	Anna	verse	1500	yes
6	The Gatsby	Kaps	novel	2000	yes
7	Ancient Greece	Yaxar	historic	2500	yes
\.


--
-- TOC entry 3364 (class 0 OID 16426)
-- Dependencies: 213
-- Data for Name: favourite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favourite (books_id, book_name, author, genre, price, accepted, user_id) FROM stdin;
1	Onegin	Pushkin	verse	3000	yes	0
\.


--
-- TOC entry 3365 (class 0 OID 16436)
-- Dependencies: 214
-- Data for Name: library; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.library (books_id, book_name, author, genre, price, accepted, user_id) FROM stdin;
1	Onegin	Pushkin	verse	3000	yes	0
\.


--
-- TOC entry 3361 (class 0 OID 16401)
-- Dependencies: 210
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player (player_id, name) FROM stdin;
\.


--
-- TOC entry 3362 (class 0 OID 16411)
-- Dependencies: 211
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, user_name, login, password, balance, accounttype) FROM stdin;
1	Taker	Takerf	takertaker	2000	user
0	daurenf	Daurenf	mysqljava	25000	user+
4	sdvb	daurenda	daurenda	0	user
2	admin	admin	admin1234	13000	admin
\.


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 218
-- Name: book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_id_seq', 1, true);


--
-- TOC entry 3210 (class 2606 OID 16420)
-- Name: bonus_books bonus_books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus_books
    ADD CONSTRAINT bonus_books_pkey PRIMARY KEY (books_id);


--
-- TOC entry 3218 (class 2606 OID 16777)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 16450)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (books_id);


--
-- TOC entry 3212 (class 2606 OID 16430)
-- Name: favourite favourite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favourite
    ADD CONSTRAINT favourite_pkey PRIMARY KEY (books_id);


--
-- TOC entry 3214 (class 2606 OID 16440)
-- Name: library library_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.library
    ADD CONSTRAINT library_pkey PRIMARY KEY (books_id);


--
-- TOC entry 3206 (class 2606 OID 16405)
-- Name: player player_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (player_id);


--
-- TOC entry 3208 (class 2606 OID 16415)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3219 (class 2606 OID 16421)
-- Name: bonus_books bonus_books_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus_books
    ADD CONSTRAINT bonus_books_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3220 (class 2606 OID 16431)
-- Name: favourite favourite_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favourite
    ADD CONSTRAINT favourite_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3221 (class 2606 OID 16441)
-- Name: library library_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.library
    ADD CONSTRAINT library_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


-- Completed on 2022-11-04 22:45:24

--
-- PostgreSQL database dump complete
--

--
-- Database "school" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-04 22:45:24

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
-- TOC entry 3323 (class 1262 OID 16815)
-- Name: school; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE school WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE school OWNER TO postgres;

\connect school

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16823)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    login character varying(20) NOT NULL,
    password character varying(20) NOT NULL
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16822)
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.admin ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.admin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16837)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    surname character varying(20) NOT NULL,
    group_grade character varying(20) NOT NULL,
    birth date NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16836)
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.student ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3315 (class 0 OID 16823)
-- Dependencies: 210
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id, login, password) FROM stdin;
1	dauren	qwerty
\.


--
-- TOC entry 3317 (class 0 OID 16837)
-- Dependencies: 212
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, name, surname, group_grade, birth) FROM stdin;
1	Karl	Marx	A-20	2005-07-08
2	Vladimir	Putin	B-18	2008-05-01
3	Angela	Merkel	A-20	2009-03-25
5	test_name	test_surname	test_group	2009-05-30
10	Jo	cdfs	A-10	2022-11-01
\.


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 209
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 211
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 10, true);


--
-- TOC entry 3170 (class 2606 OID 16829)
-- Name: admin admin_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_login_key UNIQUE (login);


--
-- TOC entry 3172 (class 2606 OID 16827)
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 16841)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


-- Completed on 2022-11-04 22:45:24

--
-- PostgreSQL database dump complete
--

-- Completed on 2022-11-04 22:45:24

--
-- PostgreSQL database cluster dump complete
--

