--
-- PostgreSQL database dump
--

\restrict 2fy9dXg5FSNVBzact5PRHVaEvfrotvhZ25PrLtQ4GU7hua9OcAlglhLpI88kjXk

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-22 20:04:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 226 (class 1259 OID 16523)
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    barang_ integer NOT NULL,
    nama character varying(100),
    harga numeric(12,2),
    stok integer
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16522)
-- Name: barang_barang__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_barang__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.barang_barang__seq OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 225
-- Name: barang_barang__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_barang__seq OWNED BY public.barang.barang_;


--
-- TOC entry 234 (class 1259 OID 16581)
-- Name: barangkeluar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barangkeluar (
    id_bk integer NOT NULL,
    barang_ integer,
    id_penjualan_bk integer,
    jumlah integer,
    sub_total numeric(12,2)
);


ALTER TABLE public.barangkeluar OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16580)
-- Name: barangkeluar_id_bk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barangkeluar_id_bk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.barangkeluar_id_bk_seq OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 233
-- Name: barangkeluar_id_bk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barangkeluar_id_bk_seq OWNED BY public.barangkeluar.id_bk;


--
-- TOC entry 230 (class 1259 OID 16547)
-- Name: barangmasuk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barangmasuk (
    id_bm integer NOT NULL,
    barang_ integer,
    id_pembelian integer,
    jumlah integer,
    sub_total numeric(12,2)
);


ALTER TABLE public.barangmasuk OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16546)
-- Name: barangmasuk_id_bm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barangmasuk_id_bm_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.barangmasuk_id_bm_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 229
-- Name: barangmasuk_id_bm_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barangmasuk_id_bm_seq OWNED BY public.barangmasuk.id_bm;


--
-- TOC entry 224 (class 1259 OID 16514)
-- Name: distribusi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.distribusi (
    distribusi_ integer NOT NULL,
    nama character varying(100),
    kontak character varying(50),
    alamat text
);


ALTER TABLE public.distribusi OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16513)
-- Name: distribusi_distribusi__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.distribusi_distribusi__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.distribusi_distribusi__seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 223
-- Name: distribusi_distribusi__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.distribusi_distribusi__seq OWNED BY public.distribusi.distribusi_;


--
-- TOC entry 218 (class 1259 OID 16484)
-- Name: gudang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gudang (
    gudang_ integer NOT NULL,
    nama character varying(100),
    lokasi character varying(100),
    kontak character varying(50),
    kapasitas integer
);


ALTER TABLE public.gudang OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16483)
-- Name: gudang_gudang__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gudang_gudang__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gudang_gudang__seq OWNER TO postgres;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 217
-- Name: gudang_gudang__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gudang_gudang__seq OWNED BY public.gudang.gudang_;


--
-- TOC entry 220 (class 1259 OID 16491)
-- Name: karyawan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.karyawan (
    karyawan_ integer NOT NULL,
    gudang_ integer,
    nama character varying(100),
    jabatan character varying(50),
    no_hp character varying(20),
    alamat text
);


ALTER TABLE public.karyawan OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16490)
-- Name: karyawan_karyawan__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.karyawan_karyawan__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.karyawan_karyawan__seq OWNER TO postgres;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 219
-- Name: karyawan_karyawan__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.karyawan_karyawan__seq OWNED BY public.karyawan.karyawan_;


--
-- TOC entry 228 (class 1259 OID 16530)
-- Name: pembelian_bm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembelian_bm (
    id_pembelian integer NOT NULL,
    karyawan_ integer,
    supplier_ integer,
    tgl_masuk date,
    total_harga numeric(12,2)
);


ALTER TABLE public.pembelian_bm OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16529)
-- Name: pembelian_bm_id_pembelian_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembelian_bm_id_pembelian_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pembelian_bm_id_pembelian_seq OWNER TO postgres;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 227
-- Name: pembelian_bm_id_pembelian_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembelian_bm_id_pembelian_seq OWNED BY public.pembelian_bm.id_pembelian;


--
-- TOC entry 232 (class 1259 OID 16564)
-- Name: penjualan_bk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penjualan_bk (
    id_penjualan_bk integer NOT NULL,
    karyawan_ integer,
    distribusi_ integer,
    tgl_keluar date,
    total_harga numeric(12,2)
);


ALTER TABLE public.penjualan_bk OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16563)
-- Name: penjualan_bk_id_penjualan_bk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penjualan_bk_id_penjualan_bk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.penjualan_bk_id_penjualan_bk_seq OWNER TO postgres;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 231
-- Name: penjualan_bk_id_penjualan_bk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penjualan_bk_id_penjualan_bk_seq OWNED BY public.penjualan_bk.id_penjualan_bk;


--
-- TOC entry 235 (class 1259 OID 16597)
-- Name: penyimpanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penyimpanan (
    gudang_ integer NOT NULL,
    barang_ integer NOT NULL,
    jumlah integer
);


ALTER TABLE public.penyimpanan OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16505)
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    supplier_ integer NOT NULL,
    nama character varying(100),
    kontak character varying(50),
    alamat text
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16504)
-- Name: supplier_supplier__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_supplier__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supplier_supplier__seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 221
-- Name: supplier_supplier__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_supplier__seq OWNED BY public.supplier.supplier_;


--
-- TOC entry 4743 (class 2604 OID 16526)
-- Name: barang barang_; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN barang_ SET DEFAULT nextval('public.barang_barang__seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 16584)
-- Name: barangkeluar id_bk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangkeluar ALTER COLUMN id_bk SET DEFAULT nextval('public.barangkeluar_id_bk_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 16550)
-- Name: barangmasuk id_bm; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangmasuk ALTER COLUMN id_bm SET DEFAULT nextval('public.barangmasuk_id_bm_seq'::regclass);


--
-- TOC entry 4742 (class 2604 OID 16517)
-- Name: distribusi distribusi_; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distribusi ALTER COLUMN distribusi_ SET DEFAULT nextval('public.distribusi_distribusi__seq'::regclass);


--
-- TOC entry 4739 (class 2604 OID 16487)
-- Name: gudang gudang_; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gudang ALTER COLUMN gudang_ SET DEFAULT nextval('public.gudang_gudang__seq'::regclass);


--
-- TOC entry 4740 (class 2604 OID 16494)
-- Name: karyawan karyawan_; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.karyawan ALTER COLUMN karyawan_ SET DEFAULT nextval('public.karyawan_karyawan__seq'::regclass);


--
-- TOC entry 4744 (class 2604 OID 16533)
-- Name: pembelian_bm id_pembelian; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembelian_bm ALTER COLUMN id_pembelian SET DEFAULT nextval('public.pembelian_bm_id_pembelian_seq'::regclass);


--
-- TOC entry 4746 (class 2604 OID 16567)
-- Name: penjualan_bk id_penjualan_bk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penjualan_bk ALTER COLUMN id_penjualan_bk SET DEFAULT nextval('public.penjualan_bk_id_penjualan_bk_seq'::regclass);


--
-- TOC entry 4741 (class 2604 OID 16508)
-- Name: supplier supplier_; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier ALTER COLUMN supplier_ SET DEFAULT nextval('public.supplier_supplier__seq'::regclass);


--
-- TOC entry 4933 (class 0 OID 16523)
-- Dependencies: 226
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (barang_, nama, harga, stok) FROM stdin;
110	Beras Ramos 5kg	75000.00	120
111	Minyak Goreng Bimoli 2L	38000.00	200
112	Gula Pasir 1kg	16500.00	300
113	Tepung Terigu Segitiga Biru 1kg	14500.00	180
114	Kopi Kapal Api 165gr	24000.00	150
115	Teh Sosro Kotak 250ml	6500.00	400
116	Air Mineral Aqua 600ml	5000.00	500
117	Sabun Lifebuoy 110gr	5500.00	250
118	Shampoo Sunsilk 170ml	21000.00	220
119	Pasta Gigi Pepsodent 190gr	18500.00	180
120	Detergen Rinso 1kg	27000.00	190
121	Softener Molto 900ml	17000.00	170
122	Sabun Mandi Lux 100gr	6000.00	260
123	Sikat Gigi Formula	9000.00	240
124	Mie Instan Indomie Goreng	3500.00	500
125	Mie Instan Indomie Ayam Bawang	3500.00	480
126	Kecap Manis ABC 600ml	24000.00	210
127	Saus Sambal Indofood 275ml	13000.00	230
128	Margarin Blue Band 200gr	14500.00	260
129	Telur Ayam Negeri 1kg	29000.00	300
130	Tisu Paseo 250 lembar	23000.00	190
131	Pewangi Ruangan Stella 320ml	28000.00	120
132	Penyegar Udara Baygon Lavender 600ml	48000.00	100
133	Cairan Pembersih Lantai Super Pell 780ml	18000.00	200
134	Minyak Kayu Putih Cap Lang 120ml	32000.00	150
135	Obat Nyamuk Vape Refill	21000.00	170
136	Kopi Good Day Cappuccino 3in1	9500.00	300
137	Minuman Energi Kratingdaeng 150ml	8500.00	250
138	Roti Tawar Sari Roti	20000.00	160
139	Susu UHT Ultra Milk 1L	23000.00	190
140	Susu Kental Manis Frisian Flag 370gr	17000.00	180
141	Baterai ABC ukuran AA	12000.00	240
142	Lampu LED Philips 9W	42000.00	160
143	Kabel Listrik 5 meter	25000.00	130
144	Cat Tembok Dulux 5kg	255000.00	80
145	Semen Gresik 40kg	67000.00	220
146	Paku 2 inch 1kg	18000.00	250
147	Kuas Cat 3 inch	12000.00	230
148	Sarung Tangan Karet	11000.00	300
149	Masker Medis 50 pcs	28000.00	270
150	Hand Sanitizer 250ml	22000.00	260
151	Buku Tulis Sinar Dunia 58 Lembar	4500.00	350
152	Pulpen Pilot Hitam	6000.00	400
153	Spidol Snowman Hitam	9500.00	280
154	Stabilo Warna Kuning	12500.00	210
155	Penghapus Pensil Joyko	3000.00	400
156	Pensil 2B Faber Castell	5000.00	420
157	Lakban Cokelat 2 inch	15000.00	200
158	Kertas HVS A4 70gsm	58000.00	150
159	Map Plastik Kancing	2500.00	380
160	Flashdisk Sandisk 32GB	85000.00	130
161	Mouse Logitech	125000.00	110
162	Keyboard Logitech	185000.00	100
163	Kabel Data Type-C	35000.00	140
164	Powerbank 10000mAh	230000.00	90
165	Charger HP Samsung	95000.00	130
166	Speaker Bluetooth JBL Mini	320000.00	80
167	Headset Xiaomi	65000.00	160
168	Tripod Kamera	190000.00	70
169	Kamera CCTV Indoor	480000.00	60
170	Microphone Wireless	350000.00	70
171	Payung Lipat Warna	25000.00	200
172	Topi Baseball Hitam	45000.00	190
173	Tas Ransel Laptop	285000.00	120
174	Dompet Kulit Pria	175000.00	140
175	Ikat Pinggang Kulit	85000.00	160
176	Sepatu Sneakers Putih	420000.00	100
177	Kaos Polos Katun	65000.00	200
178	Celana Jeans Pria	285000.00	120
179	Jaket Hoodie	320000.00	110
180	Sweater Rajut	290000.00	130
181	Kemeja Flanel	175000.00	150
182	Rok Panjang Hitam	165000.00	140
183	Baju Batik Pria Lengan Panjang	185000.00	120
184	Gamis Wanita Polos	220000.00	110
185	Mukena Katun	250000.00	100
186	Sajadah Travel	95000.00	180
187	Al-Quran Madina	155000.00	120
188	Tempat Wudhu Portable	125000.00	90
189	Sendal Jepit Swallow	22000.00	300
190	Sepatu Sandal Wanita	195000.00	140
191	Helm KYT Half Face	380000.00	80
192	Sarung Jok Motor	65000.00	130
193	Lampu Sein Motor	35000.00	120
194	Oli Mesin Pertamina Enduro 1L	58000.00	200
195	Ban Motor Tubeless 14 inch	325000.00	60
196	Kunci Inggris 10 inch	45000.00	180
197	Obeng Set 10 pcs	75000.00	150
198	Tang Kombinasi Tekiro	85000.00	160
199	Bor Tangan Modern	285000.00	90
200	Meteran Gulung 5 meter	32000.00	200
201	Paku Beton 2 inch	15000.00	250
202	Klem Pipa PVC	4000.00	300
203	Lem PVC RUGO 100gr	17000.00	200
204	Cat Besi Avian 1kg	98000.00	100
205	Pipa PVC 3/4 inch	58000.00	150
206	Pompa Air Shimizu 125 Watt	485000.00	70
207	Selang Air 10 meter	72000.00	180
208	Ember Plastik 10L	25000.00	250
209	Gayung Plastik	8000.00	400
\.


--
-- TOC entry 4941 (class 0 OID 16581)
-- Dependencies: 234
-- Data for Name: barangkeluar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barangkeluar (id_bk, barang_, id_penjualan_bk, jumlah, sub_total) FROM stdin;
1	110	1	10	500000.00
2	111	2	8	320000.00
3	112	3	12	600000.00
4	113	4	9	360000.00
5	114	5	11	550000.00
6	115	6	7	210000.00
7	116	7	14	700000.00
8	117	8	10	500000.00
9	118	9	6	180000.00
10	119	10	9	270000.00
11	120	11	8	320000.00
12	121	12	13	650000.00
13	122	13	11	550000.00
14	123	14	15	750000.00
15	124	15	9	360000.00
16	125	16	10	400000.00
17	126	17	7	210000.00
18	127	18	12	480000.00
19	128	19	14	700000.00
20	129	20	9	270000.00
21	130	21	11	550000.00
22	131	22	10	400000.00
23	132	23	8	320000.00
24	133	24	6	180000.00
25	134	25	9	450000.00
26	135	26	10	500000.00
27	136	27	8	240000.00
28	137	28	15	750000.00
29	138	29	7	210000.00
30	139	30	13	650000.00
31	140	31	9	270000.00
32	141	32	10	400000.00
33	142	33	8	320000.00
34	143	34	14	700000.00
35	144	35	9	450000.00
36	145	36	6	180000.00
37	146	37	11	550000.00
38	147	38	10	400000.00
39	148	39	8	240000.00
40	149	40	12	480000.00
41	150	41	13	650000.00
42	151	42	9	360000.00
43	152	43	15	750000.00
44	153	44	8	320000.00
45	154	45	10	400000.00
46	155	46	7	210000.00
47	156	47	14	700000.00
48	157	48	9	450000.00
49	158	49	11	550000.00
50	159	50	8	240000.00
51	160	51	12	480000.00
52	161	52	10	400000.00
53	162	53	6	180000.00
54	163	54	15	750000.00
55	164	55	7	280000.00
56	165	56	9	270000.00
57	166	57	8	320000.00
58	167	58	13	650000.00
59	168	59	10	500000.00
60	169	60	9	450000.00
61	170	61	14	700000.00
62	171	62	12	480000.00
63	172	63	8	240000.00
64	173	64	10	400000.00
65	174	65	11	550000.00
66	175	66	7	210000.00
67	176	67	13	650000.00
68	177	68	9	360000.00
69	178	69	10	500000.00
70	179	70	15	750000.00
71	180	71	9	270000.00
72	181	72	8	240000.00
73	182	73	12	480000.00
74	183	74	10	400000.00
75	184	75	7	280000.00
76	185	76	11	550000.00
77	186	77	14	700000.00
78	187	78	9	360000.00
79	188	79	8	320000.00
80	189	80	13	650000.00
81	190	81	10	500000.00
82	191	82	12	480000.00
83	192	83	9	450000.00
84	193	84	11	550000.00
85	194	85	10	400000.00
86	195	86	8	240000.00
87	196	87	15	750000.00
88	197	88	9	270000.00
89	198	89	6	180000.00
90	199	90	13	650000.00
91	200	91	8	320000.00
92	201	92	10	500000.00
93	202	93	9	360000.00
94	203	94	11	550000.00
95	204	95	7	210000.00
96	205	96	14	700000.00
97	206	97	8	240000.00
98	207	98	12	480000.00
99	208	99	9	270000.00
100	209	100	10	400000.00
\.


--
-- TOC entry 4937 (class 0 OID 16547)
-- Dependencies: 230
-- Data for Name: barangmasuk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barangmasuk (id_bm, barang_, id_pembelian, jumlah, sub_total) FROM stdin;
501	110	1	10	500000.00
502	111	2	8	320000.00
503	112	3	12	600000.00
504	113	4	9	450000.00
505	114	5	11	550000.00
506	115	6	7	280000.00
507	116	7	14	700000.00
508	117	8	6	180000.00
509	118	9	10	500000.00
510	119	10	15	750000.00
511	120	11	9	360000.00
512	121	12	13	650000.00
513	122	13	8	240000.00
514	123	14	7	210000.00
515	124	15	10	400000.00
516	125	16	12	480000.00
517	126	17	11	550000.00
518	127	18	9	270000.00
519	128	19	8	320000.00
520	129	20	14	700000.00
521	130	21	7	210000.00
522	131	22	13	650000.00
523	132	23	9	360000.00
524	133	24	11	550000.00
525	134	25	10	400000.00
526	135	26	8	240000.00
527	136	27	12	480000.00
528	137	28	15	750000.00
529	138	29	7	210000.00
530	139	30	10	500000.00
531	140	31	11	550000.00
532	141	32	9	270000.00
533	142	33	13	650000.00
534	143	34	14	700000.00
535	144	35	8	240000.00
536	145	36	6	180000.00
537	146	37	10	400000.00
538	147	38	9	360000.00
539	148	39	11	550000.00
540	149	40	7	280000.00
541	150	41	12	480000.00
542	151	42	8	240000.00
543	152	43	10	400000.00
544	153	44	9	270000.00
545	154	45	13	650000.00
546	155	46	11	550000.00
547	156	47	10	500000.00
548	157	48	7	210000.00
549	158	49	12	480000.00
550	159	50	8	320000.00
551	160	51	14	700000.00
552	161	52	9	360000.00
553	162	53	10	400000.00
554	163	54	11	550000.00
555	164	55	8	240000.00
556	165	56	12	480000.00
557	166	57	9	270000.00
558	167	58	15	750000.00
559	168	59	10	500000.00
560	169	60	8	320000.00
561	170	61	13	650000.00
562	171	62	7	280000.00
563	172	63	10	400000.00
564	173	64	9	270000.00
565	174	65	12	480000.00
566	175	66	11	550000.00
567	176	67	8	240000.00
568	177	68	10	500000.00
569	178	69	14	700000.00
570	179	70	9	360000.00
571	180	71	8	320000.00
572	181	72	10	400000.00
573	182	73	11	550000.00
574	183	74	9	270000.00
575	184	75	15	750000.00
576	185	76	12	480000.00
577	186	77	7	210000.00
578	187	78	10	400000.00
579	188	79	9	360000.00
580	189	80	13	650000.00
581	190	81	8	240000.00
582	191	82	11	550000.00
583	192	83	10	500000.00
584	193	84	9	270000.00
585	194	85	7	280000.00
586	195	86	14	700000.00
587	196	87	12	480000.00
588	197	88	10	400000.00
589	198	89	8	320000.00
590	199	90	11	550000.00
591	200	91	9	360000.00
592	201	92	10	500000.00
593	202	93	15	750000.00
594	203	94	8	240000.00
595	204	95	11	550000.00
596	205	96	12	480000.00
597	206	97	9	270000.00
598	207	98	10	400000.00
599	208	99	13	650000.00
600	209	100	7	280000.00
\.


--
-- TOC entry 4931 (class 0 OID 16514)
-- Dependencies: 224
-- Data for Name: distribusi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.distribusi (distribusi_, nama, kontak, alamat) FROM stdin;
1	Distribusi Nusantara Jaya	081234567801	Jl. Merdeka No. 10, Jakarta Pusat
2	Distribusi Sejahtera Abadi	082134567802	Jl. Diponegoro No. 12, Bandung
3	Distribusi Makmur Sentosa	083134567803	Jl. Ahmad Yani No. 8, Surabaya
4	Distribusi Cipta Niaga	085134567804	Jl. Sudirman No. 15, Medan
5	Distribusi Karya Bersama	081234567805	Jl. Gajah Mada No. 20, Semarang
6	Distribusi Mitra Lestari	082234567806	Jl. Pahlawan No. 5, Yogyakarta
7	Distribusi Prima Persada	083234567807	Jl. Pemuda No. 9, Malang
8	Distribusi Indo Niaga	085234567808	Jl. Basuki Rahmat No. 7, Makassar
9	Distribusi Cahaya Mandiri	081334567809	Jl. Sultan Agung No. 18, Depok
10	Distribusi Bumi Persada	082334567810	Jl. Gatot Subroto No. 11, Palembang
11	Distribusi Daya Niaga	083334567811	Jl. Rajawali No. 6, Pekanbaru
12	Distribusi Mega Lestari	085334567812	Jl. Imam Bonjol No. 13, Pontianak
13	Distribusi Artha Mulia	081434567813	Jl. Hasanuddin No. 9, Banjarmasin
14	Distribusi Sinar Harapan	082434567814	Jl. Pattimura No. 16, Samarinda
15	Distribusi Citra Jaya	083434567815	Jl. Slamet Riyadi No. 22, Solo
16	Distribusi Bintang Timur	085434567816	Jl. Ahmad Dahlan No. 17, Balikpapan
17	Distribusi Tunas Harapan	081534567817	Jl. Panjaitan No. 8, Denpasar
18	Distribusi Mandiri Utama	082534567818	Jl. Dipatiukur No. 21, Bandung
19	Distribusi Global Sentosa	083534567819	Jl. Trunojoyo No. 19, Cirebon
20	Distribusi Karunia Abadi	085534567820	Jl. Letjen Suprapto No. 3, Tangerang
21	Distribusi Surya Lestari	081634567821	Jl. Asia Afrika No. 14, Jakarta Barat
22	Distribusi Amanah Jaya	082634567822	Jl. Margonda No. 7, Depok
23	Distribusi Panca Makmur	083634567823	Jl. Proklamasi No. 11, Madiun
24	Distribusi Cemerlang Bersatu	085634567824	Jl. Tidar No. 5, Malang
25	Distribusi Lestari Sejahtera	081734567825	Jl. Taman Siswa No. 9, Yogyakarta
26	Distribusi Bumi Lestari	082734567826	Jl. Raya Pati No. 15, Kudus
27	Distribusi Tri Mandiri	083734567827	Jl. Raya Pantura No. 4, Cirebon
28	Distribusi Samudra Niaga	085734567828	Jl. Pattimura No. 8, Makassar
29	Distribusi Bahtera Jaya	081834567829	Jl. Raya Utara No. 3, Balikpapan
30	Distribusi Mega Persada	082834567830	Jl. Pangeran Antasari No. 10, Lampung
31	Distribusi Jati Makmur	083834567831	Jl. Asia No. 6, Medan
32	Distribusi Cahaya Timur	085834567832	Jl. Palagan No. 11, Yogyakarta
33	Distribusi Putra Sejahtera	081934567833	Jl. Mangkubumi No. 12, Solo
34	Distribusi Alam Raya	082934567834	Jl. Raya Selatan No. 5, Denpasar
35	Distribusi Global Niaga	083934567835	Jl. Kutilang No. 2, Pontianak
36	Distribusi Makmur Jaya	085934567836	Jl. Raya Barat No. 13, Serang
37	Distribusi Prima Sentosa	081044567837	Jl. Ahmad Yani No. 9, Cimahi
38	Distribusi Lintas Niaga	082044567838	Jl. Gatot Subroto No. 6, Bandar Lampung
39	Distribusi Sumber Harapan	083044567839	Jl. Raya Timur No. 16, Palopo
40	Distribusi Pusat Makmur	085044567840	Jl. Diponegoro No. 7, Pekalongan
41	Distribusi Karunia Lestari	081144567841	Jl. Dipatiukur No. 8, Bandung
42	Distribusi Mulia Sejahtera	082144567842	Jl. Letjen Suprapto No. 10, Bengkulu
43	Distribusi Maju Jaya	083144567843	Jl. Perintis Kemerdekaan No. 5, Makassar
44	Distribusi Duta Persada	085144567844	Jl. Raya Selatan No. 9, Denpasar
45	Distribusi Mega Mulia	081244567845	Jl. Imam Bonjol No. 14, Palembang
46	Distribusi Sukses Abadi	082244567846	Jl. Raya Barat No. 17, Semarang
47	Distribusi Dunia Sejahtera	083244567847	Jl. Suprapto No. 2, Kupang
48	Distribusi Sentral Jaya	085244567848	Jl. Gajah Mada No. 18, Jambi
49	Distribusi Bumi Indah	081344567849	Jl. Sultan Hasanudin No. 9, Banda Aceh
50	Distribusi Global Jaya	082344567850	Jl. Kertajaya No. 12, Surabaya
51	Distribusi Sejahtera Abadi	083344567851	Jl. Mangga Besar No. 3, Jakarta Barat
52	Distribusi Karya Abadi	085344567852	Jl. Margonda No. 5, Depok
53	Distribusi Citra Mandiri	081444567853	Jl. Antasari No. 9, Palembang
54	Distribusi Bintang Jaya	082444567854	Jl. Pemuda No. 11, Semarang
55	Distribusi Abadi Lestari	083444567855	Jl. Kalasan No. 15, Yogyakarta
56	Distribusi Mitra Niaga	085444567856	Jl. Diponegoro No. 6, Bandung
57	Distribusi Cahaya Utama	081544567857	Jl. Ahmad Yani No. 10, Cirebon
58	Distribusi Mandiri Jaya	082544567858	Jl. Basuki Rahmat No. 17, Malang
59	Distribusi Harapan Sentosa	083544567859	Jl. Tidar No. 19, Malang
60	Distribusi Global Mandiri	085544567860	Jl. Soekarno Hatta No. 22, Balikpapan
61	Distribusi Mega Sejahtera	081644567861	Jl. Raya Selatan No. 5, Denpasar
62	Distribusi Cahaya Abadi	082644567862	Jl. Pandega No. 11, Yogyakarta
63	Distribusi Bina Utama	083644567863	Jl. Ahmad Dahlan No. 9, Magelang
64	Distribusi Jaya Sentosa	085644567864	Jl. Imam Bonjol No. 7, Semarang
65	Distribusi Pertiwi Lestari	081744567865	Jl. Raya Timur No. 8, Cilacap
66	Distribusi Sinar Bersama	082744567866	Jl. Kalibata No. 3, Jakarta Selatan
67	Distribusi Dunia Mandiri	083744567867	Jl. Kuningan No. 10, Bekasi
68	Distribusi Sentosa Makmur	085744567868	Jl. Raya Bogor No. 7, Depok
69	Distribusi Maju Sentosa	081844567869	Jl. Raya Sukarno Hatta No. 9, Bandung
70	Distribusi Lintas Abadi	082844567870	Jl. Ahmad Yani No. 11, Medan
71	Distribusi Citra Lestari	083844567871	Jl. Sunan Kalijaga No. 6, Semarang
72	Distribusi Tumbuh Makmur	085844567872	Jl. Melati No. 8, Palembang
73	Distribusi Indo Makmur	081944567873	Jl. Veteran No. 10, Makassar
74	Distribusi Sukses Jaya	082944567874	Jl. Gatot Subroto No. 12, Denpasar
75	Distribusi Mulia Abadi	083944567875	Jl. Diponegoro No. 15, Bandung
76	Distribusi Surya Lestari	085944567876	Jl. Ahmad Yani No. 18, Bogor
77	Distribusi Pusat Niaga	081054567877	Jl. Cendrawasih No. 5, Bekasi
78	Distribusi Mitra Lestari	082054567878	Jl. Rajawali No. 9, Jakarta Pusat
79	Distribusi Mega Bersama	083054567879	Jl. Patimura No. 11, Malang
80	Distribusi Bumi Jaya	085054567880	Jl. Raya Timur No. 13, Surabaya
81	Distribusi Karya Sejahtera	081154567881	Jl. Dipatiukur No. 15, Bandung
82	Distribusi Nusantara Bersatu	082154567882	Jl. Raya Sukaraja No. 17, Bogor
83	Distribusi Cahaya Dunia	083154567883	Jl. Pangeran Jayakarta No. 19, Jakarta Utara
84	Distribusi Mitra Gemilang	085154567884	Jl. Anggrek No. 21, Tangerang
85	Distribusi Bintang Timur	081254567885	Jl. Raya Selatan No. 23, Denpasar
86	Distribusi Indo Sejahtera	082254567886	Jl. Kenari No. 25, Yogyakarta
87	Distribusi Citra Bersama	083254567887	Jl. Pandanaran No. 27, Semarang
88	Distribusi Sinar Mentari	085254567888	Jl. Proklamasi No. 29, Bandung
89	Distribusi Harapan Baru	081354567889	Jl. Diponegoro No. 31, Surabaya
90	Distribusi Mitra Utama	082354567890	Jl. Gatot Subroto No. 33, Makassar
91	Distribusi Sejahtera Lestari	083354567891	Jl. Ahmad Dahlan No. 35, Palembang
92	Distribusi Mega Niaga	085354567892	Jl. Soekarno Hatta No. 37, Malang
93	Distribusi Nusantara Abadi	081454567893	Jl. Pahlawan No. 39, Yogyakarta
94	Distribusi Daya Bersama	082454567894	Jl. Merdeka No. 41, Bandung
95	Distribusi Amanah Makmur	083454567895	Jl. Raya Timur No. 43, Cirebon
96	Distribusi Global Sentosa	085454567896	Jl. Basuki Rahmat No. 45, Surabaya
97	Distribusi Citra Mulia	081554567897	Jl. Pandega No. 47, Malang
98	Distribusi Mitra Sejahtera	082554567898	Jl. Proklamasi No. 49, Jakarta Timur
99	Distribusi Dunia Makmur	083554567899	Jl. Margonda No. 51, Depok
100	Distribusi Pertiwi Abadi	085554567800	Jl. Tidar No. 53, Malang
\.


--
-- TOC entry 4925 (class 0 OID 16484)
-- Dependencies: 218
-- Data for Name: gudang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gudang (gudang_, nama, lokasi, kontak, kapasitas) FROM stdin;
1	Gudang Surabaya	Jl. Industri No. 1, Surabaya	081234567801	2000
2	Gudang Sidoarjo	Jl. Raya Tropodo No. 2, Sidoarjo	081234567802	1800
3	Gudang Gresik	Jl. Pahlawan No. 3, Gresik	081234567803	2500
4	Gudang Malang	Jl. Soekarno Hatta No. 4, Malang	081234567804	1900
5	Gudang Mojokerto	Jl. Empu Nala No. 5, Mojokerto	081234567805	1700
6	Gudang Pasuruan	Jl. Veteran No. 6, Pasuruan	081234567806	2100
7	Gudang Kediri	Jl. Joyoboyo No. 7, Kediri	081234567807	1600
8	Gudang Blitar	Jl. Merdeka No. 8, Blitar	081234567808	2300
9	Gudang Tulungagung	Jl. Diponegoro No. 9, Tulungagung	081234567809	2000
10	Gudang Lamongan	Jl. Basuki Rahmat No. 10, Lamongan	081234567810	1900
11	Gudang Bojonegoro	Jl. Pemuda No. 11, Bojonegoro	081234567811	2100
12	Gudang Jombang	Jl. KH Wahid Hasyim No. 12, Jombang	081234567812	2000
13	Gudang Banyuwangi	Jl. Ijen No. 13, Banyuwangi	081234567813	2300
14	Gudang Probolinggo	Jl. Gatot Subroto No. 14, Probolinggo	081234567814	2200
15	Gudang Tuban	Jl. Sunan Bonang No. 15, Tuban	081234567815	2100
16	Gudang Madiun	Jl. Dr Sutomo No. 16, Madiun	081234567816	2000
17	Gudang Ponorogo	Jl. Raya Timur No. 17, Ponorogo	081234567817	2100
18	Gudang Ngawi	Jl. Raya Barat No. 18, Ngawi	081234567818	1900
19	Gudang Magetan	Jl. Pahlawan No. 19, Magetan	081234567819	1700
20	Gudang Nganjuk	Jl. Ahmad Yani No. 20, Nganjuk	081234567820	1600
21	Gudang Bangkalan	Jl. Raya Kamal No. 21, Bangkalan	081234567821	1800
22	Gudang Sampang	Jl. Trunojoyo No. 22, Sampang	081234567822	1900
23	Gudang Pamekasan	Jl. Jokotole No. 23, Pamekasan	081234567823	2000
24	Gudang Sumenep	Jl. Raya Talango No. 24, Sumenep	081234567824	2100
25	Gudang Batu	Jl. Selecta No. 25, Batu	081234567825	1900
26	Gudang Pacitan	Jl. Ronggo Warsito No. 26, Pacitan	081234567826	1800
27	Gudang Situbondo	Jl. Argopuro No. 27, Situbondo	081234567827	1700
28	Gudang Bondowoso	Jl. Ki Hajar Dewantara No. 28, Bondowoso	081234567828	2100
29	Gudang Trenggalek	Jl. Cokroaminoto No. 29, Trenggalek	081234567829	2200
30	Gudang Blora	Jl. Randublatung No. 30, Blora	081234567830	1900
31	Gudang Cepu	Jl. Migas No. 31, Cepu	081234567831	2000
32	Gudang Rembang	Jl. Kartini No. 32, Rembang	081234567832	2300
33	Gudang Pati	Jl. Sudirman No. 33, Pati	081234567833	1800
34	Gudang Kudus	Jl. Sunan Kudus No. 34, Kudus	081234567834	2100
35	Gudang Jepara	Jl. Karimun Jawa No. 35, Jepara	081234567835	2000
36	Gudang Demak	Jl. Sultan Fatah No. 36, Demak	081234567836	1900
37	Gudang Semarang	Jl. Majapahit No. 37, Semarang	081234567837	2500
38	Gudang Salatiga	Jl. Diponegoro No. 38, Salatiga	081234567838	2200
39	Gudang Kendal	Jl. Laut No. 39, Kendal	081234567839	2000
40	Gudang Batang	Jl. Pantura No. 40, Batang	081234567840	1900
41	Gudang Pekalongan	Jl. Slamet Riyadi No. 41, Pekalongan	081234567841	2300
42	Gudang Tegal	Jl. KS Tubun No. 42, Tegal	081234567842	2000
43	Gudang Brebes	Jl. Ahmad Yani No. 43, Brebes	081234567843	1900
44	Gudang Cilacap	Jl. Nusantara No. 44, Cilacap	081234567844	2100
45	Gudang Banyumas	Jl. Adipati No. 45, Banyumas	081234567845	2000
46	Gudang Purwokerto	Jl. Gerilya No. 46, Purwokerto	081234567846	2200
47	Gudang Kebumen	Jl. Sudirman No. 47, Kebumen	081234567847	2000
48	Gudang Wonosobo	Jl. Dieng No. 48, Wonosobo	081234567848	2100
49	Gudang Magelang	Jl. Tidar No. 49, Magelang	081234567849	2000
50	Gudang Temanggung	Jl. Sumbing No. 50, Temanggung	081234567850	1900
51	Gudang Solo	Jl. Slamet Riyadi No. 51, Solo	081234567851	2400
52	Gudang Sragen	Jl. Raya Timur No. 52, Sragen	081234567852	1900
53	Gudang Karanganyar	Jl. Lawu No. 53, Karanganyar	081234567853	2200
54	Gudang Sukoharjo	Jl. Veteran No. 54, Sukoharjo	081234567854	2000
55	Gudang Wonogiri	Jl. Raya Selatan No. 55, Wonogiri	081234567855	1800
56	Gudang Klaten	Jl. Pemuda No. 56, Klaten	081234567856	1900
57	Gudang Boyolali	Jl. Pandanaran No. 57, Boyolali	081234567857	2100
58	Gudang Yogyakarta	Jl. Kaliurang No. 58, Yogyakarta	081234567858	2400
59	Gudang Sleman	Jl. Maguwoharjo No. 59, Sleman	081234567859	2200
60	Gudang Bantul	Jl. Imogiri Timur No. 60, Bantul	081234567860	2100
61	Gudang Kulon Progo	Jl. Wates No. 61, Kulon Progo	081234567861	2000
62	Gudang Gunungkidul	Jl. Baron No. 62, Gunungkidul	081234567862	1900
63	Gudang Purworejo	Jl. Kusuma No. 63, Purworejo	081234567863	2000
64	Gudang Kebayoran	Jl. Cendrawasih No. 64, Jakarta	081234567864	2300
65	Gudang Cikarang	Jl. Industri No. 65, Bekasi	081234567865	2400
66	Gudang Bekasi	Jl. Cut Meutia No. 66, Bekasi	081234567866	2100
67	Gudang Karawang	Jl. Raya Teluk Jambe No. 67, Karawang	081234567867	2200
68	Gudang Bogor	Jl. Pajajaran No. 68, Bogor	081234567868	2000
69	Gudang Depok	Jl. Margonda No. 69, Depok	081234567869	1900
70	Gudang Tangerang	Jl. Daan Mogot No. 70, Tangerang	081234567870	2100
71	Gudang Serang	Jl. Raya Serang No. 71, Serang	081234567871	2200
72	Gudang Cilegon	Jl. Krakatau No. 72, Cilegon	081234567872	2000
73	Gudang Bandung	Jl. Asia Afrika No. 73, Bandung	081234567873	2400
74	Gudang Cimahi	Jl. Gatot Subroto No. 74, Cimahi	081234567874	2000
75	Gudang Garut	Jl. Ahmad Yani No. 75, Garut	081234567875	1900
76	Gudang Tasikmalaya	Jl. HZ Mustofa No. 76, Tasikmalaya	081234567876	2100
77	Gudang Cirebon	Jl. Kartini No. 77, Cirebon	081234567877	2300
78	Gudang Majalengka	Jl. Kuningan No. 78, Majalengka	081234567878	2000
79	Gudang Kuningan	Jl. Siliwangi No. 79, Kuningan	081234567879	1900
80	Gudang Indramayu	Jl. Pantura No. 80, Indramayu	081234567880	2200
81	Gudang Subang	Jl. Otto Iskandardinata No. 81, Subang	081234567881	2000
82	Gudang Purwakarta	Jl. Sudirman No. 82, Purwakarta	081234567882	2100
83	Gudang Sukabumi	Jl. Pelabuhan II No. 83, Sukabumi	081234567883	2000
84	Gudang Cianjur	Jl. Raya Cipanas No. 84, Cianjur	081234567884	1900
85	Gudang Pangandaran	Jl. Pantai Barat No. 85, Pangandaran	081234567885	2000
86	Gudang Banjar	Jl. Merdeka No. 86, Banjar	081234567886	2100
87	Gudang Bogor Barat	Jl. Dramaga No. 87, Bogor	081234567887	2200
88	Gudang Jakarta Timur	Jl. Perintis No. 88, Jakarta Timur	081234567888	2300
89	Gudang Jakarta Barat	Jl. Tomang Raya No. 89, Jakarta Barat	081234567889	2400
90	Gudang Jakarta Selatan	Jl. Fatmawati No. 90, Jakarta Selatan	081234567890	2500
91	Gudang Jakarta Utara	Jl. Pluit No. 91, Jakarta Utara	081234567891	2200
92	Gudang Jakarta Pusat	Jl. Thamrin No. 92, Jakarta Pusat	081234567892	2300
93	Gudang Tangerang Selatan	Jl. BSD Raya No. 93, Tangerang Selatan	081234567893	2400
94	Gudang Bekasi Timur	Jl. Cikarang Barat No. 94, Bekasi	081234567894	2200
95	Gudang Bandung Timur	Jl. Soekarno-Hatta No. 95, Bandung	081234567895	2500
96	Gudang Cimanggis	Jl. Raya Bogor No. 96, Cimanggis	081234567896	2300
97	Gudang Karang Tengah	Jl. Raya Ciledug No. 97, Tangerang	081234567897	2100
98	Gudang Cibitung	Jl. Sultan Hasanudin No. 98, Bekasi	081234567898	2000
99	Gudang Parung	Jl. Raya Parung No. 99, Bogor	081234567899	1900
100	Gudang Cileungsi	Jl. Narogong No. 100, Cileungsi	081234567800	2100
\.


--
-- TOC entry 4927 (class 0 OID 16491)
-- Dependencies: 220
-- Data for Name: karyawan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.karyawan (karyawan_, gudang_, nama, jabatan, no_hp, alamat) FROM stdin;
1	1	Andi Prasetyo	Manajer Gudang	081234567801	Jl. Merdeka No.1, Surabaya
2	2	Rina Kartika	Admin Gudang	081234567802	Jl. Mawar No.2, Sidoarjo
3	3	Bagus Santoso	Operator	081234567803	Jl. Kenanga No.3, Gresik
4	4	Dewi Ayu Lestari	Staf Pengiriman	081234567804	Jl. Melati No.4, Mojokerto
5	5	Fajar Nugraha	Manajer Gudang	081234567805	Jl. Flamboyan No.5, Malang
6	6	Lestari Putri	Admin Gudang	081234567806	Jl. Anggrek No.6, Pasuruan
7	7	Dimas Wahyudi	Operator	081234567807	Jl. Dahlia No.7, Blitar
8	8	Sinta Rahmawati	Staf Pengiriman	081234567808	Jl. Teratai No.8, Jombang
9	9	Reza Gunawan	Manajer Gudang	081234567809	Jl. Melur No.9, Kediri
10	10	Ayu Fitriani	Admin Gudang	081234567810	Jl. Mawar No.10, Tulungagung
11	1	Budi Setiawan	Operator	081234567811	Jl. Mangga No.11, Surabaya
12	2	Citra Handayani	Staf Pengiriman	081234567812	Jl. Cempaka No.12, Sidoarjo
13	3	Galang Pratama	Manajer Gudang	081234567813	Jl. Nangka No.13, Gresik
14	4	Putri Amelia	Admin Gudang	081234567814	Jl. Rambutan No.14, Mojokerto
15	5	Yudha Prakoso	Operator	081234567815	Jl. Durian No.15, Malang
16	6	Mega Sari	Staf Pengiriman	081234567816	Jl. Jambu No.16, Pasuruan
17	7	Rafi Ahmad	Manajer Gudang	081234567817	Jl. Pisang No.17, Blitar
18	8	Nadia Safitri	Admin Gudang	081234567818	Jl. Semangka No.18, Jombang
19	9	Imam Fauzi	Operator	081234567819	Jl. Pepaya No.19, Kediri
20	10	Vina Marlina	Staf Pengiriman	081234567820	Jl. Jeruk No.20, Tulungagung
21	1	Arif Setiawan	Manajer Gudang	081234567821	Jl. Mawar No.21, Surabaya
22	2	Dwi Lestari	Admin Gudang	081234567822	Jl. Melati No.22, Sidoarjo
23	3	Yoga Pratomo	Operator	081234567823	Jl. Kenanga No.23, Gresik
24	4	Tika Nuraini	Staf Pengiriman	081234567824	Jl. Flamboyan No.24, Mojokerto
25	5	Rizky Hidayat	Manajer Gudang	081234567825	Jl. Anggrek No.25, Malang
26	6	Lina Marlina	Admin Gudang	081234567826	Jl. Dahlia No.26, Pasuruan
27	7	Fikri Maulana	Operator	081234567827	Jl. Teratai No.27, Blitar
28	8	Alya Ramadhani	Staf Pengiriman	081234567828	Jl. Melur No.28, Jombang
29	9	Aditya Saputra	Manajer Gudang	081234567829	Jl. Mawar No.29, Kediri
30	10	Ratna Dewi	Admin Gudang	081234567830	Jl. Cempaka No.30, Tulungagung
31	1	Hendra Kurniawan	Operator	081234567831	Jl. Nangka No.31, Surabaya
32	2	Sari Anggraini	Staf Pengiriman	081234567832	Jl. Rambutan No.32, Sidoarjo
33	3	Yogi Prabowo	Manajer Gudang	081234567833	Jl. Durian No.33, Gresik
34	4	Fitri Yuliana	Admin Gudang	081234567834	Jl. Jambu No.34, Mojokerto
35	5	Rehan Fadillah	Operator	081234567835	Jl. Pisang No.35, Malang
36	6	Anisa Wulandari	Staf Pengiriman	081234567836	Jl. Semangka No.36, Pasuruan
37	7	Bayu Adi Saputra	Manajer Gudang	081234567837	Jl. Pepaya No.37, Blitar
38	8	Tiara Kusuma	Admin Gudang	081234567838	Jl. Jeruk No.38, Jombang
39	9	Eko Prasetyo	Operator	081234567839	Jl. Mangga No.39, Kediri
40	10	Nina Amalia	Staf Pengiriman	081234567840	Jl. Melati No.40, Tulungagung
41	1	Ilham Firmansyah	Manajer Gudang	081234567841	Jl. Kenanga No.41, Surabaya
42	2	Yulia Dewanti	Admin Gudang	081234567842	Jl. Flamboyan No.42, Sidoarjo
43	3	Randy Kurnia	Operator	081234567843	Jl. Anggrek No.43, Gresik
44	4	Laila Putri	Staf Pengiriman	081234567844	Jl. Dahlia No.44, Mojokerto
45	5	Wahyu Saputra	Manajer Gudang	081234567845	Jl. Teratai No.45, Malang
46	6	Mira Oktaviani	Admin Gudang	081234567846	Jl. Melur No.46, Pasuruan
47	7	Ahmad Rifai	Operator	081234567847	Jl. Mawar No.47, Blitar
48	8	Della Nurfadila	Staf Pengiriman	081234567848	Jl. Cempaka No.48, Jombang
49	9	Riko Hernawan	Manajer Gudang	081234567849	Jl. Nangka No.49, Kediri
50	10	Salsa Amelia	Admin Gudang	081234567850	Jl. Rambutan No.50, Tulungagung
51	1	Galih Pratama	Operator	081234567851	Jl. Durian No.51, Surabaya
52	2	Dina Handayani	Staf Pengiriman	081234567852	Jl. Jambu No.52, Sidoarjo
53	3	Taufik Rahman	Manajer Gudang	081234567853	Jl. Pisang No.53, Gresik
54	4	Nadya Aulia	Admin Gudang	081234567854	Jl. Semangka No.54, Mojokerto
55	5	Rio Aditya	Operator	081234567855	Jl. Pepaya No.55, Malang
56	6	Selvi Nuraini	Staf Pengiriman	081234567856	Jl. Jeruk No.56, Pasuruan
57	7	Aditia Syahputra	Manajer Gudang	081234567857	Jl. Mangga No.57, Blitar
58	8	Nia Kurniasih	Admin Gudang	081234567858	Jl. Melati No.58, Jombang
59	9	Farhan Hidayat	Operator	081234567859	Jl. Kenanga No.59, Kediri
60	10	Yuliana Sari	Staf Pengiriman	081234567860	Jl. Flamboyan No.60, Tulungagung
61	1	Angga Prasetya	Manajer Gudang	081234567861	Jl. Anggrek No.61, Surabaya
62	2	Maya Oktaviani	Admin Gudang	081234567862	Jl. Dahlia No.62, Sidoarjo
63	3	Iqbal Ramadhan	Operator	081234567863	Jl. Teratai No.63, Gresik
64	4	Riska Amelia	Staf Pengiriman	081234567864	Jl. Melur No.64, Mojokerto
65	5	Vino Pradana	Manajer Gudang	081234567865	Jl. Mawar No.65, Malang
66	6	Dewi Kusuma	Admin Gudang	081234567866	Jl. Cempaka No.66, Pasuruan
67	7	Agus Rahman	Operator	081234567867	Jl. Nangka No.67, Blitar
68	8	Sella Pratiwi	Staf Pengiriman	081234567868	Jl. Rambutan No.68, Jombang
69	9	Kevin Saputra	Manajer Gudang	081234567869	Jl. Durian No.69, Kediri
70	10	Cindy Lestari	Admin Gudang	081234567870	Jl. Jambu No.70, Tulungagung
71	1	Rendy Prakoso	Operator	081234567871	Jl. Pisang No.71, Surabaya
72	2	Suci Ramadhani	Staf Pengiriman	081234567872	Jl. Semangka No.72, Sidoarjo
73	3	Tomi Wijaya	Manajer Gudang	081234567873	Jl. Pepaya No.73, Gresik
74	4	Alya Nabila	Admin Gudang	081234567874	Jl. Jeruk No.74, Mojokerto
75	5	Rizal Febrianto	Operator	081234567875	Jl. Mangga No.75, Malang
76	6	Putri Wulandari	Staf Pengiriman	081234567876	Jl. Melati No.76, Pasuruan
77	7	Fajar Hidayat	Manajer Gudang	081234567877	Jl. Kenanga No.77, Blitar
78	8	Lina Amelia	Admin Gudang	081234567878	Jl. Flamboyan No.78, Jombang
79	9	Andra Kusnadi	Operator	081234567879	Jl. Anggrek No.79, Kediri
80	10	Rani Oktavia	Staf Pengiriman	081234567880	Jl. Dahlia No.80, Tulungagung
81	1	Bagas Ramadhan	Manajer Gudang	081234567881	Jl. Teratai No.81, Surabaya
82	2	Aulia Putri	Admin Gudang	081234567882	Jl. Melur No.82, Sidoarjo
83	3	Dani Pratama	Operator	081234567883	Jl. Mawar No.83, Gresik
84	4	Winda Lestari	Staf Pengiriman	081234567884	Jl. Cempaka No.84, Mojokerto
85	5	Fikri Ananda	Manajer Gudang	081234567885	Jl. Nangka No.85, Malang
86	6	Nabila Sari	Admin Gudang	081234567886	Jl. Rambutan No.86, Pasuruan
87	7	Rian Hidayat	Operator	081234567887	Jl. Durian No.87, Blitar
88	8	Dewi Marlina	Staf Pengiriman	081234567888	Jl. Jambu No.88, Jombang
89	9	Fahri Prakoso	Manajer Gudang	081234567889	Jl. Pisang No.89, Kediri
90	10	Tania Fitri	Admin Gudang	081234567890	Jl. Semangka No.90, Tulungagung
91	1	Hafiz Ramadhan	Operator	081234567891	Jl. Pepaya No.91, Surabaya
92	2	Mega Anggraini	Staf Pengiriman	081234567892	Jl. Jeruk No.92, Sidoarjo
93	3	Yoga Aditya	Manajer Gudang	081234567893	Jl. Mangga No.93, Gresik
94	4	Novi Wulandari	Admin Gudang	081234567894	Jl. Melati No.94, Mojokerto
95	5	Bayu Nugroho	Operator	081234567895	Jl. Kenanga No.95, Malang
96	6	Salsa Dewanti	Staf Pengiriman	081234567896	Jl. Flamboyan No.96, Pasuruan
97	7	Dio Santoso	Manajer Gudang	081234567897	Jl. Anggrek No.97, Blitar
98	8	Karina Aulia	Admin Gudang	081234567898	Jl. Dahlia No.98, Jombang
99	9	Edi Pratama	Operator	081234567899	Jl. Teratai No.99, Kediri
100	10	Salsa Amalia	Staf Pengiriman	081234567900	Jl. Melur No.100, Tulungagung
\.


--
-- TOC entry 4935 (class 0 OID 16530)
-- Dependencies: 228
-- Data for Name: pembelian_bm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembelian_bm (id_pembelian, karyawan_, supplier_, tgl_masuk, total_harga) FROM stdin;
1	12	5	2024-01-10	750000.00
2	45	7	2024-01-15	1250000.00
3	8	12	2024-01-22	2900000.00
4	26	3	2024-02-05	4600000.00
5	77	9	2024-02-10	1100000.00
6	39	1	2024-02-18	870000.00
7	58	15	2024-03-01	6400000.00
8	17	2	2024-03-05	720000.00
9	22	8	2024-03-11	915000.00
10	6	4	2024-03-22	4800000.00
11	19	10	2024-04-02	2350000.00
12	51	13	2024-04-05	615000.00
13	34	11	2024-04-13	5450000.00
14	69	16	2024-04-20	8100000.00
15	28	6	2024-04-28	980000.00
16	92	7	2024-05-02	7450000.00
17	13	14	2024-05-08	3100000.00
18	55	3	2024-05-14	650000.00
19	44	19	2024-05-21	1020000.00
20	31	12	2024-05-25	9350000.00
21	2	17	2024-06-03	3400000.00
22	78	1	2024-06-10	2250000.00
23	11	18	2024-06-18	580000.00
24	52	2	2024-06-24	4250000.00
25	16	20	2024-07-02	1250000.00
26	73	4	2024-07-10	3300000.00
27	84	6	2024-07-15	1180000.00
28	66	10	2024-07-21	480000.00
29	41	13	2024-07-25	9400000.00
30	25	8	2024-08-02	815000.00
31	56	9	2024-08-08	2750000.00
32	33	5	2024-08-13	4200000.00
33	61	11	2024-08-19	5150000.00
34	5	2	2024-08-26	6500000.00
35	93	15	2024-09-02	880000.00
36	10	16	2024-09-08	3550000.00
37	38	19	2024-09-12	780000.00
38	48	3	2024-09-20	9100000.00
39	1	17	2024-09-25	7300000.00
40	81	6	2024-10-01	1270000.00
41	50	18	2024-10-08	3650000.00
42	60	4	2024-10-12	640000.00
43	63	13	2024-10-20	5200000.00
44	18	8	2024-10-28	290000.00
45	3	14	2024-11-02	1200000.00
46	90	1	2024-11-10	745000.00
47	37	11	2024-11-16	9850000.00
48	20	9	2024-11-21	3250000.00
49	70	10	2024-11-27	2650000.00
50	4	7	2024-12-03	1450000.00
51	9	5	2024-12-08	875000.00
52	95	2	2024-12-15	13400000.00
53	23	17	2024-12-20	1580000.00
54	42	12	2024-12-25	7450000.00
55	29	6	2025-01-05	1020000.00
56	75	18	2025-01-10	2200000.00
57	40	20	2025-01-18	8400000.00
58	72	3	2025-01-25	680000.00
59	46	11	2025-02-02	9550000.00
60	64	10	2025-02-08	2150000.00
61	67	7	2025-02-12	1330000.00
62	24	5	2025-02-20	500000.00
63	36	8	2025-02-28	4600000.00
64	7	14	2025-03-04	3650000.00
65	14	15	2025-03-09	2700000.00
66	21	9	2025-03-15	3750000.00
67	53	1	2025-03-21	490000.00
68	27	19	2025-03-27	8150000.00
69	68	13	2025-04-02	1420000.00
70	76	16	2025-04-08	610000.00
71	32	10	2025-04-15	7800000.00
72	15	12	2025-04-22	515000.00
73	59	17	2025-04-28	3400000.00
74	65	3	2025-05-03	900000.00
75	30	11	2025-05-09	13450000.00
76	83	4	2025-05-14	2650000.00
77	35	2	2025-05-20	990000.00
78	85	7	2025-05-25	475000.00
79	49	6	2025-06-02	1500000.00
80	62	5	2025-06-09	3600000.00
81	94	8	2025-06-15	7800000.00
82	57	13	2025-06-21	1400000.00
83	80	9	2025-06-28	930000.00
84	71	14	2025-07-02	1280000.00
85	54	15	2025-07-07	3400000.00
86	47	10	2025-07-12	12000000.00
87	79	11	2025-07-18	2400000.00
88	91	1	2025-07-25	1320000.00
89	43	16	2025-08-01	730000.00
90	82	18	2025-08-06	2600000.00
91	86	2	2025-08-12	1480000.00
92	74	20	2025-08-18	890000.00
93	87	5	2025-08-24	1090000.00
94	96	3	2025-08-30	985000.00
95	97	4	2025-09-05	6700000.00
96	98	9	2025-09-11	1420000.00
97	99	10	2025-09-18	9500000.00
98	100	6	2025-09-25	1380000.00
99	12	4	2025-10-05	1875000.00
100	47	9	2025-10-08	3120000.00
\.


--
-- TOC entry 4939 (class 0 OID 16564)
-- Dependencies: 232
-- Data for Name: penjualan_bk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.penjualan_bk (id_penjualan_bk, karyawan_, distribusi_, tgl_keluar, total_harga) FROM stdin;
1	1	5	2024-01-05	250000.00
2	2	8	2024-01-12	320000.00
3	3	10	2024-01-18	400000.00
4	4	15	2024-01-25	550000.00
5	5	18	2024-02-02	600000.00
6	6	20	2024-02-09	700000.00
7	7	25	2024-02-17	450000.00
8	8	28	2024-02-25	300000.00
9	9	30	2024-03-03	280000.00
10	10	33	2024-03-11	500000.00
11	11	35	2024-03-18	600000.00
12	12	38	2024-03-25	720000.00
13	13	40	2024-04-02	800000.00
14	14	43	2024-04-10	550000.00
15	15	45	2024-04-17	300000.00
16	16	48	2024-04-24	270000.00
17	17	50	2024-05-01	620000.00
18	18	53	2024-05-08	740000.00
19	19	55	2024-05-15	810000.00
20	20	58	2024-05-22	350000.00
21	21	60	2024-05-29	400000.00
22	22	63	2024-06-05	900000.00
23	23	65	2024-06-12	650000.00
24	24	68	2024-06-19	480000.00
25	25	70	2024-06-26	500000.00
26	26	73	2024-07-03	320000.00
27	27	75	2024-07-10	730000.00
28	28	78	2024-07-17	620000.00
29	29	80	2024-07-24	270000.00
30	30	83	2024-07-31	950000.00
31	31	85	2024-08-07	890000.00
32	32	88	2024-08-14	520000.00
33	33	90	2024-08-21	410000.00
34	34	93	2024-08-28	610000.00
35	35	95	2024-09-04	560000.00
36	36	98	2024-09-11	480000.00
37	37	1	2024-09-18	780000.00
38	38	3	2024-09-25	330000.00
39	39	6	2024-10-02	870000.00
40	40	9	2024-10-09	640000.00
41	41	12	2024-10-16	710000.00
42	42	14	2024-10-23	270000.00
43	43	17	2024-10-30	680000.00
44	44	19	2024-11-06	550000.00
45	45	22	2024-11-13	930000.00
46	46	24	2024-11-20	300000.00
47	47	27	2024-11-27	720000.00
48	48	29	2024-12-04	820000.00
49	49	32	2024-12-11	600000.00
50	50	34	2024-12-18	340000.00
51	51	37	2024-12-25	510000.00
52	52	39	2024-12-31	460000.00
53	53	42	2024-01-06	700000.00
54	54	44	2024-01-13	810000.00
55	55	47	2024-01-20	880000.00
56	56	49	2024-01-27	290000.00
57	57	52	2024-02-03	560000.00
58	58	54	2024-02-10	670000.00
59	59	57	2024-02-17	380000.00
60	60	59	2024-02-24	490000.00
61	61	62	2024-03-02	520000.00
62	62	64	2024-03-09	930000.00
63	63	67	2024-03-16	750000.00
64	64	69	2024-03-23	620000.00
65	65	72	2024-03-30	860000.00
66	66	74	2024-04-06	370000.00
67	67	77	2024-04-13	580000.00
68	68	79	2024-04-20	700000.00
69	69	82	2024-04-27	640000.00
70	70	84	2024-05-04	510000.00
71	71	87	2024-05-11	760000.00
72	72	89	2024-05-18	830000.00
73	73	92	2024-05-25	340000.00
74	74	94	2024-06-01	600000.00
75	75	97	2024-06-08	700000.00
76	76	99	2024-06-15	280000.00
77	77	2	2024-06-22	440000.00
78	78	4	2024-06-29	510000.00
79	79	7	2024-07-06	610000.00
80	80	11	2024-07-13	900000.00
81	81	13	2024-07-20	850000.00
82	82	16	2024-07-27	420000.00
83	83	21	2024-08-03	740000.00
84	84	23	2024-08-10	560000.00
85	85	26	2024-08-17	470000.00
86	86	31	2024-08-24	510000.00
87	87	36	2024-08-31	610000.00
88	88	41	2024-09-07	700000.00
89	89	46	2024-09-14	750000.00
90	90	51	2024-09-21	680000.00
91	91	56	2024-09-28	360000.00
92	92	61	2024-10-05	580000.00
93	93	66	2024-10-12	810000.00
94	94	71	2024-10-19	900000.00
95	95	76	2024-10-26	450000.00
96	96	81	2024-11-02	300000.00
97	97	86	2024-11-09	570000.00
98	98	91	2024-11-16	690000.00
99	99	96	2024-11-23	820000.00
100	100	100	2024-11-30	770000.00
\.


--
-- TOC entry 4942 (class 0 OID 16597)
-- Dependencies: 235
-- Data for Name: penyimpanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.penyimpanan (gudang_, barang_, jumlah) FROM stdin;
1	110	200
2	111	180
3	112	150
4	113	220
5	114	170
1	115	250
2	116	190
3	117	210
4	118	260
5	119	240
1	120	180
2	121	200
3	122	150
4	123	230
5	124	190
1	125	270
2	126	220
3	127	160
4	128	250
5	129	300
1	130	210
2	131	190
3	132	200
4	133	170
5	134	230
1	135	240
2	136	260
3	137	180
4	138	250
5	139	220
1	140	160
2	141	190
3	142	210
4	143	230
5	144	270
1	145	200
2	146	250
3	147	190
4	148	240
5	149	210
1	150	260
2	151	300
3	152	230
4	153	180
5	154	220
1	155	250
2	156	160
3	157	270
4	158	190
5	159	210
1	160	240
2	161	220
3	162	280
4	163	200
5	164	250
1	165	230
2	166	210
3	167	270
4	168	260
5	169	300
1	170	190
2	171	180
3	172	220
4	173	250
5	174	200
1	175	260
2	176	230
3	177	190
4	178	210
5	179	240
1	180	280
2	181	250
3	182	170
4	183	230
5	184	260
1	185	300
2	186	220
3	187	180
4	188	250
5	189	240
1	190	270
2	191	210
3	192	260
4	193	200
5	194	230
1	195	300
2	196	250
3	197	170
4	198	210
5	199	240
1	200	260
2	201	190
3	202	220
4	203	280
5	204	230
1	205	250
2	206	210
3	207	260
4	208	300
5	209	270
20	110	150
82	111	180
25	112	200
26	113	175
27	114	160
93	115	220
11	116	250
39	117	190
19	118	210
66	119	230
6	110	200
7	111	150
8	112	180
9	113	220
10	114	170
12	115	250
13	116	210
14	117	230
15	118	260
16	119	240
17	120	200
18	121	180
21	122	210
22	123	\N
23	123	\N
24	123	\N
28	123	\N
29	123	\N
30	123	\N
31	123	\N
32	123	\N
33	123	\N
34	123	\N
35	123	\N
36	123	\N
37	123	\N
38	123	\N
40	123	\N
41	123	\N
42	123	\N
43	123	\N
44	123	\N
45	123	\N
46	123	\N
47	123	\N
48	123	\N
49	123	\N
50	123	\N
51	123	\N
52	123	\N
53	123	\N
54	123	\N
55	123	\N
56	123	\N
57	123	\N
58	123	\N
59	123	\N
60	123	\N
61	123	\N
62	123	\N
63	123	\N
64	123	\N
65	123	\N
67	123	\N
68	123	\N
69	123	\N
70	123	\N
71	123	\N
72	123	\N
73	123	\N
74	123	\N
75	123	\N
76	123	\N
77	123	\N
78	123	\N
79	123	\N
80	123	\N
81	123	\N
83	123	\N
84	123	\N
85	123	\N
86	123	\N
87	123	\N
88	123	\N
89	123	\N
90	123	\N
91	123	\N
92	123	\N
94	123	\N
95	123	\N
96	123	\N
97	123	\N
98	123	\N
99	123	\N
100	123	\N
\.


--
-- TOC entry 4929 (class 0 OID 16505)
-- Dependencies: 222
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (supplier_, nama, kontak, alamat) FROM stdin;
1	PT Sumber Makmur Sejahtera	081245670001	Jl. Raya Industri No. 1, Sidoarjo
2	PT Berkah Niaga Abadi	081245670002	Jl. Pahlawan No. 2, Surabaya
3	PT Maju Bersama	081245670003	Jl. Raya Tropodo No. 3, Sidoarjo
4	CV Anugerah Sentosa	081245670004	Jl. Diponegoro No. 4, Malang
5	PT Mandiri Perkasa	081245670005	Jl. Soekarno Hatta No. 5, Gresik
6	CV Mitra Abadi	081245670006	Jl. Veteran No. 6, Mojokerto
7	PT Cahaya Utama	081245670007	Jl. Raya Pandaan No. 7, Pasuruan
8	PT Jaya Agung	081245670008	Jl. Basuki Rahmat No. 8, Kediri
9	CV Kencana Jaya	081245670009	Jl. Merdeka No. 9, Blitar
10	PT Sinar Mandiri	081245670010	Jl. Diponegoro No. 10, Tulungagung
11	PT Cipta Niaga	081245670011	Jl. Pemuda No. 11, Lamongan
12	CV Multi Sumber	081245670012	Jl. KH Hasyim Asy’ari No. 12, Bojonegoro
13	PT Berkat Abadi	081245670013	Jl. Ijen No. 13, Banyuwangi
14	CV Sumber Jaya	081245670014	Jl. Gatot Subroto No. 14, Probolinggo
15	PT Cahaya Baru	081245670015	Jl. Sunan Bonang No. 15, Tuban
16	PT Wijaya Karya Sentosa	081245670016	Jl. Dr Sutomo No. 16, Madiun
17	CV Indo Makmur	081245670017	Jl. Raya Timur No. 17, Ponorogo
18	PT Guna Lestari	081245670018	Jl. Raya Barat No. 18, Ngawi
19	PT Duta Niaga	081245670019	Jl. Pahlawan No. 19, Magetan
20	CV Prima Sentosa	081245670020	Jl. Ahmad Yani No. 20, Nganjuk
21	PT Indo Jaya Lestari	081245670021	Jl. Raya Kamal No. 21, Bangkalan
22	CV Makmur Jaya	081245670022	Jl. Trunojoyo No. 22, Sampang
23	PT Sukses Bersama	081245670023	Jl. Jokotole No. 23, Pamekasan
24	PT Inti Makmur Abadi	081245670024	Jl. Talango No. 24, Sumenep
25	CV Karya Bersama	081245670025	Jl. Selecta No. 25, Batu
26	PT Mandiri Jaya	081245670026	Jl. Ronggo Warsito No. 26, Pacitan
27	PT Mega Sukses	081245670027	Jl. Argopuro No. 27, Situbondo
28	PT Cipta Abadi	081245670028	Jl. Dewantara No. 28, Bondowoso
29	CV Multi Sentosa	081245670029	Jl. Cokroaminoto No. 29, Trenggalek
30	PT Berkat Sejati	081245670030	Jl. Randublatung No. 30, Blora
31	CV Guna Makmur	081245670031	Jl. Migas No. 31, Cepu
32	PT Harapan Baru	081245670032	Jl. Kartini No. 32, Rembang
33	PT Mitra Jaya Abadi	081245670033	Jl. Sudirman No. 33, Pati
34	CV Sukses Bersatu	081245670034	Jl. Sunan Kudus No. 34, Kudus
35	PT Nusantara Niaga	081245670035	Jl. Karimun Jawa No. 35, Jepara
36	CV Putra Mandiri	081245670036	Jl. Sultan Fatah No. 36, Demak
37	PT Cahaya Lestari	081245670037	Jl. Majapahit No. 37, Semarang
38	CV Indo Niaga	081245670038	Jl. Diponegoro No. 38, Salatiga
39	PT Bina Makmur	081245670039	Jl. Laut No. 39, Kendal
40	CV Sejahtera Abadi	081245670040	Jl. Pantura No. 40, Batang
41	PT Alam Sentosa	081245670041	Jl. Slamet Riyadi No. 41, Pekalongan
42	PT Tunas Mandiri	081245670042	Jl. KS Tubun No. 42, Tegal
43	CV Artha Jaya	081245670043	Jl. Ahmad Yani No. 43, Brebes
44	PT Daya Makmur	081245670044	Jl. Nusantara No. 44, Cilacap
45	PT Buana Sejahtera	081245670045	Jl. Adipati No. 45, Banyumas
46	CV Sinar Harapan	081245670046	Jl. Gerilya No. 46, Purwokerto
47	PT Fortuna Abadi	081245670047	Jl. Sudirman No. 47, Kebumen
48	PT Wijaya Sentosa	081245670048	Jl. Dieng No. 48, Wonosobo
49	CV Cahaya Indah	081245670049	Jl. Tidar No. 49, Magelang
50	PT Griya Niaga	081245670050	Jl. Sumbing No. 50, Temanggung
51	PT Delta Niaga Mandiri	081245670051	Jl. Slamet Riyadi No. 51, Solo
52	PT Makmur Bersatu	081245670052	Jl. Raya Timur No. 52, Sragen
53	CV Citra Sejahtera	081245670053	Jl. Lawu No. 53, Karanganyar
54	PT Cakra Mandiri	081245670054	Jl. Veteran No. 54, Sukoharjo
55	CV Kencana Makmur	081245670055	Jl. Selatan No. 55, Wonogiri
56	PT Berkat Makmur Lestari	081245670056	Jl. Pemuda No. 56, Klaten
57	CV Aruna Jaya	081245670057	Jl. Pandanaran No. 57, Boyolali
58	PT Lestari Sentosa	081245670058	Jl. Kaliurang No. 58, Yogyakarta
59	PT Samudra Makmur	081245670059	Jl. Maguwoharjo No. 59, Sleman
60	CV Mitra Usaha	081245670060	Jl. Imogiri Timur No. 60, Bantul
61	PT Inti Sukses Bersama	081245670061	Jl. Wates No. 61, Kulon Progo
62	PT Multi Jaya Sentosa	081245670062	Jl. Baron No. 62, Gunungkidul
63	CV Sumber Baru	081245670063	Jl. Kusuma No. 63, Purworejo
64	PT Cipta Mandiri	081245670064	Jl. Cendrawasih No. 64, Jakarta
65	CV Putra Sejahtera	081245670065	Jl. Industri No. 65, Bekasi
66	PT Dwi Tunggal Niaga	081245670066	Jl. Cut Meutia No. 66, Bekasi
67	CV Cahaya Karya	081245670067	Jl. Teluk Jambe No. 67, Karawang
68	PT Mahkota Abadi	081245670068	Jl. Pajajaran No. 68, Bogor
69	CV Mitra Prima	081245670069	Jl. Margonda No. 69, Depok
70	PT Bumi Lestari	081245670070	Jl. Daan Mogot No. 70, Tangerang
71	CV Nusantara Bersatu	081245670071	Jl. Raya Serang No. 71, Serang
72	PT Karya Mulia	081245670072	Jl. Krakatau No. 72, Cilegon
73	PT Indo Prima Niaga	081245670073	Jl. Asia Afrika No. 73, Bandung
74	CV Rahayu Makmur	081245670074	Jl. Gatot Subroto No. 74, Cimahi
75	PT Sejahtera Lestari	081245670075	Jl. Ahmad Yani No. 75, Garut
76	PT Mitra Jaya Mandiri	081245670076	Jl. HZ Mustofa No. 76, Tasikmalaya
77	CV Cahaya Mandiri	081245670077	Jl. Kartini No. 77, Cirebon
78	PT Global Niaga	081245670078	Jl. Kuningan No. 78, Majalengka
79	CV Mitra Utama	081245670079	Jl. Siliwangi No. 79, Kuningan
80	PT Mega Abadi	081245670080	Jl. Pantura No. 80, Indramayu
81	CV Citra Lestari	081245670081	Jl. Otto Iskandardinata No. 81, Subang
82	PT Abadi Sentosa	081245670082	Jl. Sudirman No. 82, Purwakarta
83	CV Sinar Makmur	081245670083	Jl. Pelabuhan II No. 83, Sukabumi
84	PT Artha Sejahtera	081245670084	Jl. Raya Cipanas No. 84, Cianjur
85	CV Daya Abadi	081245670085	Jl. Pantai Barat No. 85, Pangandaran
86	PT Berkat Jaya	081245670086	Jl. Merdeka No. 86, Banjar
87	CV Anugerah Makmur	081245670087	Jl. Dramaga No. 87, Bogor
88	PT Bumi Agung	081245670088	Jl. Perintis No. 88, Jakarta Timur
89	PT Cahaya Timur	081245670089	Jl. Tomang Raya No. 89, Jakarta Barat
90	CV Cahaya Selatan	081245670090	Jl. Fatmawati No. 90, Jakarta Selatan
91	PT Mitra Pusat Niaga	081245670091	Jl. Pluit No. 91, Jakarta Utara
92	PT Anugerah Jaya	081245670092	Jl. Thamrin No. 92, Jakarta Pusat
93	CV Sinar Timur	081245670093	Jl. BSD Raya No. 93, Tangerang Selatan
94	PT Bumi Nusantara	081245670094	Jl. Cikarang Barat No. 94, Bekasi
95	CV Karya Timur	081245670095	Jl. Soekarno-Hatta No. 95, Bandung
96	PT Mandala Niaga	081245670096	Jl. Raya Bogor No. 96, Cimanggis
97	CV Indo Jaya	081245670097	Jl. Ciledug No. 97, Tangerang
98	PT Cahaya Mega	081245670098	Jl. Sultan Hasanudin No. 98, Bekasi
99	CV Mitra Niaga	081245670099	Jl. Raya Parung No. 99, Bogor
100	PT Sukses Mandiri Lestari	081245670100	Jl. Narogong No. 100, Cileungsi
\.


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 225
-- Name: barang_barang__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_barang__seq', 209, true);


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 233
-- Name: barangkeluar_id_bk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barangkeluar_id_bk_seq', 100, true);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 229
-- Name: barangmasuk_id_bm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barangmasuk_id_bm_seq', 600, true);


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 223
-- Name: distribusi_distribusi__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.distribusi_distribusi__seq', 100, true);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 217
-- Name: gudang_gudang__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gudang_gudang__seq', 100, true);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 219
-- Name: karyawan_karyawan__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.karyawan_karyawan__seq', 100, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 227
-- Name: pembelian_bm_id_pembelian_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembelian_bm_id_pembelian_seq', 100, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 231
-- Name: penjualan_bk_id_penjualan_bk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penjualan_bk_id_penjualan_bk_seq', 100, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 221
-- Name: supplier_supplier__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_supplier__seq', 100, true);


--
-- TOC entry 4757 (class 2606 OID 16528)
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (barang_);


--
-- TOC entry 4765 (class 2606 OID 16586)
-- Name: barangkeluar barangkeluar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangkeluar
    ADD CONSTRAINT barangkeluar_pkey PRIMARY KEY (id_bk);


--
-- TOC entry 4761 (class 2606 OID 16552)
-- Name: barangmasuk barangmasuk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangmasuk
    ADD CONSTRAINT barangmasuk_pkey PRIMARY KEY (id_bm);


--
-- TOC entry 4755 (class 2606 OID 16521)
-- Name: distribusi distribusi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distribusi
    ADD CONSTRAINT distribusi_pkey PRIMARY KEY (distribusi_);


--
-- TOC entry 4749 (class 2606 OID 16489)
-- Name: gudang gudang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gudang
    ADD CONSTRAINT gudang_pkey PRIMARY KEY (gudang_);


--
-- TOC entry 4751 (class 2606 OID 16498)
-- Name: karyawan karyawan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.karyawan
    ADD CONSTRAINT karyawan_pkey PRIMARY KEY (karyawan_);


--
-- TOC entry 4759 (class 2606 OID 16535)
-- Name: pembelian_bm pembelian_bm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembelian_bm
    ADD CONSTRAINT pembelian_bm_pkey PRIMARY KEY (id_pembelian);


--
-- TOC entry 4763 (class 2606 OID 16569)
-- Name: penjualan_bk penjualan_bk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penjualan_bk
    ADD CONSTRAINT penjualan_bk_pkey PRIMARY KEY (id_penjualan_bk);


--
-- TOC entry 4767 (class 2606 OID 16601)
-- Name: penyimpanan penyimpanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penyimpanan
    ADD CONSTRAINT penyimpanan_pkey PRIMARY KEY (gudang_, barang_);


--
-- TOC entry 4753 (class 2606 OID 16512)
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supplier_);


--
-- TOC entry 4775 (class 2606 OID 16587)
-- Name: barangkeluar barangkeluar_barang__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangkeluar
    ADD CONSTRAINT barangkeluar_barang__fkey FOREIGN KEY (barang_) REFERENCES public.barang(barang_);


--
-- TOC entry 4776 (class 2606 OID 16592)
-- Name: barangkeluar barangkeluar_id_penjualan_bk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangkeluar
    ADD CONSTRAINT barangkeluar_id_penjualan_bk_fkey FOREIGN KEY (id_penjualan_bk) REFERENCES public.penjualan_bk(id_penjualan_bk);


--
-- TOC entry 4771 (class 2606 OID 16553)
-- Name: barangmasuk barangmasuk_barang__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangmasuk
    ADD CONSTRAINT barangmasuk_barang__fkey FOREIGN KEY (barang_) REFERENCES public.barang(barang_);


--
-- TOC entry 4772 (class 2606 OID 16558)
-- Name: barangmasuk barangmasuk_id_pembelian_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barangmasuk
    ADD CONSTRAINT barangmasuk_id_pembelian_fkey FOREIGN KEY (id_pembelian) REFERENCES public.pembelian_bm(id_pembelian);


--
-- TOC entry 4768 (class 2606 OID 16499)
-- Name: karyawan karyawan_gudang__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.karyawan
    ADD CONSTRAINT karyawan_gudang__fkey FOREIGN KEY (gudang_) REFERENCES public.gudang(gudang_);


--
-- TOC entry 4769 (class 2606 OID 16536)
-- Name: pembelian_bm pembelian_bm_karyawan__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembelian_bm
    ADD CONSTRAINT pembelian_bm_karyawan__fkey FOREIGN KEY (karyawan_) REFERENCES public.karyawan(karyawan_);


--
-- TOC entry 4770 (class 2606 OID 16541)
-- Name: pembelian_bm pembelian_bm_supplier__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembelian_bm
    ADD CONSTRAINT pembelian_bm_supplier__fkey FOREIGN KEY (supplier_) REFERENCES public.supplier(supplier_);


--
-- TOC entry 4773 (class 2606 OID 16575)
-- Name: penjualan_bk penjualan_bk_distribusi__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penjualan_bk
    ADD CONSTRAINT penjualan_bk_distribusi__fkey FOREIGN KEY (distribusi_) REFERENCES public.distribusi(distribusi_);


--
-- TOC entry 4774 (class 2606 OID 16570)
-- Name: penjualan_bk penjualan_bk_karyawan__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penjualan_bk
    ADD CONSTRAINT penjualan_bk_karyawan__fkey FOREIGN KEY (karyawan_) REFERENCES public.karyawan(karyawan_);


--
-- TOC entry 4777 (class 2606 OID 16607)
-- Name: penyimpanan penyimpanan_barang__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penyimpanan
    ADD CONSTRAINT penyimpanan_barang__fkey FOREIGN KEY (barang_) REFERENCES public.barang(barang_);


--
-- TOC entry 4778 (class 2606 OID 16602)
-- Name: penyimpanan penyimpanan_gudang__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penyimpanan
    ADD CONSTRAINT penyimpanan_gudang__fkey FOREIGN KEY (gudang_) REFERENCES public.gudang(gudang_);


-- Completed on 2025-10-22 20:04:43

--
-- PostgreSQL database dump complete
--

\unrestrict 2fy9dXg5FSNVBzact5PRHVaEvfrotvhZ25PrLtQ4GU7hua9OcAlglhLpI88kjXk

