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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation character varying(30),
    size integer,
    number_of_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    size integer,
    gravity integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info_planet (
    more_info_planet_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    discoverer text
);


ALTER TABLE public.more_info_planet OWNER TO freecodecamp;

--
-- Name: more_info_planet_more_info_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_planet_more_info_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_planet_more_info_planet_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_planet_more_info_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_planet_more_info_planet_id_seq OWNED BY public.more_info_planet.more_info_planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    magnitud numeric(4,2),
    alive boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info_planet more_info_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_planet ALTER COLUMN more_info_planet_id SET DEFAULT nextval('public.more_info_planet_more_info_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Sagittarius', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Little Sombrero', 'Pegasus', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Condor', 'Pavo', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Butterfly', 'Virgo', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Eye of Sauron', 'Canes Venatici', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, 17, 2);
INSERT INTO public.moon VALUES (2, 'Deimos', 2, 17, 2);
INSERT INTO public.moon VALUES (3, 'Phobos', 2, 17, 2);
INSERT INTO public.moon VALUES (4, 'Amalthea', 3, 17, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 3, 17, 2);
INSERT INTO public.moon VALUES (6, 'Europa', 3, 17, 2);
INSERT INTO public.moon VALUES (7, 'Ganymede', 3, 17, 2);
INSERT INTO public.moon VALUES (8, 'Io', 3, 17, 2);
INSERT INTO public.moon VALUES (9, 'Dione', 7, 17, 2);
INSERT INTO public.moon VALUES (10, 'Enceladus', 7, 17, 2);
INSERT INTO public.moon VALUES (11, 'Hyperion', 7, 17, 2);
INSERT INTO public.moon VALUES (12, 'Iapetus', 7, 17, 2);
INSERT INTO public.moon VALUES (13, 'Mimas', 7, 17, 2);
INSERT INTO public.moon VALUES (14, 'Phoebe', 7, 17, 2);
INSERT INTO public.moon VALUES (15, 'Rhea', 7, 17, 2);
INSERT INTO public.moon VALUES (16, 'Tethys', 7, 17, 2);
INSERT INTO public.moon VALUES (17, 'Titan', 7, 17, 2);
INSERT INTO public.moon VALUES (18, 'Ariel', 6, 17, 2);
INSERT INTO public.moon VALUES (19, 'Miranda', 6, 17, 2);
INSERT INTO public.moon VALUES (20, 'Oberon', 6, 17, 2);
INSERT INTO public.moon VALUES (21, 'Titania', 6, 17, 2);
INSERT INTO public.moon VALUES (22, 'Umbriel', 6, 17, 2);


--
-- Data for Name: more_info_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info_planet VALUES (1, 1, NULL, 'Galileo');
INSERT INTO public.more_info_planet VALUES (2, 2, NULL, 'Galileo');
INSERT INTO public.more_info_planet VALUES (3, 3, NULL, 'Galileo');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, false, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 1, false, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, false, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 1, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluton', 1, false, 1);
INSERT INTO public.planet VALUES (10, 'Epsilon Eridani', 1, false, 1);
INSERT INTO public.planet VALUES (11, 'Aquarii', 1, false, 1);
INSERT INTO public.planet VALUES (12, 'Cancri', 1, false, 1);
INSERT INTO public.planet VALUES (13, 'Knekro', 1, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 2, 22.50, true);
INSERT INTO public.star VALUES (2, 'Blanca', 2, 1.10, true);
INSERT INTO public.star VALUES (3, 'C', 2, 35.30, true);
INSERT INTO public.star VALUES (4, 'D', 1, 46.00, true);
INSERT INTO public.star VALUES (5, 'E', 3, 75.50, true);
INSERT INTO public.star VALUES (6, 'F', 1, 31.10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: more_info_planet_more_info_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_planet_more_info_planet_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info_planet more_info_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_planet
    ADD CONSTRAINT more_info_planet_pkey PRIMARY KEY (more_info_planet_id);


--
-- Name: more_info_planet more_info_planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_planet
    ADD CONSTRAINT more_info_planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: more_info_planet more_info_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_planet
    ADD CONSTRAINT more_info_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
