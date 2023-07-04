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
INSERT INTO public.games VALUES (277, 430, 702);
INSERT INTO public.games VALUES (277, 431, 719);
INSERT INTO public.games VALUES (278, 432, 57);
INSERT INTO public.games VALUES (279, 433, 489);
INSERT INTO public.games VALUES (278, 434, 511);
INSERT INTO public.games VALUES (279, 435, 543);
INSERT INTO public.games VALUES (277, 436, 743);
INSERT INTO public.games VALUES (276, 437, 600);
INSERT INTO public.games VALUES (277, 438, 246);
INSERT INTO public.games VALUES (276, 439, 995);
INSERT INTO public.games VALUES (276, 440, 10);
INSERT INTO public.games VALUES (277, 441, 153);
INSERT INTO public.games VALUES (280, 442, 182);
INSERT INTO public.games VALUES (280, 443, 610);
INSERT INTO public.games VALUES (281, 444, 847);
INSERT INTO public.games VALUES (281, 445, 228);
INSERT INTO public.games VALUES (280, 446, 182);
INSERT INTO public.games VALUES (280, 447, 73);
INSERT INTO public.games VALUES (280, 448, 149);
INSERT INTO public.games VALUES (282, 449, 197);
INSERT INTO public.games VALUES (282, 450, 516);
INSERT INTO public.games VALUES (283, 451, 534);
INSERT INTO public.games VALUES (283, 452, 438);
INSERT INTO public.games VALUES (282, 453, 563);
INSERT INTO public.games VALUES (282, 454, 20);
INSERT INTO public.games VALUES (282, 455, 219);
INSERT INTO public.games VALUES (284, 456, 718);
INSERT INTO public.games VALUES (284, 457, 688);
INSERT INTO public.games VALUES (285, 458, 931);
INSERT INTO public.games VALUES (285, 459, 270);
INSERT INTO public.games VALUES (284, 460, 63);
INSERT INTO public.games VALUES (284, 461, 699);
INSERT INTO public.games VALUES (284, 462, 240);
INSERT INTO public.games VALUES (286, 463, 747);
INSERT INTO public.games VALUES (286, 464, 101);
INSERT INTO public.games VALUES (287, 465, 144);
INSERT INTO public.games VALUES (287, 466, 446);
INSERT INTO public.games VALUES (286, 467, 866);
INSERT INTO public.games VALUES (286, 468, 293);
INSERT INTO public.games VALUES (286, 469, 458);
INSERT INTO public.games VALUES (288, 470, 717);
INSERT INTO public.games VALUES (289, 471, 92);
INSERT INTO public.games VALUES (289, 472, 420);
INSERT INTO public.games VALUES (288, 473, 141);
INSERT INTO public.games VALUES (288, 474, 143);
INSERT INTO public.games VALUES (288, 475, 779);
INSERT INTO public.games VALUES (290, 476, 954);
INSERT INTO public.games VALUES (290, 477, 74);
INSERT INTO public.games VALUES (291, 478, 465);
INSERT INTO public.games VALUES (291, 479, 997);
INSERT INTO public.games VALUES (290, 480, 623);
INSERT INTO public.games VALUES (290, 481, 672);
INSERT INTO public.games VALUES (290, 482, 766);
INSERT INTO public.games VALUES (292, 483, 311);
INSERT INTO public.games VALUES (293, 484, 808);
INSERT INTO public.games VALUES (294, 485, 816);
INSERT INTO public.games VALUES (293, 486, 361);
INSERT INTO public.games VALUES (294, 487, 832);
INSERT INTO public.games VALUES (295, 488, 852);
INSERT INTO public.games VALUES (292, 489, 828);
INSERT INTO public.games VALUES (295, 490, 912);
INSERT INTO public.games VALUES (292, 491, 534);
INSERT INTO public.games VALUES (293, 492, 993);
INSERT INTO public.games VALUES (292, 493, 255);
INSERT INTO public.games VALUES (293, 494, 470);
INSERT INTO public.games VALUES (293, 495, 140);
INSERT INTO public.games VALUES (296, 496, 44);
INSERT INTO public.games VALUES (296, 497, 272);
INSERT INTO public.games VALUES (297, 498, 727);
INSERT INTO public.games VALUES (297, 499, 534);
INSERT INTO public.games VALUES (296, 500, 75);
INSERT INTO public.games VALUES (296, 501, 371);
INSERT INTO public.games VALUES (296, 502, 838);
INSERT INTO public.games VALUES (298, 503, 356);
INSERT INTO public.games VALUES (298, 504, 919);
INSERT INTO public.games VALUES (299, 505, 409);
INSERT INTO public.games VALUES (299, 506, 390);
INSERT INTO public.games VALUES (298, 507, 872);
INSERT INTO public.games VALUES (298, 508, 669);
INSERT INTO public.games VALUES (298, 509, 91);
INSERT INTO public.games VALUES (300, 510, 553);
INSERT INTO public.games VALUES (300, 511, 184);
INSERT INTO public.games VALUES (301, 512, 787);
INSERT INTO public.games VALUES (301, 513, 351);
INSERT INTO public.games VALUES (300, 514, 844);
INSERT INTO public.games VALUES (300, 515, 139);
INSERT INTO public.games VALUES (300, 516, 757);
INSERT INTO public.games VALUES (302, 517, 333);
INSERT INTO public.games VALUES (302, 518, 393);
INSERT INTO public.games VALUES (303, 519, 398);
INSERT INTO public.games VALUES (303, 520, 259);
INSERT INTO public.games VALUES (302, 521, 601);
INSERT INTO public.games VALUES (302, 522, 772);
INSERT INTO public.games VALUES (302, 523, 366);
INSERT INTO public.games VALUES (304, 524, 608);
INSERT INTO public.games VALUES (304, 525, 728);
INSERT INTO public.games VALUES (305, 526, 373);
INSERT INTO public.games VALUES (304, 527, 331);
INSERT INTO public.games VALUES (304, 528, 59);
INSERT INTO public.games VALUES (304, 529, 99);
INSERT INTO public.games VALUES (306, 530, 7);
INSERT INTO public.games VALUES (307, 531, 381);
INSERT INTO public.games VALUES (308, 532, 39);
INSERT INTO public.games VALUES (308, 533, 280);
INSERT INTO public.games VALUES (307, 534, 498);
INSERT INTO public.games VALUES (307, 535, 136);
INSERT INTO public.games VALUES (307, 536, 989);
INSERT INTO public.games VALUES (309, 537, 556);
INSERT INTO public.games VALUES (309, 538, 291);
INSERT INTO public.games VALUES (310, 539, 470);
INSERT INTO public.games VALUES (310, 540, 501);
INSERT INTO public.games VALUES (309, 541, 799);
INSERT INTO public.games VALUES (309, 542, 453);
INSERT INTO public.games VALUES (309, 543, 847);
INSERT INTO public.games VALUES (311, 544, 63);
INSERT INTO public.games VALUES (311, 545, 49);
INSERT INTO public.games VALUES (312, 546, 595);
INSERT INTO public.games VALUES (312, 547, 196);
INSERT INTO public.games VALUES (311, 548, 604);
INSERT INTO public.games VALUES (311, 549, 298);
INSERT INTO public.games VALUES (311, 550, 234);
INSERT INTO public.games VALUES (313, 551, 536);
INSERT INTO public.games VALUES (313, 552, 435);
INSERT INTO public.games VALUES (314, 553, 696);
INSERT INTO public.games VALUES (314, 554, 590);
INSERT INTO public.games VALUES (313, 555, 408);
INSERT INTO public.games VALUES (313, 556, 202);
INSERT INTO public.games VALUES (313, 557, 161);
INSERT INTO public.games VALUES (315, 558, 379);
INSERT INTO public.games VALUES (315, 559, 18);
INSERT INTO public.games VALUES (316, 560, 635);
INSERT INTO public.games VALUES (316, 561, 932);
INSERT INTO public.games VALUES (315, 562, 132);
INSERT INTO public.games VALUES (315, 563, 820);
INSERT INTO public.games VALUES (315, 564, 169);
INSERT INTO public.games VALUES (317, 565, 775);
INSERT INTO public.games VALUES (317, 566, 446);
INSERT INTO public.games VALUES (318, 567, 1001);
INSERT INTO public.games VALUES (318, 568, 315);
INSERT INTO public.games VALUES (317, 569, 536);
INSERT INTO public.games VALUES (317, 570, 132);
INSERT INTO public.games VALUES (317, 571, 832);
INSERT INTO public.games VALUES (319, 572, 485);
INSERT INTO public.games VALUES (319, 573, 160);
INSERT INTO public.games VALUES (320, 574, 971);
INSERT INTO public.games VALUES (320, 575, 546);
INSERT INTO public.games VALUES (319, 576, 581);
INSERT INTO public.games VALUES (319, 577, 599);
INSERT INTO public.games VALUES (319, 578, 456);
INSERT INTO public.games VALUES (321, 579, 603);
INSERT INTO public.games VALUES (322, 580, 577);
INSERT INTO public.games VALUES (322, 581, 365);
INSERT INTO public.games VALUES (321, 582, 82);
INSERT INTO public.games VALUES (321, 583, 645);
INSERT INTO public.games VALUES (321, 584, 668);
INSERT INTO public.games VALUES (323, 585, 316);
INSERT INTO public.games VALUES (323, 586, 525);
INSERT INTO public.games VALUES (324, 587, 147);
INSERT INTO public.games VALUES (323, 588, 283);
INSERT INTO public.games VALUES (323, 589, 69);
INSERT INTO public.games VALUES (323, 590, 549);
INSERT INTO public.games VALUES (325, 591, 337);
INSERT INTO public.games VALUES (325, 592, 993);
INSERT INTO public.games VALUES (326, 593, 454);
INSERT INTO public.games VALUES (326, 594, 258);
INSERT INTO public.games VALUES (325, 595, 170);
INSERT INTO public.games VALUES (325, 596, 953);
INSERT INTO public.games VALUES (325, 597, 518);
INSERT INTO public.games VALUES (327, 598, 216);
INSERT INTO public.games VALUES (327, 599, 261);
INSERT INTO public.games VALUES (328, 600, 465);
INSERT INTO public.games VALUES (328, 601, 245);
INSERT INTO public.games VALUES (327, 602, 550);
INSERT INTO public.games VALUES (327, 603, 753);
INSERT INTO public.games VALUES (327, 604, 494);
INSERT INTO public.games VALUES (329, 605, 518);
INSERT INTO public.games VALUES (329, 606, 206);
INSERT INTO public.games VALUES (330, 607, 128);
INSERT INTO public.games VALUES (330, 608, 805);
INSERT INTO public.games VALUES (329, 609, 469);
INSERT INTO public.games VALUES (329, 610, 460);
INSERT INTO public.games VALUES (329, 611, 154);
INSERT INTO public.games VALUES (331, 612, 609);
INSERT INTO public.games VALUES (331, 613, 328);
INSERT INTO public.games VALUES (332, 614, 830);
INSERT INTO public.games VALUES (332, 615, 923);
INSERT INTO public.games VALUES (331, 616, 720);
INSERT INTO public.games VALUES (331, 617, 770);
INSERT INTO public.games VALUES (331, 618, 739);
INSERT INTO public.games VALUES (333, 619, 563);
INSERT INTO public.games VALUES (333, 620, 412);
INSERT INTO public.games VALUES (334, 621, 767);
INSERT INTO public.games VALUES (334, 622, 968);
INSERT INTO public.games VALUES (333, 623, 500);
INSERT INTO public.games VALUES (333, 624, 230);
INSERT INTO public.games VALUES (333, 625, 957);
INSERT INTO public.games VALUES (335, 626, 73);
INSERT INTO public.games VALUES (335, 627, 311);
INSERT INTO public.games VALUES (336, 628, 961);
INSERT INTO public.games VALUES (336, 629, 315);
INSERT INTO public.games VALUES (335, 630, 424);
INSERT INTO public.games VALUES (335, 631, 349);
INSERT INTO public.games VALUES (335, 632, 604);
INSERT INTO public.games VALUES (337, 633, 614);
INSERT INTO public.games VALUES (338, 634, 901);
INSERT INTO public.games VALUES (338, 635, 614);
INSERT INTO public.games VALUES (337, 636, 941);
INSERT INTO public.games VALUES (337, 637, 546);
INSERT INTO public.games VALUES (337, 638, 430);
INSERT INTO public.games VALUES (339, 639, 369);
INSERT INTO public.games VALUES (339, 640, 342);
INSERT INTO public.games VALUES (340, 641, 636);
INSERT INTO public.games VALUES (340, 642, 230);
INSERT INTO public.games VALUES (339, 643, 822);
INSERT INTO public.games VALUES (339, 644, 641);
INSERT INTO public.games VALUES (339, 645, 950);
INSERT INTO public.games VALUES (341, 646, 518);
INSERT INTO public.games VALUES (341, 647, 398);
INSERT INTO public.games VALUES (342, 648, 267);
INSERT INTO public.games VALUES (342, 649, 699);
INSERT INTO public.games VALUES (341, 650, 573);
INSERT INTO public.games VALUES (341, 651, 211);
INSERT INTO public.games VALUES (341, 652, 262);
INSERT INTO public.games VALUES (343, 653, 3);
INSERT INTO public.games VALUES (343, 654, 68);
INSERT INTO public.games VALUES (344, 655, 968);
INSERT INTO public.games VALUES (344, 656, 439);
INSERT INTO public.games VALUES (343, 657, 719);
INSERT INTO public.games VALUES (343, 658, 75);
INSERT INTO public.games VALUES (343, 659, 262);
INSERT INTO public.games VALUES (345, 660, 1001);
INSERT INTO public.games VALUES (346, 661, 166);
INSERT INTO public.games VALUES (346, 662, 361);
INSERT INTO public.games VALUES (345, 663, 740);
INSERT INTO public.games VALUES (345, 664, 848);
INSERT INTO public.games VALUES (345, 665, 734);
INSERT INTO public.games VALUES (347, 666, 189);
INSERT INTO public.games VALUES (348, 667, 504);
INSERT INTO public.games VALUES (348, 668, 111);
INSERT INTO public.games VALUES (347, 669, 495);
INSERT INTO public.games VALUES (347, 670, 248);
INSERT INTO public.games VALUES (347, 671, 711);


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
INSERT INTO public.users VALUES ('user_1688468880746', 0, 0, 276);
INSERT INTO public.users VALUES ('user_1688468882811', 0, 0, 277);
INSERT INTO public.users VALUES ('user_1688468882810', 0, 0, 278);
INSERT INTO public.users VALUES ('user_1688468880745', 0, 0, 279);
INSERT INTO public.users VALUES ('user_1688468891067', 0, 0, 280);
INSERT INTO public.users VALUES ('user_1688468891066', 0, 0, 281);
INSERT INTO public.users VALUES ('user_1688468918211', 0, 0, 282);
INSERT INTO public.users VALUES ('user_1688468918210', 0, 0, 283);
INSERT INTO public.users VALUES ('user_1688468921867', 0, 0, 284);
INSERT INTO public.users VALUES ('user_1688468921866', 0, 0, 285);
INSERT INTO public.users VALUES ('user_1688468925548', 0, 0, 286);
INSERT INTO public.users VALUES ('user_1688468925547', 0, 0, 287);
INSERT INTO public.users VALUES ('user_1688468932089', 0, 0, 288);
INSERT INTO public.users VALUES ('user_1688468932088', 0, 0, 289);
INSERT INTO public.users VALUES ('user_1688468940895', 0, 0, 290);
INSERT INTO public.users VALUES ('user_1688468940894', 0, 0, 291);
INSERT INTO public.users VALUES ('user_1688468947259', 0, 0, 292);
INSERT INTO public.users VALUES ('user_1688468949848', 0, 0, 293);
INSERT INTO public.users VALUES ('user_1688468947258', 0, 0, 294);
INSERT INTO public.users VALUES ('user_1688468949847', 0, 0, 295);
INSERT INTO public.users VALUES ('user_1688468960343', 0, 0, 296);
INSERT INTO public.users VALUES ('user_1688468960342', 0, 0, 297);
INSERT INTO public.users VALUES ('user_1688468972543', 0, 0, 298);
INSERT INTO public.users VALUES ('user_1688468972542', 0, 0, 299);
INSERT INTO public.users VALUES ('user_1688468984563', 0, 0, 300);
INSERT INTO public.users VALUES ('user_1688468984562', 0, 0, 301);
INSERT INTO public.users VALUES ('user_1688468996589', 0, 0, 302);
INSERT INTO public.users VALUES ('user_1688468996588', 0, 0, 303);
INSERT INTO public.users VALUES ('user_1688469004499', 0, 0, 304);
INSERT INTO public.users VALUES ('user_1688469004498', 0, 0, 305);
INSERT INTO public.users VALUES ('chari', 0, 0, 306);
INSERT INTO public.users VALUES ('user_1688469049306', 0, 0, 307);
INSERT INTO public.users VALUES ('user_1688469049305', 0, 0, 308);
INSERT INTO public.users VALUES ('user_1688469054758', 0, 0, 309);
INSERT INTO public.users VALUES ('user_1688469054757', 0, 0, 310);
INSERT INTO public.users VALUES ('user_1688469060020', 0, 0, 311);
INSERT INTO public.users VALUES ('user_1688469060019', 0, 0, 312);
INSERT INTO public.users VALUES ('user_1688469065780', 0, 0, 313);
INSERT INTO public.users VALUES ('user_1688469065779', 0, 0, 314);
INSERT INTO public.users VALUES ('user_1688469070927', 0, 0, 315);
INSERT INTO public.users VALUES ('user_1688469070926', 0, 0, 316);
INSERT INTO public.users VALUES ('user_1688469074740', 0, 0, 317);
INSERT INTO public.users VALUES ('user_1688469074739', 0, 0, 318);
INSERT INTO public.users VALUES ('user_1688469080507', 0, 0, 319);
INSERT INTO public.users VALUES ('user_1688469080506', 0, 0, 320);
INSERT INTO public.users VALUES ('user_1688469085456', 0, 0, 321);
INSERT INTO public.users VALUES ('user_1688469085455', 0, 0, 322);
INSERT INTO public.users VALUES ('user_1688469093671', 0, 0, 323);
INSERT INTO public.users VALUES ('user_1688469093670', 0, 0, 324);
INSERT INTO public.users VALUES ('user_1688469103593', 0, 0, 325);
INSERT INTO public.users VALUES ('user_1688469103592', 0, 0, 326);
INSERT INTO public.users VALUES ('user_1688469112527', 0, 0, 327);
INSERT INTO public.users VALUES ('user_1688469112526', 0, 0, 328);
INSERT INTO public.users VALUES ('user_1688469118276', 0, 0, 329);
INSERT INTO public.users VALUES ('user_1688469118275', 0, 0, 330);
INSERT INTO public.users VALUES ('user_1688469124508', 0, 0, 331);
INSERT INTO public.users VALUES ('user_1688469124507', 0, 0, 332);
INSERT INTO public.users VALUES ('user_1688469134513', 0, 0, 333);
INSERT INTO public.users VALUES ('user_1688469134512', 0, 0, 334);
INSERT INTO public.users VALUES ('user_1688469139860', 0, 0, 335);
INSERT INTO public.users VALUES ('user_1688469139859', 0, 0, 336);
INSERT INTO public.users VALUES ('user_1688469147806', 0, 0, 337);
INSERT INTO public.users VALUES ('user_1688469147805', 0, 0, 338);
INSERT INTO public.users VALUES ('user_1688469158614', 0, 0, 339);
INSERT INTO public.users VALUES ('user_1688469158613', 0, 0, 340);
INSERT INTO public.users VALUES ('user_1688469166969', 0, 0, 341);
INSERT INTO public.users VALUES ('user_1688469166968', 0, 0, 342);
INSERT INTO public.users VALUES ('user_1688469176544', 0, 0, 343);
INSERT INTO public.users VALUES ('user_1688469176543', 0, 0, 344);
INSERT INTO public.users VALUES ('user_1688469194179', 0, 0, 345);
INSERT INTO public.users VALUES ('user_1688469194178', 0, 0, 346);
INSERT INTO public.users VALUES ('user_1688469205811', 0, 0, 347);
INSERT INTO public.users VALUES ('user_1688469205810', 0, 0, 348);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 671, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 348, true);


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

