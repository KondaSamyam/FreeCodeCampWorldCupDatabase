--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (449, 2018, 'Final', 714, 715, 4, 2);
INSERT INTO public.games VALUES (450, 2018, 'Third Place', 716, 717, 2, 0);
INSERT INTO public.games VALUES (451, 2018, 'Semi-Final', 715, 717, 2, 1);
INSERT INTO public.games VALUES (452, 2018, 'Semi-Final', 714, 716, 1, 0);
INSERT INTO public.games VALUES (453, 2018, 'Quarter-Final', 715, 718, 3, 2);
INSERT INTO public.games VALUES (454, 2018, 'Quarter-Final', 717, 719, 2, 0);
INSERT INTO public.games VALUES (455, 2018, 'Quarter-Final', 716, 720, 2, 1);
INSERT INTO public.games VALUES (456, 2018, 'Quarter-Final', 714, 721, 2, 0);
INSERT INTO public.games VALUES (457, 2018, 'Eighth-Final', 717, 722, 2, 1);
INSERT INTO public.games VALUES (458, 2018, 'Eighth-Final', 719, 723, 1, 0);
INSERT INTO public.games VALUES (459, 2018, 'Eighth-Final', 716, 724, 3, 2);
INSERT INTO public.games VALUES (460, 2018, 'Eighth-Final', 720, 725, 2, 0);
INSERT INTO public.games VALUES (461, 2018, 'Eighth-Final', 715, 726, 2, 1);
INSERT INTO public.games VALUES (462, 2018, 'Eighth-Final', 718, 727, 2, 1);
INSERT INTO public.games VALUES (463, 2018, 'Eighth-Final', 721, 728, 2, 1);
INSERT INTO public.games VALUES (464, 2018, 'Eighth-Final', 714, 729, 4, 3);
INSERT INTO public.games VALUES (465, 2014, 'Final', 730, 729, 1, 0);
INSERT INTO public.games VALUES (466, 2014, 'Third Place', 731, 720, 3, 0);
INSERT INTO public.games VALUES (467, 2014, 'Semi-Final', 729, 731, 1, 0);
INSERT INTO public.games VALUES (468, 2014, 'Semi-Final', 730, 720, 7, 1);
INSERT INTO public.games VALUES (469, 2014, 'Quarter-Final', 731, 732, 1, 0);
INSERT INTO public.games VALUES (470, 2014, 'Quarter-Final', 729, 716, 1, 0);
INSERT INTO public.games VALUES (471, 2014, 'Quarter-Final', 720, 722, 2, 1);
INSERT INTO public.games VALUES (472, 2014, 'Quarter-Final', 730, 714, 1, 0);
INSERT INTO public.games VALUES (473, 2014, 'Eighth-Final', 720, 733, 2, 1);
INSERT INTO public.games VALUES (474, 2014, 'Eighth-Final', 722, 721, 2, 0);
INSERT INTO public.games VALUES (475, 2014, 'Eighth-Final', 714, 734, 2, 0);
INSERT INTO public.games VALUES (476, 2014, 'Eighth-Final', 730, 735, 2, 1);
INSERT INTO public.games VALUES (477, 2014, 'Eighth-Final', 731, 725, 2, 1);
INSERT INTO public.games VALUES (478, 2014, 'Eighth-Final', 732, 736, 2, 1);
INSERT INTO public.games VALUES (479, 2014, 'Eighth-Final', 729, 723, 1, 0);
INSERT INTO public.games VALUES (480, 2014, 'Eighth-Final', 716, 737, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (714, 'France');
INSERT INTO public.teams VALUES (715, 'Croatia');
INSERT INTO public.teams VALUES (716, 'Belgium');
INSERT INTO public.teams VALUES (717, 'England');
INSERT INTO public.teams VALUES (718, 'Russia');
INSERT INTO public.teams VALUES (719, 'Sweden');
INSERT INTO public.teams VALUES (720, 'Brazil');
INSERT INTO public.teams VALUES (721, 'Uruguay');
INSERT INTO public.teams VALUES (722, 'Colombia');
INSERT INTO public.teams VALUES (723, 'Switzerland');
INSERT INTO public.teams VALUES (724, 'Japan');
INSERT INTO public.teams VALUES (725, 'Mexico');
INSERT INTO public.teams VALUES (726, 'Denmark');
INSERT INTO public.teams VALUES (727, 'Spain');
INSERT INTO public.teams VALUES (728, 'Portugal');
INSERT INTO public.teams VALUES (729, 'Argentina');
INSERT INTO public.teams VALUES (730, 'Germany');
INSERT INTO public.teams VALUES (731, 'Netherlands');
INSERT INTO public.teams VALUES (732, 'Costa Rica');
INSERT INTO public.teams VALUES (733, 'Chile');
INSERT INTO public.teams VALUES (734, 'Nigeria');
INSERT INTO public.teams VALUES (735, 'Algeria');
INSERT INTO public.teams VALUES (736, 'Greece');
INSERT INTO public.teams VALUES (737, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 480, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 737, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_oppenent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_oppenent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

