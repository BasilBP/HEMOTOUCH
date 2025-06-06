PGDMP                      }            hemotouchdb    17.4    17.4 4    a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            d           1262    24582    hemotouchdb    DATABASE     q   CREATE DATABASE hemotouchdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE hemotouchdb;
                     postgres    false            �            1259    32824    appointments    TABLE       CREATE TABLE public.appointments (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer NOT NULL,
    bloodgp character varying(10),
    phno character varying(15) NOT NULL,
    address text NOT NULL,
    appointment_date date NOT NULL
);
     DROP TABLE public.appointments;
       public         heap r       postgres    false            �            1259    32823    appointments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.appointments_id_seq;
       public               postgres    false    227            e           0    0    appointments_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;
          public               postgres    false    226            �            1259    32832    blood_quantity    TABLE     i   CREATE TABLE public.blood_quantity (
    bloodgp character varying(10) NOT NULL,
    quantity integer
);
 "   DROP TABLE public.blood_quantity;
       public         heap r       postgres    false            �            1259    24590    compatible_bgp    TABLE     !  CREATE TABLE public.compatible_bgp (
    "A+" character varying(5),
    "A-" character varying(5),
    "B+" character varying(5),
    "B-" character varying(5),
    "AB+" character varying(5),
    "AB-" character varying(5),
    "O+" character varying(5),
    "O-" character varying(5)
);
 "   DROP TABLE public.compatible_bgp;
       public         heap r       postgres    false            �            1259    32783    compatible_bgp_don    TABLE     >  CREATE TABLE public.compatible_bgp_don (
    id integer NOT NULL,
    "A+" character varying(5),
    "A-" character varying(5),
    "B+" character varying(5),
    "B-" character varying(5),
    "AB+" character varying(5),
    "AB-" character varying(5),
    "O+" character varying(5),
    "O-" character varying(5)
);
 &   DROP TABLE public.compatible_bgp_don;
       public         heap r       postgres    false            �            1259    32782    compatible_bgp_don_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compatible_bgp_don_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.compatible_bgp_don_id_seq;
       public               postgres    false    223            f           0    0    compatible_bgp_don_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.compatible_bgp_don_id_seq OWNED BY public.compatible_bgp_don.id;
          public               postgres    false    222            �            1259    24584    donors    TABLE       CREATE TABLE public.donors (
    id integer NOT NULL,
    name character varying(50),
    age integer,
    bloodgp character varying(5),
    diseases character varying(100),
    phno character varying(15),
    address text,
    date_of_donation timestamp without time zone
);
    DROP TABLE public.donors;
       public         heap r       postgres    false            �            1259    24583    donors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.donors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.donors_id_seq;
       public               postgres    false    218            g           0    0    donors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.donors_id_seq OWNED BY public.donors.id;
          public               postgres    false    217            �            1259    32811 
   donorslist    TABLE     �  CREATE TABLE public.donorslist (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer,
    bloodgp character varying(5) NOT NULL,
    diseases text,
    phno character varying(15) NOT NULL,
    address text NOT NULL,
    hospital text NOT NULL,
    date_of_donation timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT donorslist_age_check CHECK ((age > 0))
);
    DROP TABLE public.donorslist;
       public         heap r       postgres    false            �            1259    32810    donorslist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.donorslist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.donorslist_id_seq;
       public               postgres    false    225            h           0    0    donorslist_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.donorslist_id_seq OWNED BY public.donorslist.id;
          public               postgres    false    224            �            1259    24594    pending    TABLE     �   CREATE TABLE public.pending (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    bloodgp text NOT NULL,
    phno bigint NOT NULL,
    address text NOT NULL
);
    DROP TABLE public.pending;
       public         heap r       postgres    false            �            1259    24593    pending_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pending_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pending_id_seq;
       public               postgres    false    221            i           0    0    pending_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pending_id_seq OWNED BY public.pending.id;
          public               postgres    false    220            �            1259    32838    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    32837    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    230            j           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    229            �           2604    32827    appointments id    DEFAULT     r   ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);
 >   ALTER TABLE public.appointments ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226    227            �           2604    32786    compatible_bgp_don id    DEFAULT     ~   ALTER TABLE ONLY public.compatible_bgp_don ALTER COLUMN id SET DEFAULT nextval('public.compatible_bgp_don_id_seq'::regclass);
 D   ALTER TABLE public.compatible_bgp_don ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    24587 	   donors id    DEFAULT     f   ALTER TABLE ONLY public.donors ALTER COLUMN id SET DEFAULT nextval('public.donors_id_seq'::regclass);
 8   ALTER TABLE public.donors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    32814    donorslist id    DEFAULT     n   ALTER TABLE ONLY public.donorslist ALTER COLUMN id SET DEFAULT nextval('public.donorslist_id_seq'::regclass);
 <   ALTER TABLE public.donorslist ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224    225            �           2604    24597 
   pending id    DEFAULT     h   ALTER TABLE ONLY public.pending ALTER COLUMN id SET DEFAULT nextval('public.pending_id_seq'::regclass);
 9   ALTER TABLE public.pending ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    220    221            �           2604    32841    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            [          0    32824    appointments 
   TABLE DATA           _   COPY public.appointments (id, name, age, bloodgp, phno, address, appointment_date) FROM stdin;
    public               postgres    false    227   <       \          0    32832    blood_quantity 
   TABLE DATA           ;   COPY public.blood_quantity (bloodgp, quantity) FROM stdin;
    public               postgres    false    228   �=       S          0    24590    compatible_bgp 
   TABLE DATA           Z   COPY public.compatible_bgp ("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-") FROM stdin;
    public               postgres    false    219   �=       W          0    32783    compatible_bgp_don 
   TABLE DATA           b   COPY public.compatible_bgp_don (id, "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-") FROM stdin;
    public               postgres    false    223   P>       R          0    24584    donors 
   TABLE DATA           c   COPY public.donors (id, name, age, bloodgp, diseases, phno, address, date_of_donation) FROM stdin;
    public               postgres    false    218   �>       Y          0    32811 
   donorslist 
   TABLE DATA           q   COPY public.donorslist (id, name, age, bloodgp, diseases, phno, address, hospital, date_of_donation) FROM stdin;
    public               postgres    false    225   �A       U          0    24594    pending 
   TABLE DATA           H   COPY public.pending (id, name, age, bloodgp, phno, address) FROM stdin;
    public               postgres    false    221   G       ^          0    32838    users 
   TABLE DATA           C   COPY public.users (id, username, password, created_at) FROM stdin;
    public               postgres    false    230   H       k           0    0    appointments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.appointments_id_seq', 50, true);
          public               postgres    false    226            l           0    0    compatible_bgp_don_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.compatible_bgp_don_id_seq', 15, true);
          public               postgres    false    222            m           0    0    donors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.donors_id_seq', 135, true);
          public               postgres    false    217            n           0    0    donorslist_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.donorslist_id_seq', 101, true);
          public               postgres    false    224            o           0    0    pending_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pending_id_seq', 20, true);
          public               postgres    false    220            p           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    229            �           2606    32831    appointments appointments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public                 postgres    false    227            �           2606    32836 "   blood_quantity blood_quantity_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.blood_quantity
    ADD CONSTRAINT blood_quantity_pkey PRIMARY KEY (bloodgp);
 L   ALTER TABLE ONLY public.blood_quantity DROP CONSTRAINT blood_quantity_pkey;
       public                 postgres    false    228            �           2606    32788 *   compatible_bgp_don compatible_bgp_don_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.compatible_bgp_don
    ADD CONSTRAINT compatible_bgp_don_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.compatible_bgp_don DROP CONSTRAINT compatible_bgp_don_pkey;
       public                 postgres    false    223            �           2606    24589    donors donors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.donors
    ADD CONSTRAINT donors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.donors DROP CONSTRAINT donors_pkey;
       public                 postgres    false    218            �           2606    32820    donorslist donorslist_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.donorslist
    ADD CONSTRAINT donorslist_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.donorslist DROP CONSTRAINT donorslist_pkey;
       public                 postgres    false    225            �           2606    24601    pending pending_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pending
    ADD CONSTRAINT pending_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pending DROP CONSTRAINT pending_pkey;
       public                 postgres    false    221            �           2606    32846    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    230            �           2606    32848    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public                 postgres    false    230            [   �  x��սN�0���)�Q�}��v`�C%6$*�$mP��=.P�M�z�?;��QlVoڻ�_}1�lV1cH;+�rl�u��}ӷ~���8U(@��>���~���Cd�yf�M����6���7�O��1<5�u#���O"C 02��̀�0��i�	�v	Bݘ����Ҟ~ ���KH��%9cc���_�	�|܍�i@Q��Q�3��ЩB�K�4����yw(���718Q��"�q�x^(3���y��T�@��������٩w좓.�L'Ϻ&���$N���K�'�]�?ˬ<���B͞}ݟ�μ� ��l}p��>��d������~�����J;r�v�>^�8{�o��o�3R+�ó�
^ ��&L      \   .   x�s��4�r��4�r��4�r��L�����4���1z\\\ ���      S   S   x�u���0���U�pP��s�c4!_����W���C&%��$��C2������A���.�y]���w?�x�9"�(      W   Z   x���t�!'0r�b��%����t9c��,]�].C_�"�9\��0�
��	���GC�@��8���L�K9��3�%������ ��-O      R   &  x���Ms�0�ϛ_�{���Go�&�J(mgz��j�`dF��8��+�hg� �ǻ��Y���X�٘�TAЂ�9ܥ�C��iG��y>�p�D�q�]j��<�U����!����M�g���}�|?���=��Pj=�4a(�7<ۡ�C��Zf� �	t5*6�'#��u���p�Ij��(}�%���s[�2׹>Y�����CЃ���7�̅�Y�k6Ks�7l�r�27��L<�f��C?3b�;r����è��p�Z�0F���6�m����"�2��	h>�zD6���&�Z�T�;l�ABA��c��eh��3�F�
)��~Һ��$M�ќU�=�Ʉ4�f�6cU`�Rm�&Y?�20��6����G�e�1��}\+��&�z���VO.�!(����5�c��u�"�8>�{��:�ϸ��J�1���V�u�D��m���`:�a�ڔ]X(e��S��U,Y�RT�]�E������O����;X����ɴ�bF�Lk*��#�ld�H���D4��N����r�؆)mܐr��Ǟ��������w�ex��S<nS����^�I�qn�e���#�T�]���6����|$��J�e\���=���կm��_$��X�+���uJX�z���ld���:�P�y�ۥ��6_!��5�ZoL��˚i�}��*� V�t��?�� Q��f����v۷{�}H��ېS$���gN![�7�k6�����5��=�s��I���[MZ=5���7���W�2z;��ggg �M�      Y     x��WMs�H=�����dcl/x�ݪ����5����D������ �n�/���t�{��#�F����LU^���h􎮋\�pЏB�u]�&���s|�79�uƋSg�gL��R���#�������㺿7'Q@�	���fm(p��.4?�J�[ �n��WU!�c����8aù3�g
B:G�Ke*���B4)�ƚͩs�hS���*�em��-���������l�x=�K�.��8���c����&�o�D��L��q�)����(Y�'��uU�-��O#S��Db��?t�E��K���E��gݑt�vf�h����*���V�Ǡ@�����M��j?�V�#�JK�^�<�[��"Vǔ����?�sK~_^��M��-H_�A�����G�"��#��-�/I<+��Oq�3;��a����h�:�e���U-gR/
��w���(�1*�1����{Q^+|H�V�$]"x��J9S|���L�.KMhxb%?�f�z%�Aj�Çt>��.���"��B���-��RSON7v�C�}`=,���%o$l���Ѩi�7�\�cr�~pP���J��K���H�C�3���◮8���;:d���e��Δ��Elo��B��+���y�訴�4-��b�H��n�"I%[p�s�����[��?÷��	(��}��<�d��sH*\�O��Y�0®0���<7m�	C��P��J}	��!Cd��?2��"AXCjv����Qq�a^�Pi��7/�{6)�X�8��z�g�tU@���ю#x}�ֲT�?ds���8!]�*ѹ̃aK�!F�^�\�Ds.��U�+�l����G��G�3�'u�\�U3�v]���(Ke�7�F�Ӝ�+��i�E6oH70�%7)�Ҿ�Wr�Md����w7; l�7�:;�5v|��z�C^�@ط��2�%�;�6�CA�Х�b��ZN��持��������1jY����1U�j��p����㕈�Sa@��a���\r�1�Y2��?7J9cc��*��ѯ4��3i��A�
���2r�y�w�G�ӣ�y��;
�M:�t g���_Xpɢx��
�[��Z*�׹��4ݮ"2����
C5�X΁��|�0o,�wϛݔ��Mm���b��4�E�ȥ��ti:�7�s�v�k�h�`͉~[�y2�����x���`U�奀c��z�Rгn��P<�J
��Sﮪ"�>(S���r�{�x�� 4Q"L-�po����WWo���3�l�8�X�К��G���z{n8�ڇ������;wڎe      U   �   x�}��n�0D��W�OlX�x������e��M�Ttkш��d��s�̛7��wiBa��@c�V�����+�<������ R�a��������c��n8��$���Enp��#��o�Yc5�@�zM�Ohp!��ů;YTE���MY�dǺ��4��*��r���J�}��cs�{ރ�ϫEY�x�C��m�Ꝗ���K$�-��2�r2Z      ^      x������ � �     