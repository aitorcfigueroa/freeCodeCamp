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
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('user_1679863796168', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863796169', 4, 1000);
INSERT INTO public.games VALUES ('user_1679863807213', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863807214', 5, 1000);
INSERT INTO public.games VALUES ('user_1679864537613', 2, 539);
INSERT INTO public.games VALUES ('user_1679865144288', 2, 199);
INSERT INTO public.games VALUES ('user_1679863478463', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863937080', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863478464', 4, 1000);
INSERT INTO public.games VALUES ('user_1679864537614', 5, 184);
INSERT INTO public.games VALUES ('user_1679863542158', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863937081', 4, 1000);
INSERT INTO public.games VALUES ('user_1679863542159', 4, 1000);
INSERT INTO public.games VALUES ('user_1679865144289', 5, 406);
INSERT INTO public.games VALUES ('user_1679863586004', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863962484', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863586005', 5, 1000);
INSERT INTO public.games VALUES ('user_1679863962485', 4, 1000);
INSERT INTO public.games VALUES ('user_1679863719997', 1, 1000);
INSERT INTO public.games VALUES ('user_1679863719998', 5, 1000);
INSERT INTO public.games VALUES ('user_1679863975461', 2, 1000);
INSERT INTO public.games VALUES ('user_1679863761377', 2, 1000);
INSERT INTO public.games VALUES ('user_1679864546891', 2, 711);
INSERT INTO public.games VALUES ('user_1679863761378', 5, 1000);
INSERT INTO public.games VALUES ('user_1679863975462', 4, 1000);
INSERT INTO public.games VALUES ('user_1679864010009', 2, 1000);
INSERT INTO public.games VALUES ('user_1679864546892', 5, 58);
INSERT INTO public.games VALUES ('user_1679864010010', 5, 1000);
INSERT INTO public.games VALUES ('user_1679865386398', 2, 241);
INSERT INTO public.games VALUES ('user_1679864029176', 2, 1000);
INSERT INTO public.games VALUES ('user_1679864029177', 5, 1000);
INSERT INTO public.games VALUES ('user_1679865386399', 5, 336);
INSERT INTO public.games VALUES ('Aitor', 4, 5);
INSERT INTO public.games VALUES ('user_1679864594798', 2, 123);
INSERT INTO public.games VALUES ('user_1679864594799', 5, 275);
INSERT INTO public.games VALUES ('user_1679864487044', 2, 594);
INSERT INTO public.games VALUES ('user_1679864487045', 5, 214);
INSERT INTO public.games VALUES ('user_1679865413372', 2, 125);
INSERT INTO public.games VALUES ('user_1679864494134', 2, 766);
INSERT INTO public.games VALUES ('user_1679864699256', 2, 271);
INSERT INTO public.games VALUES ('user_1679864494135', 4, 159);
INSERT INTO public.games VALUES ('user_1679864699257', 5, 29);
INSERT INTO public.games VALUES ('user_1679865413373', 5, 64);
INSERT INTO public.games VALUES ('user_1679864756073', 1, 623);
INSERT INTO public.games VALUES ('user_1679864756074', 4, 531);
INSERT INTO public.games VALUES ('user_1679864929349', 2, 802);
INSERT INTO public.games VALUES ('user_1679864929350', 5, 105);


--
-- Name: games games_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

