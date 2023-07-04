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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

INSERT INTO public.games VALUES (240, 309, 564);
INSERT INTO public.games VALUES (240, 310, 91);
INSERT INTO public.games VALUES (241, 311, 836);
INSERT INTO public.games VALUES (241, 312, 122);
INSERT INTO public.games VALUES (240, 313, 967);
INSERT INTO public.games VALUES (240, 314, 782);
INSERT INTO public.games VALUES (240, 315, 97);
INSERT INTO public.games VALUES (242, 316, 211);
INSERT INTO public.games VALUES (242, 317, 65);
INSERT INTO public.games VALUES (243, 318, 487);
INSERT INTO public.games VALUES (243, 319, 450);
INSERT INTO public.games VALUES (242, 320, 239);
INSERT INTO public.games VALUES (242, 321, 507);
INSERT INTO public.games VALUES (242, 322, 339);
INSERT INTO public.games VALUES (244, 323, 708);
INSERT INTO public.games VALUES (244, 324, 894);
INSERT INTO public.games VALUES (245, 325, 234);
INSERT INTO public.games VALUES (245, 326, 583);
INSERT INTO public.games VALUES (244, 327, 590);
INSERT INTO public.games VALUES (244, 328, 929);
INSERT INTO public.games VALUES (244, 329, 814);
INSERT INTO public.games VALUES (246, 330, 805);
INSERT INTO public.games VALUES (246, 331, 793);
INSERT INTO public.games VALUES (247, 332, 134);
INSERT INTO public.games VALUES (247, 333, 17);
INSERT INTO public.games VALUES (246, 334, 741);
INSERT INTO public.games VALUES (246, 335, 370);
INSERT INTO public.games VALUES (246, 336, 150);
INSERT INTO public.games VALUES (248, 337, 747);
INSERT INTO public.games VALUES (248, 338, 54);
INSERT INTO public.games VALUES (249, 339, 477);
INSERT INTO public.games VALUES (249, 340, 283);
INSERT INTO public.games VALUES (248, 341, 328);
INSERT INTO public.games VALUES (248, 342, 603);
INSERT INTO public.games VALUES (248, 343, 396);
INSERT INTO public.games VALUES (250, 344, 411);
INSERT INTO public.games VALUES (250, 345, 401);
INSERT INTO public.games VALUES (251, 346, 510);
INSERT INTO public.games VALUES (250, 347, 562);
INSERT INTO public.games VALUES (250, 348, 728);
INSERT INTO public.games VALUES (250, 349, 232);
INSERT INTO public.games VALUES (252, 350, 335);
INSERT INTO public.games VALUES (252, 351, 367);
INSERT INTO public.games VALUES (253, 352, 889);
INSERT INTO public.games VALUES (253, 353, 178);
INSERT INTO public.games VALUES (252, 354, 225);
INSERT INTO public.games VALUES (252, 355, 275);
INSERT INTO public.games VALUES (252, 356, 220);
INSERT INTO public.games VALUES (254, 357, 9);
INSERT INTO public.games VALUES (254, 358, 818);
INSERT INTO public.games VALUES (255, 359, 141);
INSERT INTO public.games VALUES (255, 360, 86);
INSERT INTO public.games VALUES (254, 361, 133);
INSERT INTO public.games VALUES (254, 362, 858);
INSERT INTO public.games VALUES (254, 363, 856);
INSERT INTO public.games VALUES (256, 364, 910);
INSERT INTO public.games VALUES (256, 365, 580);
INSERT INTO public.games VALUES (257, 366, 134);
INSERT INTO public.games VALUES (257, 367, 31);
INSERT INTO public.games VALUES (256, 368, 718);
INSERT INTO public.games VALUES (256, 369, 731);
INSERT INTO public.games VALUES (256, 370, 785);
INSERT INTO public.games VALUES (258, 371, 109);
INSERT INTO public.games VALUES (258, 372, 188);
INSERT INTO public.games VALUES (259, 373, 82);
INSERT INTO public.games VALUES (259, 374, 65);
INSERT INTO public.games VALUES (258, 375, 28);
INSERT INTO public.games VALUES (258, 376, 439);
INSERT INTO public.games VALUES (258, 377, 810);
INSERT INTO public.games VALUES (260, 378, 151);
INSERT INTO public.games VALUES (260, 379, 462);
INSERT INTO public.games VALUES (261, 380, 38);
INSERT INTO public.games VALUES (261, 381, 672);
INSERT INTO public.games VALUES (260, 382, 406);
INSERT INTO public.games VALUES (260, 383, 803);
INSERT INTO public.games VALUES (260, 384, 28);
INSERT INTO public.games VALUES (262, 385, 269);
INSERT INTO public.games VALUES (262, 386, 648);
INSERT INTO public.games VALUES (263, 387, 665);
INSERT INTO public.games VALUES (263, 388, 90);
INSERT INTO public.games VALUES (262, 389, 433);
INSERT INTO public.games VALUES (262, 390, 913);
INSERT INTO public.games VALUES (262, 391, 134);
INSERT INTO public.games VALUES (264, 392, 83);
INSERT INTO public.games VALUES (264, 393, 982);
INSERT INTO public.games VALUES (265, 394, 697);
INSERT INTO public.games VALUES (265, 395, 799);
INSERT INTO public.games VALUES (264, 396, 762);
INSERT INTO public.games VALUES (264, 397, 33);
INSERT INTO public.games VALUES (264, 398, 456);
INSERT INTO public.games VALUES (266, 399, 994);
INSERT INTO public.games VALUES (267, 400, 994);
INSERT INTO public.games VALUES (267, 401, 983);
INSERT INTO public.games VALUES (266, 402, 490);
INSERT INTO public.games VALUES (266, 403, 522);
INSERT INTO public.games VALUES (266, 404, 89);
INSERT INTO public.games VALUES (268, 405, 106);
INSERT INTO public.games VALUES (268, 406, 266);
INSERT INTO public.games VALUES (269, 407, 143);
INSERT INTO public.games VALUES (269, 408, 65);
INSERT INTO public.games VALUES (268, 409, 827);
INSERT INTO public.games VALUES (268, 410, 90);
INSERT INTO public.games VALUES (268, 411, 197);
INSERT INTO public.games VALUES (270, 412, 744);
INSERT INTO public.games VALUES (270, 413, 346);
INSERT INTO public.games VALUES (271, 414, 685);
INSERT INTO public.games VALUES (271, 415, 914);
INSERT INTO public.games VALUES (270, 416, 561);
INSERT INTO public.games VALUES (270, 417, 531);
INSERT INTO public.games VALUES (270, 418, 707);
INSERT INTO public.games VALUES (272, 419, 185);
INSERT INTO public.games VALUES (272, 420, 885);
INSERT INTO public.games VALUES (273, 421, 131);
INSERT INTO public.games VALUES (273, 422, 149);
INSERT INTO public.games VALUES (272, 423, 244);
INSERT INTO public.games VALUES (272, 424, 369);
INSERT INTO public.games VALUES (272, 425, 779);
INSERT INTO public.games VALUES (274, 426, 93);
INSERT INTO public.games VALUES (275, 427, 593);
INSERT INTO public.games VALUES (275, 428, 71);
INSERT INTO public.games VALUES (275, 429, 399);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1688466372790', 0, 0, 240);
INSERT INTO public.users VALUES ('user_1688466372789', 0, 0, 241);
INSERT INTO public.users VALUES ('user_1688466381812', 0, 0, 242);
INSERT INTO public.users VALUES ('user_1688466381811', 0, 0, 243);
INSERT INTO public.users VALUES ('user_1688466388194', 0, 0, 244);
INSERT INTO public.users VALUES ('user_1688466388193', 0, 0, 245);
INSERT INTO public.users VALUES ('user_1688466407908', 0, 0, 246);
INSERT INTO public.users VALUES ('user_1688466407907', 0, 0, 247);
INSERT INTO public.users VALUES ('user_1688466417271', 0, 0, 248);
INSERT INTO public.users VALUES ('user_1688466417270', 0, 0, 249);
INSERT INTO public.users VALUES ('user_1688466425513', 0, 0, 250);
INSERT INTO public.users VALUES ('user_1688466425512', 0, 0, 251);
INSERT INTO public.users VALUES ('user_1688466431593', 0, 0, 252);
INSERT INTO public.users VALUES ('user_1688466431592', 0, 0, 253);
INSERT INTO public.users VALUES ('user_1688466440324', 0, 0, 254);
INSERT INTO public.users VALUES ('user_1688466440323', 0, 0, 255);
INSERT INTO public.users VALUES ('user_1688466446640', 0, 0, 256);
INSERT INTO public.users VALUES ('user_1688466446639', 0, 0, 257);
INSERT INTO public.users VALUES ('user_1688466453699', 0, 0, 258);
INSERT INTO public.users VALUES ('user_1688466453698', 0, 0, 259);
INSERT INTO public.users VALUES ('user_1688466457537', 0, 0, 260);
INSERT INTO public.users VALUES ('user_1688466457536', 0, 0, 261);
INSERT INTO public.users VALUES ('user_1688466461361', 0, 0, 262);
INSERT INTO public.users VALUES ('user_1688466461360', 0, 0, 263);
INSERT INTO public.users VALUES ('user_1688466465130', 0, 0, 264);
INSERT INTO public.users VALUES ('user_1688466465129', 0, 0, 265);
INSERT INTO public.users VALUES ('user_1688466475096', 0, 0, 266);
INSERT INTO public.users VALUES ('user_1688466475095', 0, 0, 267);
INSERT INTO public.users VALUES ('user_1688466481296', 0, 0, 268);
INSERT INTO public.users VALUES ('user_1688466481295', 0, 0, 269);
INSERT INTO public.users VALUES ('user_1688466484898', 0, 0, 270);
INSERT INTO public.users VALUES ('user_1688466484897', 0, 0, 271);
INSERT INTO public.users VALUES ('user_1688466489885', 0, 0, 272);
INSERT INTO public.users VALUES ('user_1688466489884', 0, 0, 273);
INSERT INTO public.users VALUES ('user_1688466784537', 0, 0, 274);
INSERT INTO public.users VALUES ('user_1688466784538', 0, 0, 275);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 429, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 275, true);


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

