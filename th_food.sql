--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: telenorhealthas
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    th_employee_id character varying NOT NULL,
    employee_name character varying NOT NULL,
    msisdn character varying NOT NULL,
    email character varying NOT NULL,
    designation character varying NOT NULL,
    department character varying NOT NULL,
    status character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.employees OWNER TO telenorhealthas;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: telenorhealthas
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO telenorhealthas;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telenorhealthas
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: foods; Type: TABLE; Schema: public; Owner: telenorhealthas
--

CREATE TABLE public.foods (
    id integer NOT NULL,
    food_name character varying NOT NULL,
    vendor_name character varying NOT NULL,
    description character varying,
    size character varying NOT NULL,
    price integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.foods OWNER TO telenorhealthas;

--
-- Name: foods_id_seq; Type: SEQUENCE; Schema: public; Owner: telenorhealthas
--

CREATE SEQUENCE public.foods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.foods_id_seq OWNER TO telenorhealthas;

--
-- Name: foods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telenorhealthas
--

ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: telenorhealthas
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    th_employee_id character varying NOT NULL,
    host_id character varying,
    total_food_price integer NOT NULL,
    paid_amount integer,
    order_details jsonb NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.orders OWNER TO telenorhealthas;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: telenorhealthas
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO telenorhealthas;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: telenorhealthas
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: telenorhealthas
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: foods id; Type: DEFAULT; Schema: public; Owner: telenorhealthas
--

ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: telenorhealthas
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: telenorhealthas
--

COPY public.employees (id, th_employee_id, employee_name, msisdn, email, designation, department, status, created_at, updated_at) FROM stdin;
1	THB-007	Mohammad Mizanur Rahman	01709651003	mizan@telenorhealth.com	Lead Developer (Head of Development)	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
2	THB-008	Dr. Khaled Hasan	01709651002	khaled@telenorhealth.com	Clinical Manager	Medical & Research	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
3	THB-010	Mahabubul Islam Chowdhury	01709644080	mahbubul@telenordigital.com	Head of Business Development	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
4	THB-013	Anam Ahmed	01709644087	anam@telenordigital.com	Senior Software Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
5	THB-014	Ikrum Hossain	01709644086	ikrum@telenordigital.com	Senior Software Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
6	THB-019	Ahmed Nowshad Ibne Amin	01711082722	nowshad@telenorhealth.com	Head of Technology Operations	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
7	THB-021	Allama S Nomany	01708142982	allama@telenorhealth.com	Member Engagement Manager	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
8	THB-023	Sifatur Rahim	01708142975	sifat@telenorhealth.com	Senior DevOps Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
9	THB-025	Anindya Das	01708142972	anindya@telenorhealth.com	IT Support Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
10	THB-026	Tarikur Rahaman	01708142979	tarikur@telenorhealth.com	DevOps Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
11	THB-027	Mohaimin Ahmed	01711082681	mohaimin@telenorhealth.com	Senior Data Center Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
12	THB-029	Aniruddha Adhikary	01708142976	aniruddha@telenordigital.com	Software Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
13	THB-032	Jahra Jarin	01708142983	jahra@telenordigital.com	Junior Shaper	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
14	THB-035	Khan Md Parvez Quayum Tanim	01799997140	tanim@telenordigital.com	HR Manager	HR	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
15	THB-039	Mohita Nath	01799997142	mohita.nath@telenordigital.com	Partnerships & Loyalty Specialist	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
16	THB-040	Irtiza Maisha Islam	01799997143	irtiza.maisha@telenordigital.com	Management Associate	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
17	THB-041	Farzana Amin	01799997144	farzana.amin@telenordigital.com	Business Development Specialist	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
18	THB-043	Akib Solaiman Sarwar	01799997146	akib@telenordigital.com	Digital Content Executive	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
19	THB-045	Mohammad Asif	01799997149	asif@telenordigital.com	BI Manager	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
20	THB-047	Hasib bin Akbar	01711091313	hasib@telenorhealth.com	Legal Counsel	CEO	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
21	THB-048	Tanhar Islam	01799997152	tanhar.islam@telenorhealth.com	Manager Doctor and Provider Networks	Medical & Research	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
22	THB-050	Sharif Md Abid	01799997153	abid@telenordigital.com	B2B Sales & Operations Manager	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
23	THB-052	Md Jannatul Nayeem	01711506621	nayeem@telenorhealth.com	Head of Customer Experience & Service	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
24	THB-053	Propa Paromita	01799997168	propa.paromita@telenorhealth.com	B2B Operation Executive	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
25	THB-057	Anzule Akther	01799997156	anzule@telenorhealth.com	Channel Development Lead	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
26	THB-055	Sheuly Akter	01799997154	sheuly@telenorhealth.com	Channel Development Lead	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
27	THB-058	Gobinda Karmaker	01799997157	bindu@telenorhealth.com	Channel Development Lead	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
28	THB-054	Tauhidul Alam	01799997158	tauhidul@telenorhealth.com	Sales Head	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
29	THB-061	Sharmin Akhter Zahan	01730348896	sharmin.zahan@telenorhealth.com	Consultant, Ecosystem & Business Dev.	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
30	THB-062	Shahmin Rahman Rinkey	01799997160	rinkey@telenorhealth.com	Management Associate	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
31	THB-064	Sharmin Hossain	01779878344	sharmin.hossain@telenorhealth.com	Finance Manager	CEO	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
32	THB-067	Tawfiq Hasan	01799997161	tawfiq@telenorhealth.com	Partnerships & Loyalty Manager	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
33	THB-069	Imran Sardar	01799997163	imran@telenorhealth.com	Sr Software Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
34	THB-071	Fariha Ibnath Dola	01799997166	fariha@telenorhealth.com	Assistant Manager, Customer Service	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
35	THB-072	Hossain Ashik Mahmud Chowdury	01799997164	ashik@telenorhealth.com	Lead Big Data Dev Ops Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
36	THB-076	Tanjia Rahman	01701227000	tanjia@telenorhealth.com	Business Development Manager, B2B	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
37	THB-077	Md. Tamzidur Rahman Tonmoy	01701227002	tamzidur@telenorhealth.com	Assistant Manager, Channel Planning	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
38	THB-079	Md Maksudur Rahman Khan	01701227004	mateen@telenordigital.com	DevOps Engineer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
39	THB-080	Sadman Samee	01701227003	sadman@telenorhealth.com	Mobile Application Developer	Technology	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
40	THB-081	Arnab Paul	01701227001	arnab@telenorhealth.com	Cash/Operations Manager	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
41	THB-082	Md Wahid Shafiq	01772565561	wahid@telenorhealth.com	Management Associate	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
42	THB-083	Mahmud Afsar Ibne Hossain	01711503846	mahmud.afsar@telenorhealth.com	Lead Manager, B2B	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
43	THB-084	Quazi Aqibul Alam	01701227005	aqibul@telenorhealth.com	Asst. Manager, Marketing	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
44	THB-085	Shamsul Ashekin	01700706093	ashekin@telenorhealth.com	Product & Proposition Manager	Medical & Research	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
45	THB-086	Saif Abdullah	01701227006	saif.abdullah@telenorhealth.com	Executive, B2B Sales	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
46	THB-087	Raeesa Islam	01701227008	raeesa@telenorhealth.com	Specialist, B2B Sales	Operations	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
47	THB-088	Ayman Haque	01701227009	saad.enamul@telenorhealth.com	Executive, Product	Medical & Research	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
48	THB-089	Malik Mohammad Shakil	01777712372	shakil@telenorhealth.com	Executive, Channel Planning	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
49	THB-090	Tahseen Zakaria	01700706109	tahseen@telenorhealth.com	Head of HR	HR	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
50	THB-091	Mukhliss Arifin Anik	01701227010	arifin@telenorhealth.com	KAM, B2B & SME	B2B	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
51	THB-092	Anika Hannan	01701227007	anika@telenorhealth.com	Admin Administrator	HR	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
52	THB-093	Iftakher Ahmed	01701227011	iftakher@telenorhealth.com	Enterprise Relationship Manager	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
53	THB-094	Md Shaharear Kabir	01711080085	shaharear.kabir@telenorhealth.com	Lead Manager - Treade & Product Marketing	Commercial	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
54	50044	Khondoker Mohaimenul Haque			Sr. Executive-Strategic Partnership	Loyalty & Partnerships	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
55	50045	Shifat Ibne Zaman			Sr. Executive-Strategic Partnership	Loyalty & Partnerships	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
56	50081	Tanjida Islam			Partnership Loyalty Analyst	Loyalty & Partnerships	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
57	50046	Rayhana Jannat			Associate QA Engineer	QA	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
58	50052	Aritra Banerje			Software Engineer in Testing	QA	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
59	50047	Aquib Ajwad Bhuiyan			Query Management Executive	Query Management	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
60	50051	Tashmin Nahar			Graphics Designer	Marketing	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
61	50065	Abu Raihan Haque			Executive, Content	Marketing	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
62	50084	Zishanur Rafee Bhuiyan			Marketing Executive	Marketing	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
63	50049	Salowa Samin			Data Analyst	BI	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
64	50083	Samnoon Khan			Business Operations Associate	Cash	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
65	50085	Md. Kabir Rana			Specialist, Finance & Inventory	Finance	Active	2018-10-21 22:16:42.999623	2018-10-21 22:16:42.999623
\.


--
-- Data for Name: foods; Type: TABLE DATA; Schema: public; Owner: telenorhealthas
--

COPY public.foods (id, food_name, vendor_name, description, size, price, created_at, updated_at) FROM stdin;
1	Chicken Biryani	Zaman Hotel & Biriani House	Chicken (1pcs) + Egg		135	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
2	Kachci Biryani	Zaman Hotel & Biriani House	Mutton (1pcs) + Egg + Potato		165	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
3	Beef Khichuri	Zaman Hotel & Biriani House	Beef (4pcs) + Khichuri		140	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
4	Chicken Khichuri	Zaman Hotel & Biriani House	Chicken (1pcs) + Khichuri		140	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
5	Plain Rice	Zaman Hotel & Biriani House			30	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
6	Polao	Zaman Hotel & Biriani House			65	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
7	Bitter Gourd (Korola)	Zaman Hotel & Biriani House			30	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
8	Shak	Zaman Hotel & Biriani House			30	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
9	Loitta Shutki Vorta	Zaman Hotel & Biriani House			40	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
10	Taki Mach Vorta	Zaman Hotel & Biriani House			40	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
11	Kacha Kola Vorta	Zaman Hotel & Biriani House			30	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
12	Begun Vorta	Zaman Hotel & Biriani House			30	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
13	Rupchanda	Zaman Hotel & Biriani House	Rupchada Fry	1pcs	160	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
14	Koral Dopeaju	Zaman Hotel & Biriani House		100gm	160	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
15	Pabda Dopeaju	Zaman Hotel & Biriani House		100gm	130	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
16	Chingri Malai Kari	Zaman Hotel & Biriani House		2pcs	130	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
17	Chingri Vuna	Zaman Hotel & Biriani House		2pcs	130	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
18	Chicken Roast	Zaman Hotel & Biriani House		1pcs	110	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
19	Chicken Jhal Fry	Zaman Hotel & Biriani House		3pcs	130	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
20	Beef Vuna	Zaman Hotel & Biriani House		5pcs	150	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
21	Pudding	Zaman Hotel & Biriani House		1pcs	40	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
22	Borhani	Zaman Hotel & Biriani House		Per Glass	20	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
23	Beef Shwarma	shawarma house		180gm	130	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
24	Chicken Shwarma	shawarma house		180gm	130	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
25	Beef Tangy Wrap	shawarma house		250gm	225	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
26	Chicken Chunky Wrap	shawarma house		250gm	225	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
27	Pasta Europa	shawarma house		320gm	280	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
28	Pasta Basta	shawarma house		320gm	265	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
29	4 Season Small Pizza	shawarma house		Small	595	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
30	4 Season Medium Pizza	shawarma house		Medium	640	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
31	4 Season Large Pizza	shawarma house		Large	710	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
32	Barcelona Small Pizza	shawarma house		Small	550	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
33	Barcelona Medium Pizza	shawarma house		Medium	615	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
34	Barcelona Large Pizza	shawarma house		Large	680	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
35	Dhaka Small Pizza	shawarma house		Small	515	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
36	Dhaka Medium Pizza	shawarma house		Medium	570	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
37	Dhaka Large Pizza	shawarma house		Large	630	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
38	Pizza Padi Medium Pizza	shawarma house		Medium	750	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
39	The Works Small Pizza	shawarma house		Small	570	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
40	The Works Medium Pizza	shawarma house		Medium	670	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
41	The Works Large Pizza	shawarma house		Large	805	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
42	Meat Eaters Small Pizza	shawarma house		Small	595	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
43	Meat Eaters Medium Pizza	shawarma house		Medium	635	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
44	Meat Eaters Large Pizza	shawarma house		Large	655	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
45	Shwarma Beef Pizza Sandwich Small	shawarma house		Small	315	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
46	Shwarma Beef Pizza Sandwich Medium	shawarma house		Medium	345	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
47	Shwarma Beef Pizza Sandwich Large	shawarma house		Large	400	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
48	Shwarma Chicken Pizza Sandwich Small	shawarma house		Small	245	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
49	Shwarma Chicken Pizza Sandwich Medium	shawarma house		Medium	275	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
50	Shwarma Chicken Pizza Sandwich Large	shawarma house		Large	335	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
51	Beef Cheese Sausage Burger	shawarma house		210gm	200	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
52	Chicken Cheese Sausage Supreme	shawarma house		210gm	210	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
53	Traditional Turkey Salad	shawarma house		200gm	240	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
54	Spicy Mustard Chicken Salad	shawarma house		200gm	220	2018-10-21 15:46:45.052148	2018-10-21 15:46:45.052148
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: telenorhealthas
--

COPY public.orders (id, th_employee_id, host_id, total_food_price, paid_amount, order_details, created_at, updated_at) FROM stdin;
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telenorhealthas
--

SELECT pg_catalog.setval('public.employees_id_seq', 16, true);


--
-- Name: foods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telenorhealthas
--

SELECT pg_catalog.setval('public.foods_id_seq', 7, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: telenorhealthas
--

SELECT pg_catalog.setval('public.orders_id_seq', 58, true);


--
-- PostgreSQL database dump complete
--

