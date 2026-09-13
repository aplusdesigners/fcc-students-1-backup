--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (46, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (47, 'Web Programming');
INSERT INTO public.courses VALUES (48, 'Database Systems');
INSERT INTO public.courses VALUES (49, 'Computer Networks');
INSERT INTO public.courses VALUES (50, 'SQL');
INSERT INTO public.courses VALUES (51, 'Machine Learning');
INSERT INTO public.courses VALUES (52, 'Computer Systems');
INSERT INTO public.courses VALUES (53, 'Web Applications');
INSERT INTO public.courses VALUES (54, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (55, 'Python');
INSERT INTO public.courses VALUES (56, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (57, 'Calculus');
INSERT INTO public.courses VALUES (58, 'Game Architecture');
INSERT INTO public.courses VALUES (59, 'Algorithms');
INSERT INTO public.courses VALUES (60, 'UNIX');
INSERT INTO public.courses VALUES (61, 'Server Administration');
INSERT INTO public.courses VALUES (62, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (49, 'Database Administration');
INSERT INTO public.majors VALUES (50, 'Web Development');
INSERT INTO public.majors VALUES (51, 'Data Science');
INSERT INTO public.majors VALUES (52, 'Network Engineering');
INSERT INTO public.majors VALUES (53, 'Computer Programming');
INSERT INTO public.majors VALUES (54, 'Game Design');
INSERT INTO public.majors VALUES (55, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (49, 46);
INSERT INTO public.majors_courses VALUES (50, 47);
INSERT INTO public.majors_courses VALUES (49, 48);
INSERT INTO public.majors_courses VALUES (51, 46);
INSERT INTO public.majors_courses VALUES (52, 49);
INSERT INTO public.majors_courses VALUES (49, 50);
INSERT INTO public.majors_courses VALUES (51, 51);
INSERT INTO public.majors_courses VALUES (52, 52);
INSERT INTO public.majors_courses VALUES (53, 49);
INSERT INTO public.majors_courses VALUES (49, 53);
INSERT INTO public.majors_courses VALUES (54, 54);
INSERT INTO public.majors_courses VALUES (51, 55);
INSERT INTO public.majors_courses VALUES (53, 56);
INSERT INTO public.majors_courses VALUES (55, 52);
INSERT INTO public.majors_courses VALUES (54, 57);
INSERT INTO public.majors_courses VALUES (50, 46);
INSERT INTO public.majors_courses VALUES (51, 57);
INSERT INTO public.majors_courses VALUES (50, 56);
INSERT INTO public.majors_courses VALUES (54, 58);
INSERT INTO public.majors_courses VALUES (55, 49);
INSERT INTO public.majors_courses VALUES (54, 59);
INSERT INTO public.majors_courses VALUES (55, 60);
INSERT INTO public.majors_courses VALUES (55, 61);
INSERT INTO public.majors_courses VALUES (53, 52);
INSERT INTO public.majors_courses VALUES (53, 55);
INSERT INTO public.majors_courses VALUES (52, 62);
INSERT INTO public.majors_courses VALUES (50, 53);
INSERT INTO public.majors_courses VALUES (52, 59);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (37, 'Rhea', 'Kellems', 49, 2.5);
INSERT INTO public.students VALUES (38, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (39, 'Kimberly', 'Whitley', 50, 3.8);
INSERT INTO public.students VALUES (40, 'Jimmy', 'Felipe', 49, 3.7);
INSERT INTO public.students VALUES (41, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (42, 'Casares', 'Hijo', 54, 4.0);
INSERT INTO public.students VALUES (43, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (44, 'Sterling', 'Boss', 54, 3.9);
INSERT INTO public.students VALUES (45, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (46, 'Kaija', 'Uronen', 54, 3.7);
INSERT INTO public.students VALUES (47, 'Faye', 'Conn', 54, 2.1);
INSERT INTO public.students VALUES (48, 'Efren', 'Reilly', 50, 3.9);
INSERT INTO public.students VALUES (49, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (50, 'Maxine', 'Hagenes', 49, 2.9);
INSERT INTO public.students VALUES (51, 'Larry', 'Saunders', 51, 2.2);
INSERT INTO public.students VALUES (52, 'Karl', 'Kuhar', 50, NULL);
INSERT INTO public.students VALUES (53, 'Lieke', 'Hazenveld', 54, 3.5);
INSERT INTO public.students VALUES (54, 'Obie', 'Hilpert', 50, NULL);
INSERT INTO public.students VALUES (55, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (56, 'Nathan', 'Turner', 49, 3.3);
INSERT INTO public.students VALUES (57, 'Gerald', 'Osiki', 51, 2.2);
INSERT INTO public.students VALUES (58, 'Vanya', 'Hassanah', 54, 4.0);
INSERT INTO public.students VALUES (59, 'Roxelana', 'Florescu', 49, 3.2);
INSERT INTO public.students VALUES (60, 'Helene', 'Parker', 51, 3.4);
INSERT INTO public.students VALUES (61, 'Mariana', 'Russel', 50, 1.8);
INSERT INTO public.students VALUES (62, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (63, 'Mehdi', 'Vandenberghe', 49, 1.9);
INSERT INTO public.students VALUES (64, 'Dejon', 'Howell', 50, 4.0);
INSERT INTO public.students VALUES (65, 'Aliya', 'Gulgowski', 55, 2.6);
INSERT INTO public.students VALUES (66, 'Ana', 'Tupajic', 51, 3.1);
INSERT INTO public.students VALUES (67, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 62, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 55, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 67, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

