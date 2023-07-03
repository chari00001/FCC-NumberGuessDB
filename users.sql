--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE users;
--
-- Name: users; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE users OWNER TO freecodecamp;

\connect users

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    game_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer DEFAULT 0 NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 5);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('chari', 0, 0, 1);
INSERT INTO public.users VALUES ('user_1688383429159', 0, 0, 2);
INSERT INTO public.users VALUES ('user_1688383429158', 0, 0, 3);
INSERT INTO public.users VALUES ('user_1688383482307', 0, 0, 4);
INSERT INTO public.users VALUES ('user_1688383482306', 0, 0, 5);
INSERT INTO public.users VALUES ('user_1688383548643', 0, 0, 6);
INSERT INTO public.users VALUES ('user_1688383548642', 0, 0, 7);
INSERT INTO public.users VALUES ('berk', 0, 0, 8);
INSERT INTO public.users VALUES ('user_1688383832193', 0, 0, 9);
INSERT INTO public.users VALUES ('user_1688383832192', 0, 0, 10);
INSERT INTO public.users VALUES ('CHARİ', 0, 0, 11);
INSERT INTO public.users VALUES ('user_1688384902756', 0, 0, 12);
INSERT INTO public.users VALUES ('user_1688384902755', 0, 0, 13);
INSERT INTO public.users VALUES ('user_1688385009061', 0, 0, 14);
INSERT INTO public.users VALUES ('user_1688385009060', 0, 0, 15);
INSERT INTO public.users VALUES ('user_1688385196231', 0, 0, 16);
INSERT INTO public.users VALUES ('user_1688385196230', 0, 0, 17);
INSERT INTO public.users VALUES ('user_1688385251450', 0, 0, 18);
INSERT INTO public.users VALUES ('user_1688385251449', 0, 0, 19);
INSERT INTO public.users VALUES ('user_1688385273917', 0, 0, 20);
INSERT INTO public.users VALUES ('user_1688385273916', 0, 0, 21);
INSERT INTO public.users VALUES ('user_1688385279876', 0, 0, 22);
INSERT INTO public.users VALUES ('user_1688385279875', 0, 0, 23);
INSERT INTO public.users VALUES ('user_1688385282886', 0, 0, 24);
INSERT INTO public.users VALUES ('user_1688385282885', 0, 0, 25);
INSERT INTO public.users VALUES ('user_1688386356578', 0, 0, 26);
INSERT INTO public.users VALUES ('user_1688386356577', 0, 0, 27);
INSERT INTO public.users VALUES ('user_1688386395006', 0, 0, 28);
INSERT INTO public.users VALUES ('user_1688386395005', 0, 0, 29);
INSERT INTO public.users VALUES ('user_1688386682031', 0, 0, 30);
INSERT INTO public.users VALUES ('user_1688386682030', 0, 0, 31);
INSERT INTO public.users VALUES ('user_1688386920147', 0, 0, 32);
INSERT INTO public.users VALUES ('user_1688386920146', 0, 0, 33);
INSERT INTO public.users VALUES ('user_1688386925509', 0, 0, 34);
INSERT INTO public.users VALUES ('user_1688386925508', 0, 0, 35);
INSERT INTO public.users VALUES ('user_1688386943142', 0, 0, 36);
INSERT INTO public.users VALUES ('user_1688386943141', 0, 0, 37);
INSERT INTO public.users VALUES ('user_1688386947930', 0, 0, 38);
INSERT INTO public.users VALUES ('user_1688386947929', 0, 0, 39);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

