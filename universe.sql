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
    widht numeric(4,1) NOT NULL,
    numbers_of_planets integer,
    age_in_millions_of_years integer,
    description text,
    is_death boolean,
    has_sun boolean
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
    description text,
    is_spherical boolean,
    is_move boolean,
    diameter numeric(4,1),
    speed integer,
    distance_from_earth integer,
    planet_id integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    diameter numeric(4,1),
    age_in_millions_of_years integer,
    numbers_of_satelit integer,
    star_id integer NOT NULL
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
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rocket_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_roket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_roket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_roket_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_roket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_roket_id_seq OWNED BY public.rockets.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_death boolean,
    is_spherical boolean,
    description text,
    diameter numeric(4,1),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rockets rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rocket_id SET DEFAULT nextval('public.rockets_roket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bima Sakti', 321.5, 1000, 43, 'Big bang galaxy wow', false, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy A', 111.5, 109, 3, 'New Galaxy from universe', false, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy B', 217.2, 15, 44, 'Far galaxy out of nowhere', true, false);
INSERT INTO public.galaxy VALUES (4, 'Galaxy C', 489.9, 400, 21, 'Oldest galaxy in universe', false, true);
INSERT INTO public.galaxy VALUES (5, 'Galaxy D', 250.0, 30, 70, 'Has somany oxygen', false, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy E', 123.7, 42, 10, 'This is Galaxy E', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon A', 'This is Moon A', true, true, 12.0, 32, 100, 1);
INSERT INTO public.moon VALUES (2, 'Moon B', 'This is Moon B', true, false, 10.0, 10, 192, 2);
INSERT INTO public.moon VALUES (3, 'Moon C', 'This is Moon C', false, false, 16.2, 12, 89, 3);
INSERT INTO public.moon VALUES (4, 'Moon D', 'This is Moon D', true, false, 21.6, 11, 72, 4);
INSERT INTO public.moon VALUES (5, 'Moon E', 'This is Moon E', false, true, 23.1, 43, 222, 5);
INSERT INTO public.moon VALUES (6, 'Moon F', 'This is Moon F', true, false, 51.2, 12, 55, 6);
INSERT INTO public.moon VALUES (7, 'Moon G', 'This is Moon G', false, false, 21.2, 122, 43, 7);
INSERT INTO public.moon VALUES (8, 'Moon H', 'This is Moon H', true, true, 41.0, 44, 50, 8);
INSERT INTO public.moon VALUES (9, 'Moon I', 'This is Moon I', false, true, 15.2, 22, 89, 9);
INSERT INTO public.moon VALUES (10, 'Moon J', 'This is Moon J', true, false, 18.4, 41, 55, 10);
INSERT INTO public.moon VALUES (11, 'Moon K', 'This is Moon K', true, true, 93.4, 23, 15, 11);
INSERT INTO public.moon VALUES (12, 'Moom L', 'This is Moon L', false, true, 43.0, 11, 43, 12);
INSERT INTO public.moon VALUES (14, 'Moon M', 'This is Moon M', true, false, 10.0, 10, 192, 2);
INSERT INTO public.moon VALUES (15, 'Moon N', 'This is Moon N', false, false, 16.2, 12, 89, 3);
INSERT INTO public.moon VALUES (16, 'Moon O', 'This is Moon O', true, false, 21.6, 11, 72, 4);
INSERT INTO public.moon VALUES (17, 'Moon P', 'This is Moon P', false, true, 23.1, 43, 222, 5);
INSERT INTO public.moon VALUES (18, 'Moon Q', 'This is Moon Q', true, false, 51.2, 12, 55, 6);
INSERT INTO public.moon VALUES (19, 'Moon R', 'This is Moon R', false, false, 21.2, 122, 43, 7);
INSERT INTO public.moon VALUES (20, 'Moon S', 'This is Moon S', true, true, 41.0, 44, 50, 8);
INSERT INTO public.moon VALUES (13, 'Moon T', 'This is Moon T', true, true, 12.0, 32, 100, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', true, false, 'This is Planet A', 32.6, 12, 2, 3);
INSERT INTO public.planet VALUES (2, 'Planet B', false, false, 'This is Planet B', 12.0, 11, 5, 2);
INSERT INTO public.planet VALUES (3, 'Planet C', true, false, 'This is Planet C', 12.6, 19, 3, 1);
INSERT INTO public.planet VALUES (4, 'Planet D', false, true, 'This is Planet D', 25.0, 18, 2, 6);
INSERT INTO public.planet VALUES (5, 'Planet E', true, true, 'This is Planet E', 31.0, 9, 4, 5);
INSERT INTO public.planet VALUES (6, 'Planet F', false, false, 'This is Planet F', 10.9, 5, 2, 2);
INSERT INTO public.planet VALUES (7, 'Planet G', true, false, 'This is Planet G', 15.5, 22, 6, 1);
INSERT INTO public.planet VALUES (8, 'Planet H', false, true, 'This is Planet H', 11.0, 10, 1, 4);
INSERT INTO public.planet VALUES (9, 'Planet I', false, true, 'This is Planet I', 40.0, 100, 5, 6);
INSERT INTO public.planet VALUES (10, 'Planet J', true, true, 'This is Planet J', 20.0, 28, 1, 4);
INSERT INTO public.planet VALUES (11, 'Planet K', false, false, 'This is Planet K', 15.7, 10, 3, 3);
INSERT INTO public.planet VALUES (12, 'Planet L', false, true, 'This is Planet L', 19.1, 8, 4, 5);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (2, 2, 'Rocket B');
INSERT INTO public.rockets VALUES (3, 3, 'Rocket C');
INSERT INTO public.rockets VALUES (4, 4, 'Rocket D');
INSERT INTO public.rockets VALUES (1, 1, 'Rocket A');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star A', true, false, 'This is Star A', 312.3, 42, 11000, 4);
INSERT INTO public.star VALUES (2, 'Star B', false, true, 'This is Star B', 111.6, 14, 4300, 1);
INSERT INTO public.star VALUES (3, 'Star C', true, true, 'This is Star C', 53.8, 32, 65540, 2);
INSERT INTO public.star VALUES (4, 'Star D', false, false, 'This is Star D', 11.8, 419, 84522, 3);
INSERT INTO public.star VALUES (5, 'Star E', true, false, 'This is Star E', 54.2, 532, 6422, 5);
INSERT INTO public.star VALUES (6, 'Star F', false, true, 'This is Star F', 21.0, 32, 5444, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rockets_roket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_roket_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: rockets rockets_rocket_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_rocket_id_key UNIQUE (rocket_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: rockets rockets_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

