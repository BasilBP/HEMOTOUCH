PGDMP  &                    }            hemotouchdb    17.4    17.4 ,    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            W           1262    24582    hemotouchdb    DATABASE     q   CREATE DATABASE hemotouchdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
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
       public               postgres    false    227            X           0    0    appointments_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;
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
       public               postgres    false    223            Y           0    0    compatible_bgp_don_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.compatible_bgp_don_id_seq OWNED BY public.compatible_bgp_don.id;
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
       public               postgres    false    218            Z           0    0    donors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.donors_id_seq OWNED BY public.donors.id;
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
       public               postgres    false    225            [           0    0    donorslist_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.donorslist_id_seq OWNED BY public.donorslist.id;
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
       public               postgres    false    221            \           0    0    pending_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pending_id_seq OWNED BY public.pending.id;
          public               postgres    false    220            �           2604    32827    appointments id    DEFAULT     r   ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);
 >   ALTER TABLE public.appointments ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    227    227            �           2604    32786    compatible_bgp_don id    DEFAULT     ~   ALTER TABLE ONLY public.compatible_bgp_don ALTER COLUMN id SET DEFAULT nextval('public.compatible_bgp_don_id_seq'::regclass);
 D   ALTER TABLE public.compatible_bgp_don ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    24587 	   donors id    DEFAULT     f   ALTER TABLE ONLY public.donors ALTER COLUMN id SET DEFAULT nextval('public.donors_id_seq'::regclass);
 8   ALTER TABLE public.donors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    32814    donorslist id    DEFAULT     n   ALTER TABLE ONLY public.donorslist ALTER COLUMN id SET DEFAULT nextval('public.donorslist_id_seq'::regclass);
 <   ALTER TABLE public.donorslist ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    225    225            �           2604    24597 
   pending id    DEFAULT     h   ALTER TABLE ONLY public.pending ALTER COLUMN id SET DEFAULT nextval('public.pending_id_seq'::regclass);
 9   ALTER TABLE public.pending ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    220    221            P          0    32824    appointments 
   TABLE DATA           _   COPY public.appointments (id, name, age, bloodgp, phno, address, appointment_date) FROM stdin;
    public               postgres    false    227   f3       Q          0    32832    blood_quantity 
   TABLE DATA           ;   COPY public.blood_quantity (bloodgp, quantity) FROM stdin;
    public               postgres    false    228   �4       H          0    24590    compatible_bgp 
   TABLE DATA           Z   COPY public.compatible_bgp ("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-") FROM stdin;
    public               postgres    false    219   �4       L          0    32783    compatible_bgp_don 
   TABLE DATA           b   COPY public.compatible_bgp_don (id, "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-") FROM stdin;
    public               postgres    false    223   b5       G          0    24584    donors 
   TABLE DATA           c   COPY public.donors (id, name, age, bloodgp, diseases, phno, address, date_of_donation) FROM stdin;
    public               postgres    false    218   �5       N          0    32811 
   donorslist 
   TABLE DATA           q   COPY public.donorslist (id, name, age, bloodgp, diseases, phno, address, hospital, date_of_donation) FROM stdin;
    public               postgres    false    225   �9       J          0    24594    pending 
   TABLE DATA           H   COPY public.pending (id, name, age, bloodgp, phno, address) FROM stdin;
    public               postgres    false    221   �>       ]           0    0    appointments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.appointments_id_seq', 47, true);
          public               postgres    false    226            ^           0    0    compatible_bgp_don_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.compatible_bgp_don_id_seq', 15, true);
          public               postgres    false    222            _           0    0    donors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.donors_id_seq', 82, true);
          public               postgres    false    217            `           0    0    donorslist_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.donorslist_id_seq', 58, true);
          public               postgres    false    224            a           0    0    pending_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pending_id_seq', 18, true);
          public               postgres    false    220            �           2606    32831    appointments appointments_pkey 
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
       public                 postgres    false    221            P   R  x���=O�0���+�����_ӵC%6$#��P����*�M�^<G�^��ʧE���f럿֢���d'�n��x<u�t�����uUS�L��w<f���K7mvQ�[f����
Ch2�M�����1�un��F.�D�@bd�̙�Pss�@TFn�@�)�������r#�!2�e9s5�I]|�v�a=����,tX��Y@U�t�3%��B�
�B_�]����&']��sT�}!f���}�y��I S�������sK��U��:�|�0���k�0_8<��pi,�l�0����Ϟ�G�t> ���"�:3�����?���{ ��r\�      Q   '   x�s��4�rt��4�r1�!|0�$�@�?H:F��� ��      H   S   x�u���0���U�pP��s�c4!_����W���C&%��$��C2������A���.�y]���w?�x�9"�(      L   Z   x���t�!'0r�b��%����t9c��,]�].C_�"�9\��0�
��	���GC�@��8���L�K9��3�%������ ��-O      G   �  x���MO�H���_�w��]՟�%��6F0Bi/=K6$6rlv�_�e��� ���t��oU���US�e�	��'�,R�5Z!H����WeX��OU�u؜�eZ�u` @�Τ� �	�X	㭍@��4�"�C�.g�,��:�����<�u�D,d� �fW!k��<-ʂ)�'���}Z�i����+ز�{�����yE(�,�7��$��a��e��|1���A��!�u���e7�Czǯ
vy���:ۄY�eX�e5Vx��SZůxv�&M���r��E~dm�?_�{vUf��16����cU���y�b���u����a$�|ѷ��=�|�m*2fS�ڍ��K��΋/�/��P?9(U���m�����5����� �.���$mz�?	�Z�a���d�|���#�{�Xk�x'��t�%	^�͓i�0�la`uD�9渤�d�ul4J
LOe�l�'T��ه��x(L�m��j�"��L& �d�؂���d��ï�m޶�{J@��u^��Dl�E�{*{*>~�#��� Q)��9��4� !FJ���L���Ɉ:��r�j����`#�[�����vmt0˴Y�JR`�+��A�\"!V��H�+`qH��~���>�i��)����� IA�BjkU����^9 z|����]۷5(3x���<��)�+��V�q�%�取�����W&�bz<&AKZ%T��d�v�<Fk!}�ታ~HνABJ+Q>Fg=yQ����?�~�Q��X��t�Z��N��Qc�1jj��>;��{B�ސ�f�SO���	K�����bH3+�:�n2�r�vz"�?�bćP�d��P�C(�!�c�~��;���G\n]��ʞ��
���]���]���)�C�S��=
L��(x���%E�D�2q��Q&�i���1�=z��􆌡��Qz#���XpGq�)zDJ]�����c�x��!�nQ��f�2jG�+���?�r�?      N     x��X]s�:}�B�-�>��IsӔK�	�>ݗ���-1�M����cr)��a`��ٳ���jd�^jC?�vD$��;��E�$��@
���>X���c;�4~(9�Q�t�Δ���JQ��N�\� �әVf�J"��L�yLr1�� �Q�$�UtZ;UfD�d�'4<�
�/��~�kp��c�]���`Y;(v\�N)z���}ħr��f�3
fN�,36���SD�U�����!�U�D��@Y���<K�˲v;n��'�#�	^���\�<W�jC�A�
�,ۓ>E($��t�</0D22�꓏�r�2>̞]@&�f�:��?2��s��wOk$UX���G[.�����y�����"#_��z���׾?'z6��L�Gy��
��y�\#E�i	�I�����*�C[����e�:+��L�J-��f����vj1�yы��&����<���{�<+\J�^�
� "Rl�;2*����%�:Þf���\bd�{�ו��N�<X�
� %����SL2�ֵ�y�,�
z���tV�����N��;]D����Vۈm}N��	�e(�h����s�D�#�"�{��e^�1XTiy(����K�����S���a\�*!�� ��o���>}��^�W����8"oMt��Vk0e��$��`a�7�ڕr�P�jg��$��{��
M��0'">�-�}�`�l&6�16G���T��}��*�:��E�`�q����I>zc��r��wf�=��82}��L��j#{���݇�#\m�wӕ�Y��������r8+��"�8�k"�w��� �]�t{ƙ�+�)ּ� ���V��WK/��	�Z��	f=�?�k�ƺ�ߵѻ�w�
,�>����
��=��0�q<E��2[³v�h9�S{�	�o���E���֖��*4���V��7i�zg�Q��ܷ�bv&�c�	�aJ�^�Xb?}q+�����z�BC|��(�a��(�q�-2
ꪅ�${��T�!� A�x�cM��0�Xk�8X�Ͳ�v:��@�X��1;�#l·a8�K�=):��0H)"����]bc#y2H���n��!�q������K�d(ք�4����[RƆ����X��[�p�"�`$}/�N�Q�\x�v�nK�X/��/m�K'��#P���:mzNvŴi6�Ө+P� �[;��h��Ewhz��qg�}� Y'L[��z9U�@m��A���^��hpz�R[�a�b�����	j����6��6Q�U�w��K�wU���z��O2h��      J   �   x�}���0E�ӯ�5�RZ������t3*I�<�@M�{��Ǌ�Lr�=WCF��o�@�"���D�xEw�n����Ff����x�`�h�b!���:�/l�,>=a�ͅ���c���o��|4'K��=�
2�j��e!`��Q�6�iU���Ɔ��?,�]3����Uķ��������G�f���b����\�     