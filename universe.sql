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
    name character varying(30),
    galaxy_id integer NOT NULL,
    galaxy_desc text,
    galaxy_has_life boolean,
    galaxy_age integer NOT NULL,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    moon_desc text,
    moon_age integer NOT NULL,
    moon_has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    planet_desc text,
    planet_age integer NOT NULL,
    planet_has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    star_desc text,
    star_age integer NOT NULL,
    star_has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30) NOT NULL,
    sun_id integer NOT NULL,
    sun_age integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('YINHE', 234, 'VERY NICE', true, 50000, 1000000);
INSERT INTO public.galaxy VALUES ('XIANNV', 244, 'VERY NICE', true, 50000, 1000000);
INSERT INTO public.galaxy VALUES ('ZHUBI', 254, 'VERY NICE', true, 50000, 1000000);
INSERT INTO public.galaxy VALUES ('JIEE', 264, 'VERY NICE', true, 50000, 1000000);
INSERT INTO public.galaxy VALUES ('YTIYE', 274, 'VERY NICE', true, 50000, 1000000);
INSERT INTO public.galaxy VALUES ('DERE', 284, 'VERY NICE', true, 50000, 1000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('BIG', 657, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 658, 'BEAUTY', 3000, false, 7002);
INSERT INTO public.moon VALUES ('BIG', 659, 'BEAUTY', 3000, false, 7003);
INSERT INTO public.moon VALUES ('BIG', 660, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 661, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 662, 'BEAUTY', 3000, false, 7005);
INSERT INTO public.moon VALUES ('BIG', 663, 'BEAUTY', 3000, false, 7004);
INSERT INTO public.moon VALUES ('BIG', 664, 'BEAUTY', 3000, false, 7006);
INSERT INTO public.moon VALUES ('BIG', 665, 'BEAUTY', 3000, false, 7006);
INSERT INTO public.moon VALUES ('BIG', 666, 'BEAUTY', 3000, false, 7007);
INSERT INTO public.moon VALUES ('BIG', 667, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 668, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 669, 'BEAUTY', 3000, false, 7009);
INSERT INTO public.moon VALUES ('BIG', 670, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 671, 'BEAUTY', 3000, false, 7010);
INSERT INTO public.moon VALUES ('BIG', 672, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 673, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 674, 'BEAUTY', 3000, false, 7011);
INSERT INTO public.moon VALUES ('BIG', 675, 'BEAUTY', 3000, false, 7012);
INSERT INTO public.moon VALUES ('BIG', 676, 'BEAUTY', 3000, false, 7001);
INSERT INTO public.moon VALUES ('BIG', 677, 'BEAUTY', 3000, false, 7001);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('MARS', 7001, 'WOW', 5000, false, 1001);
INSERT INTO public.planet VALUES ('WAT', 7002, 'WOW', 5000, false, 1002);
INSERT INTO public.planet VALUES ('EARTH', 7003, 'WOW', 5000, true, 1004);
INSERT INTO public.planet VALUES ('SAMERI', 7004, 'WOW', 5000, false, 1005);
INSERT INTO public.planet VALUES ('MARS', 7005, 'WOW', 5000, false, 1001);
INSERT INTO public.planet VALUES ('MARS', 7006, 'WOW', 5000, false, 1001);
INSERT INTO public.planet VALUES ('MARS', 7007, 'WOW', 5000, false, 1001);
INSERT INTO public.planet VALUES ('EARTH', 7008, 'WOW', 5000, true, 1004);
INSERT INTO public.planet VALUES ('EARTH', 7009, 'WOW', 5000, true, 1004);
INSERT INTO public.planet VALUES ('EARTH', 7010, 'WOW', 5000, true, 1004);
INSERT INTO public.planet VALUES ('SAMERI', 7011, 'WOW', 5000, false, 1005);
INSERT INTO public.planet VALUES ('SAMERI', 7012, 'WOW', 5000, false, 1005);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Jupitar', 1001, 'BIG', 2000, false, 234);
INSERT INTO public.star VALUES ('Jupitar2', 1002, 'TOO BIG', 2002, false, 244);
INSERT INTO public.star VALUES ('Jupitar3', 1003, 'SOO BIG', 2003, false, 244);
INSERT INTO public.star VALUES ('Jupitar4', 1004, 'BIG', 2000, false, 254);
INSERT INTO public.star VALUES ('Jupitar5', 1005, 'BIG', 2000, false, 264);
INSERT INTO public.star VALUES ('Jupitar6', 1006, 'BIG', 2000, false, 274);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('SUN', 1, 9000);
INSERT INTO public.sun VALUES ('SUN', 2, 9000);
INSERT INTO public.sun VALUES ('SUN', 3, 9000);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sun_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_id_key UNIQUE (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_plant_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_plant_num_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_star_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_num_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

