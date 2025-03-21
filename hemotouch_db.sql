PGDMP  .                    }            hemotouchdb    17.4    17.4 *    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            S           1262    24582    hemotouchdb    DATABASE     q   CREATE DATABASE hemotouchdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
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
       public               postgres    false    227            T           0    0    appointments_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;
          public               postgres    false    226            �            1259    24590    compatible_bgp    TABLE     !  CREATE TABLE public.compatible_bgp (
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
       public               postgres    false    223            U           0    0    compatible_bgp_don_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.compatible_bgp_don_id_seq OWNED BY public.compatible_bgp_don.id;
          public               postgres    false    222            �            1259    24584    donors    TABLE     .  CREATE TABLE public.donors (
    id integer NOT NULL,
    name character varying(50),
    age integer,
    bloodgp character varying(5),
    diseases character varying(100),
    phno character varying(15),
    address text,
    date_of_donation timestamp without time zone DEFAULT CURRENT_TIMESTAMP
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
       public               postgres    false    218            V           0    0    donors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.donors_id_seq OWNED BY public.donors.id;
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
       public               postgres    false    225            W           0    0    donorslist_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.donorslist_id_seq OWNED BY public.donorslist.id;
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
       public               postgres    false    221            X           0    0    pending_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pending_id_seq OWNED BY public.pending.id;
          public               postgres    false    220            �           2604    32827    appointments id    DEFAULT     r   ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);
 >   ALTER TABLE public.appointments ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226    227            �           2604    32786    compatible_bgp_don id    DEFAULT     ~   ALTER TABLE ONLY public.compatible_bgp_don ALTER COLUMN id SET DEFAULT nextval('public.compatible_bgp_don_id_seq'::regclass);
 D   ALTER TABLE public.compatible_bgp_don ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    24587 	   donors id    DEFAULT     f   ALTER TABLE ONLY public.donors ALTER COLUMN id SET DEFAULT nextval('public.donors_id_seq'::regclass);
 8   ALTER TABLE public.donors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    32814    donorslist id    DEFAULT     n   ALTER TABLE ONLY public.donorslist ALTER COLUMN id SET DEFAULT nextval('public.donorslist_id_seq'::regclass);
 <   ALTER TABLE public.donorslist ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224    225            �           2604    24597 
   pending id    DEFAULT     h   ALTER TABLE ONLY public.pending ALTER COLUMN id SET DEFAULT nextval('public.pending_id_seq'::regclass);
 9   ALTER TABLE public.pending ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    220    221            M          0    32824    appointments 
   TABLE DATA           _   COPY public.appointments (id, name, age, bloodgp, phno, address, appointment_date) FROM stdin;
    public               postgres    false    227   ~1       E          0    24590    compatible_bgp 
   TABLE DATA           Z   COPY public.compatible_bgp ("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-") FROM stdin;
    public               postgres    false    219   H2       I          0    32783    compatible_bgp_don 
   TABLE DATA           b   COPY public.compatible_bgp_don (id, "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-") FROM stdin;
    public               postgres    false    223   �2       D          0    24584    donors 
   TABLE DATA           c   COPY public.donors (id, name, age, bloodgp, diseases, phno, address, date_of_donation) FROM stdin;
    public               postgres    false    218   3       K          0    32811 
   donorslist 
   TABLE DATA           q   COPY public.donorslist (id, name, age, bloodgp, diseases, phno, address, hospital, date_of_donation) FROM stdin;
    public               postgres    false    225   �5       G          0    24594    pending 
   TABLE DATA           H   COPY public.pending (id, name, age, bloodgp, phno, address) FROM stdin;
    public               postgres    false    221   �9       Y           0    0    appointments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.appointments_id_seq', 11, true);
          public               postgres    false    226            Z           0    0    compatible_bgp_don_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.compatible_bgp_don_id_seq', 15, true);
          public               postgres    false    222            [           0    0    donors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.donors_id_seq', 46, true);
          public               postgres    false    217            \           0    0    donorslist_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.donorslist_id_seq', 22, true);
          public               postgres    false    224            ]           0    0    pending_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pending_id_seq', 17, true);
          public               postgres    false    220            �           2606    32831    appointments appointments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public                 postgres    false    227            �           2606    32788 *   compatible_bgp_don compatible_bgp_don_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.compatible_bgp_don
    ADD CONSTRAINT compatible_bgp_don_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.compatible_bgp_don DROP CONSTRAINT compatible_bgp_don_pkey;
       public                 postgres    false    223            �           2606    24589    donors donors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.donors
    ADD CONSTRAINT donors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.donors DROP CONSTRAINT donors_pkey;
       public                 postgres    false    218            �           2606    32822    donorslist donorslist_phno_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.donorslist
    ADD CONSTRAINT donorslist_phno_key UNIQUE (phno);
 H   ALTER TABLE ONLY public.donorslist DROP CONSTRAINT donorslist_phno_key;
       public                 postgres    false    225            �           2606    32820    donorslist donorslist_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.donorslist
    ADD CONSTRAINT donorslist_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.donorslist DROP CONSTRAINT donorslist_pkey;
       public                 postgres    false    225            �           2606    24601    pending pending_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pending
    ADD CONSTRAINT pending_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pending DROP CONSTRAINT pending_pkey;
       public                 postgres    false    221            M   �   x���=�0����+��Hr�h3�kA\"�%ڀ�{3Iۡ����;[�6)������eB��se���v��к.�QQ&(2"���+9��TP��QH��ܰ&�>k�$G��9���R)�W�Zd�-���9�o���NյI�b��e�?�Db����=|ww��Ζ��6|-�K&F������[      E   S   x�u���0���U�pP��s�c4!_����W���C&%��$��C2������A���.�y]���w?�x�9"�(      I   Z   x���t�!'0r�b��%����t9c��,]�].C_�"�9\��0�
��	���GC�@��8���L�K9��3�%������ ��-O      D   �  x���OO�@���O�w��;���-)�U#JR�^���$6Z۴��JRB+�T����7o޾�0�]����E��'pYW���$
�شv�Sv+��nu��>���\�a�-ԩ�&�6A��t�҅R�d g����7[���uۆ�#b}W��������WuJ��>�|l}����#������)�.C�]媶t]ܳ	���-;sP��h�㏄+����ڶ^҇����l
����M[�ܖ�`�u5>�O��0�7z5y��z��Ȼ������^��u�*�$�p ��:�a��`ȑg/�3�ܘE���2i8ڍ���14M)�]5�=���闒���O	�.��,4�5����5-�X���2���/5��d�&r詛��I#[�%��5��L����:�����B�S�=�Nh0��eL�,Qh�-	�ǲP��0/�Hy�Uߥy{��0�iS-��Y"��(bo�(IK��?��݇~%��S�T��,���l�<5Ơ"�s{>v�(m��#J���Ƽ��aR�\d2Q|�у\����	&T&ڬ�`�]����R�m���yٱ1u�]�{�Lߥ�Z	v��0,TVL���b�v'`����}�z�=�Ҽ�<�J�$U���K��	�r��U�2ﶷ�ѓ�:���-M��;��      K   �  x��V]o�J}~ž�Dx���!i�R�P����م���^�_�YB!��+!�?�93s�s�ܲ6�	�އ�_���~/M�1�D�߳���W6�s��G8�Y�G�h*�|���X.j��M�J����wx������x�:��QzՋҴ��bxٴv��'���V����=<��}[(t_�L*W�Ѡ���a��2uB��T�!��]�8����C�`31��j��9G�Ϫ��f\�p�lQwXy��:X:UU��s�^�(M�r:���3Z�ū���J����s��=��\���d7mxؔ�ya́]��3��0��R��B����ˆH�)b�`��ƪ��0AYkv+�����v�	����0�33=�S� P{y��Y�VD�PY�t��
��ƦD���e����>LiB�,�2t�F�,�#4K��oa���u� �<Q]7��Sd��
>�~����x}J���P\��,	�{���s�Q&���n���{j���u�v�9��Zc��	�.�3�`j��'X��48����!6�������C�@WI6VZ��8:q-���.u��PSRy,��n�O�1�)�
wyo}y���%�
��|����l��^]���풍���`Mr��Q+
����7���0��k�L!�oV��,�$x���bc�.��N|Ktg׸Z�6�hb3�Rihۖ��Z_��D�p�([�s#NO�L$g�XU%����,h�"A��A��7ᷲ���ݺ�>�զ��n�ehl8:H���r���k�H�yq\��> bCJ�W�俅�������y�H���O�jͦ���EM�׺v��ˬzSF���p�w����~���`^#NSt\W��W���r���<����%��|kJ��yO�3��kt�p�}��E�uR�0���7Y���~% {���y��z�KR�/=<b�_'�\�I�$i뿫V��<��      G   �   x���=O�0����^@�dLF�R���r�%�I�ʍ���cKP�R��Nz^=���>�@Ǽ`n��@g���ଁ1�:GG�pFb`k�D�x!aw_�V2.Z���|��0�O9�r�u�G�g��!��*i�-E�����%P�}8������C�i�s��%>����;?�_>�7���Bu�1��c9j]�g\k�a��Ri���a�X]â���K[z'�X����@��Xv�     