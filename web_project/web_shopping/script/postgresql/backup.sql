PGDMP     $    
                z         
   userapi_bd %   10.21 (Ubuntu 10.21-0ubuntu0.18.04.1) #   14.3 (Ubuntu 14.3-0ubuntu0.22.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49827 
   userapi_bd    DATABASE     _   CREATE DATABASE userapi_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_ES.UTF-8';
    DROP DATABASE userapi_bd;
                postgres    false            �            1259    50749    address    TABLE     	  CREATE TABLE public.address (
    id bigint NOT NULL,
    street_name character varying(100),
    street_number character varying(15),
    postal_code character varying(20),
    latitude numeric,
    longitude numeric,
    altitude numeric,
    city_code bigint
);
    DROP TABLE public.address;
       public            postgres    false            �            1259    50747    address_id_seq    SEQUENCE     w   CREATE SEQUENCE public.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public          postgres    false    225            �           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;
          public          postgres    false    224            �            1259    50828    address_supplier    TABLE       CREATE TABLE public.address_supplier (
    id bigint NOT NULL,
    street_name character varying(100),
    street_number character varying(15),
    postal_code character varying(20),
    latitude numeric,
    longitude numeric,
    altitude numeric,
    city_code bigint
);
 $   DROP TABLE public.address_supplier;
       public            postgres    false            �            1259    50826    address_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.address_supplier_id_seq;
       public          postgres    false    237            �           0    0    address_supplier_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.address_supplier_id_seq OWNED BY public.address_supplier.id;
          public          postgres    false    236            �            1259    49870 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            �            1259    49868    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            �            1259    49880    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            �            1259    49878    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            �            1259    49862    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            �            1259    49860    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    200            �            1259    49888 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            �            1259    49898    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            �            1259    49896    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    49886    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    206            �            1259    49906    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            �            1259    49904 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    210            �            1259    50887    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public            postgres    false            �            1259    50872    billing_type    TABLE     �   CREATE TABLE public.billing_type (
    id bigint NOT NULL,
    billing_name character varying(100),
    billing_detail character varying(200)
);
     DROP TABLE public.billing_type;
       public            postgres    false            �            1259    50870    billing_type_id_seq    SEQUENCE     |   CREATE SEQUENCE public.billing_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.billing_type_id_seq;
       public          postgres    false    242            �           0    0    billing_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.billing_type_id_seq OWNED BY public.billing_type.id;
          public          postgres    false    241            �            1259    50794    brand    TABLE     �   CREATE TABLE public.brand (
    id bigint NOT NULL,
    brand_name character varying(100),
    brand_description character varying(200)
);
    DROP TABLE public.brand;
       public            postgres    false            �            1259    50792    brand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.brand_id_seq;
       public          postgres    false    231            �           0    0    brand_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;
          public          postgres    false    230            �            1259    50802    category    TABLE     �   CREATE TABLE public.category (
    id bigint NOT NULL,
    category_name character varying(100),
    category_description character varying(200)
);
    DROP TABLE public.category;
       public            postgres    false            �            1259    50800    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    233            �           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    232            �            1259    50702    city    TABLE     �   CREATE TABLE public.city (
    id bigint NOT NULL,
    city_name character varying(100),
    city_numeric character varying(6),
    city_detail character varying(250),
    state_code bigint
);
    DROP TABLE public.city;
       public            postgres    false            �            1259    50700    city_id_seq    SEQUENCE     t   CREATE SEQUENCE public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.city_id_seq;
       public          postgres    false    220            �           0    0    city_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;
          public          postgres    false    219            �            1259    50681    country    TABLE       CREATE TABLE public.country (
    id bigint NOT NULL,
    country_name character varying(100),
    alpha2_code character varying(2),
    alpha3_code character varying(3),
    numeric_country character varying(3),
    country_detail character varying(250)
);
    DROP TABLE public.country;
       public            postgres    false            �            1259    50679    country_id_seq    SEQUENCE     w   CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    216            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    215            �            1259    50715    currency    TABLE     �   CREATE TABLE public.currency (
    id bigint NOT NULL,
    currency_name character varying(120),
    symbol character varying,
    country_code bigint
);
    DROP TABLE public.currency;
       public            postgres    false            �            1259    50729    currency_converter    TABLE     �   CREATE TABLE public.currency_converter (
    from_currency_code bigint NOT NULL,
    to_currency_code bigint NOT NULL,
    currency_day date NOT NULL,
    amount numeric NOT NULL
);
 &   DROP TABLE public.currency_converter;
       public            postgres    false            �            1259    50713    currency_id_seq    SEQUENCE     x   CREATE SEQUENCE public.currency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.currency_id_seq;
       public          postgres    false    222            �           0    0    currency_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.currency_id_seq OWNED BY public.currency.id;
          public          postgres    false    221            �            1259    49966    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            �            1259    49964    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    212            �            1259    49852    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            �            1259    49850    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    198            �            1259    49841    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            �            1259    49839    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    196            �            1259    49997    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            �            1259    50880 
   pay_method    TABLE     �   CREATE TABLE public.pay_method (
    id bigint NOT NULL,
    pay_name character varying(150),
    pay_detail character varying(200)
);
    DROP TABLE public.pay_method;
       public            postgres    false            �            1259    50878    pay_method_id_seq    SEQUENCE     z   CREATE SEQUENCE public.pay_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pay_method_id_seq;
       public          postgres    false    244            �           0    0    pay_method_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pay_method_id_seq OWNED BY public.pay_method.id;
          public          postgres    false    243            �            1259    50773    person    TABLE     w  CREATE TABLE public.person (
    id bigint NOT NULL,
    person_name character varying(150),
    last_name character varying(150),
    second_last_name character varying(150),
    birdthday date,
    person_phone character varying(20),
    person_email character varying(80),
    address_code bigint,
    national_identification character varying(60),
    sex_code bigint
);
    DROP TABLE public.person;
       public            postgres    false            �            1259    50771    person_id_seq    SEQUENCE     v   CREATE SEQUENCE public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    229            �           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    228            �            1259    50810    product    TABLE     �   CREATE TABLE public.product (
    id bigint NOT NULL,
    product_name character varying(150),
    product_description character varying(200),
    list_unit_price bigint,
    brand_code bigint,
    category_code bigint
);
    DROP TABLE public.product;
       public            postgres    false            �            1259    50808    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    235            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    234            �            1259    50765    sex    TABLE        CREATE TABLE public.sex (
    id bigint NOT NULL,
    sex_name character varying(80),
    sex_detail character varying(200)
);
    DROP TABLE public.sex;
       public            postgres    false            �            1259    50763 
   sex_id_seq    SEQUENCE     s   CREATE SEQUENCE public.sex_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.sex_id_seq;
       public          postgres    false    227            �           0    0 
   sex_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.sex_id_seq OWNED BY public.sex.id;
          public          postgres    false    226            �            1259    50689    states    TABLE     �   CREATE TABLE public.states (
    id bigint NOT NULL,
    state_name character varying(100),
    state_numeric character varying(3),
    state_detail character varying(250),
    country_code bigint
);
    DROP TABLE public.states;
       public            postgres    false            �            1259    50687    states_id_seq    SEQUENCE     v   CREATE SEQUENCE public.states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.states_id_seq;
       public          postgres    false    218            �           0    0    states_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;
          public          postgres    false    217            �            1259    50855    stock    TABLE     �   CREATE TABLE public.stock (
    supplier_code bigint NOT NULL,
    product_code bigint NOT NULL,
    buy_date date NOT NULL,
    unit_price bigint
);
    DROP TABLE public.stock;
       public            postgres    false            �            1259    50844    supplier    TABLE     �   CREATE TABLE public.supplier (
    id bigint NOT NULL,
    supplier_name character varying(150),
    supplier_phone character varying(20),
    supplier_email character varying(80),
    address_code bigint
);
    DROP TABLE public.supplier;
       public            postgres    false            �            1259    50842    supplier_id_seq    SEQUENCE     x   CREATE SEQUENCE public.supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.supplier_id_seq;
       public          postgres    false    239            �           0    0    supplier_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.supplier_id_seq OWNED BY public.supplier.id;
          public          postgres    false    238            m           2604    50752 
   address id    DEFAULT     h   ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 9   ALTER TABLE public.address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            s           2604    50831    address_supplier id    DEFAULT     z   ALTER TABLE ONLY public.address_supplier ALTER COLUMN id SET DEFAULT nextval('public.address_supplier_id_seq'::regclass);
 B   ALTER TABLE public.address_supplier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            b           2604    49873    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            c           2604    49883    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            a           2604    49865    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            d           2604    49891    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            e           2604    49901    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            f           2604    49909    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            u           2604    50875    billing_type id    DEFAULT     r   ALTER TABLE ONLY public.billing_type ALTER COLUMN id SET DEFAULT nextval('public.billing_type_id_seq'::regclass);
 >   ALTER TABLE public.billing_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            p           2604    50797    brand id    DEFAULT     d   ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);
 7   ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            q           2604    50805    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            k           2604    50705    city id    DEFAULT     b   ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);
 6   ALTER TABLE public.city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            i           2604    50684 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            l           2604    50718    currency id    DEFAULT     j   ALTER TABLE ONLY public.currency ALTER COLUMN id SET DEFAULT nextval('public.currency_id_seq'::regclass);
 :   ALTER TABLE public.currency ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            g           2604    49969    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            `           2604    49855    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    198    199            _           2604    49844    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            v           2604    50883    pay_method id    DEFAULT     n   ALTER TABLE ONLY public.pay_method ALTER COLUMN id SET DEFAULT nextval('public.pay_method_id_seq'::regclass);
 <   ALTER TABLE public.pay_method ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            o           2604    50776 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            r           2604    50813 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            n           2604    50768    sex id    DEFAULT     `   ALTER TABLE ONLY public.sex ALTER COLUMN id SET DEFAULT nextval('public.sex_id_seq'::regclass);
 5   ALTER TABLE public.sex ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            j           2604    50692 	   states id    DEFAULT     f   ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);
 8   ALTER TABLE public.states ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            t           2604    50847    supplier id    DEFAULT     j   ALTER TABLE ONLY public.supplier ALTER COLUMN id SET DEFAULT nextval('public.supplier_id_seq'::regclass);
 :   ALTER TABLE public.supplier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            y          0    50749    address 
   TABLE DATA           x   COPY public.address (id, street_name, street_number, postal_code, latitude, longitude, altitude, city_code) FROM stdin;
    public          postgres    false    225   n      �          0    50828    address_supplier 
   TABLE DATA           �   COPY public.address_supplier (id, street_name, street_number, postal_code, latitude, longitude, altitude, city_code) FROM stdin;
    public          postgres    false    237   �      c          0    49870 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   �      e          0    49880    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   �      a          0    49862    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   �      g          0    49888 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   J      i          0    49898    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209         k          0    49906    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211         �          0    50887    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    245   ;      �          0    50872    billing_type 
   TABLE DATA           H   COPY public.billing_type (id, billing_name, billing_detail) FROM stdin;
    public          postgres    false    242   �                0    50794    brand 
   TABLE DATA           B   COPY public.brand (id, brand_name, brand_description) FROM stdin;
    public          postgres    false    231   �      �          0    50802    category 
   TABLE DATA           K   COPY public.category (id, category_name, category_description) FROM stdin;
    public          postgres    false    233         t          0    50702    city 
   TABLE DATA           T   COPY public.city (id, city_name, city_numeric, city_detail, state_code) FROM stdin;
    public          postgres    false    220   :      p          0    50681    country 
   TABLE DATA           n   COPY public.country (id, country_name, alpha2_code, alpha3_code, numeric_country, country_detail) FROM stdin;
    public          postgres    false    216   �%      v          0    50715    currency 
   TABLE DATA           K   COPY public.currency (id, currency_name, symbol, country_code) FROM stdin;
    public          postgres    false    222   O5      w          0    50729    currency_converter 
   TABLE DATA           h   COPY public.currency_converter (from_currency_code, to_currency_code, currency_day, amount) FROM stdin;
    public          postgres    false    223   �5      m          0    49966    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   �5      _          0    49852    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   �5      ]          0    49841    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   e6      n          0    49997    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    214   Y8      �          0    50880 
   pay_method 
   TABLE DATA           >   COPY public.pay_method (id, pay_name, pay_detail) FROM stdin;
    public          postgres    false    244   v8      }          0    50773    person 
   TABLE DATA           �   COPY public.person (id, person_name, last_name, second_last_name, birdthday, person_phone, person_email, address_code, national_identification, sex_code) FROM stdin;
    public          postgres    false    229   �8      �          0    50810    product 
   TABLE DATA           t   COPY public.product (id, product_name, product_description, list_unit_price, brand_code, category_code) FROM stdin;
    public          postgres    false    235   A9      {          0    50765    sex 
   TABLE DATA           7   COPY public.sex (id, sex_name, sex_detail) FROM stdin;
    public          postgres    false    227   �9      r          0    50689    states 
   TABLE DATA           [   COPY public.states (id, state_name, state_numeric, state_detail, country_code) FROM stdin;
    public          postgres    false    218   �9      �          0    50855    stock 
   TABLE DATA           R   COPY public.stock (supplier_code, product_code, buy_date, unit_price) FROM stdin;
    public          postgres    false    240   ;      �          0    50844    supplier 
   TABLE DATA           c   COPY public.supplier (id, supplier_name, supplier_phone, supplier_email, address_code) FROM stdin;
    public          postgres    false    239   !;      �           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 2, true);
          public          postgres    false    224            �           0    0    address_supplier_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_supplier_id_seq', 3, true);
          public          postgres    false    236            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    billing_type_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.billing_type_id_seq', 2, true);
          public          postgres    false    241            �           0    0    brand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.brand_id_seq', 3, true);
          public          postgres    false    230            �           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 1, true);
          public          postgres    false    232            �           0    0    city_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.city_id_seq', 346, true);
          public          postgres    false    219            �           0    0    country_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.country_id_seq', 259, true);
          public          postgres    false    215            �           0    0    currency_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.currency_id_seq', 2, true);
          public          postgres    false    221            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    196            �           0    0    pay_method_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pay_method_id_seq', 3, true);
          public          postgres    false    243            �           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    228            �           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 3, true);
          public          postgres    false    234            �           0    0 
   sex_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.sex_id_seq', 3, true);
          public          postgres    false    226            �           0    0    states_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.states_id_seq', 16, true);
          public          postgres    false    217            �           0    0    supplier_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.supplier_id_seq', 1, true);
          public          postgres    false    238            �           2606    50757    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    225            �           2606    50836 &   address_supplier address_supplier_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.address_supplier
    ADD CONSTRAINT address_supplier_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.address_supplier DROP CONSTRAINT address_supplier_pkey;
       public            postgres    false    237            �           2606    49995    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203            �           2606    49922 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205            �           2606    49885 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    205            �           2606    49875    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    203                       2606    49913 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    201    201            �           2606    49867 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    201            �           2606    49903 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            �           2606    49937 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            �           2606    49893    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    207            �           2606    49911 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    211            �           2606    49951 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    211    211            �           2606    49989     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    207            �           2606    50891 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    245            �           2606    50893 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    245            �           2606    50877    billing_type billing_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.billing_type
    ADD CONSTRAINT billing_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.billing_type DROP CONSTRAINT billing_type_pkey;
       public            postgres    false    242            �           2606    50799    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    231            �           2606    50807    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    233            �           2606    50707    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    220            �           2606    50686    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    216            �           2606    50736 *   currency_converter currency_converter_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.currency_converter
    ADD CONSTRAINT currency_converter_pkey PRIMARY KEY (from_currency_code, to_currency_code, currency_day);
 T   ALTER TABLE ONLY public.currency_converter DROP CONSTRAINT currency_converter_pkey;
       public            postgres    false    223    223    223            �           2606    50723    currency currency_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.currency DROP CONSTRAINT currency_pkey;
       public            postgres    false    222            �           2606    49975 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213            z           2606    49859 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    199    199            |           2606    49857 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    199            x           2606    49849 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    197            �           2606    50004 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    214            �           2606    50885    pay_method pay_method_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pay_method
    ADD CONSTRAINT pay_method_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pay_method DROP CONSTRAINT pay_method_pkey;
       public            postgres    false    244            �           2606    50781    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    229            �           2606    50815    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    235            �           2606    50770    sex sex_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.sex
    ADD CONSTRAINT sex_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.sex DROP CONSTRAINT sex_pkey;
       public            postgres    false    227            �           2606    50694    states states_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.states DROP CONSTRAINT states_pkey;
       public            postgres    false    218            �           2606    50859    stock stock_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (supplier_code, product_code, buy_date);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    240    240    240            �           2606    50849    supplier supplier_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    239            �           1259    49996    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    203            �           1259    49933 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    205            �           1259    49934 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    205            }           1259    49919 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    201            �           1259    49949 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            �           1259    49948 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            �           1259    49963 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    211            �           1259    49962 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    211            �           1259    49990     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    207            �           1259    50899 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    245            �           1259    49986 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213            �           1259    49987 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213            �           1259    50006 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    214            �           1259    50005 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    214            �           2606    49928 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    201    205    2945            �           2606    49923 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    205    203    2950            �           2606    49914 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2940    199    201            �           2606    49943 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    203    209    2950            �           2606    49938 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2958    209    207            �           2606    49957 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    201    2945    211            �           2606    49952 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    2958    207            �           2606    50894 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          postgres    false    245    2958    207            �           2606    49976 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    213    199    2940            �           2606    49981 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    207    213    2958            �           2606    50758    address fk_address_city_id    FK CONSTRAINT     z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT fk_address_city_id FOREIGN KEY (city_code) REFERENCES public.city(id);
 D   ALTER TABLE ONLY public.address DROP CONSTRAINT fk_address_city_id;
       public          postgres    false    2987    225    220            �           2606    50837 #   address_supplier fk_address_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.address_supplier
    ADD CONSTRAINT fk_address_city_id FOREIGN KEY (city_code) REFERENCES public.city(id);
 M   ALTER TABLE ONLY public.address_supplier DROP CONSTRAINT fk_address_city_id;
       public          postgres    false    2987    237    220            �           2606    50708    city fk_city_states_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.city
    ADD CONSTRAINT fk_city_states_id FOREIGN KEY (state_code) REFERENCES public.states(id);
 @   ALTER TABLE ONLY public.city DROP CONSTRAINT fk_city_states_id;
       public          postgres    false    2985    218    220            �           2606    50737 3   currency_converter fk_currency_con_from_currency_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.currency_converter
    ADD CONSTRAINT fk_currency_con_from_currency_id FOREIGN KEY (from_currency_code) REFERENCES public.currency(id);
 ]   ALTER TABLE ONLY public.currency_converter DROP CONSTRAINT fk_currency_con_from_currency_id;
       public          postgres    false    2989    222    223            �           2606    50742 1   currency_converter fk_currency_con_to_currency_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.currency_converter
    ADD CONSTRAINT fk_currency_con_to_currency_id FOREIGN KEY (to_currency_code) REFERENCES public.currency(id);
 [   ALTER TABLE ONLY public.currency_converter DROP CONSTRAINT fk_currency_con_to_currency_id;
       public          postgres    false    222    223    2989            �           2606    50724    currency fk_currency_country_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT fk_currency_country_id FOREIGN KEY (country_code) REFERENCES public.country(id);
 I   ALTER TABLE ONLY public.currency DROP CONSTRAINT fk_currency_country_id;
       public          postgres    false    222    216    2983            �           2606    50782    person fk_person_address_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.person
    ADD CONSTRAINT fk_person_address_id FOREIGN KEY (address_code) REFERENCES public.address(id);
 E   ALTER TABLE ONLY public.person DROP CONSTRAINT fk_person_address_id;
       public          postgres    false    2993    225    229            �           2606    50850    supplier fk_person_address_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT fk_person_address_id FOREIGN KEY (address_code) REFERENCES public.address(id);
 G   ALTER TABLE ONLY public.supplier DROP CONSTRAINT fk_person_address_id;
       public          postgres    false    239    225    2993            �           2606    50787    person fk_person_sex_id    FK CONSTRAINT     u   ALTER TABLE ONLY public.person
    ADD CONSTRAINT fk_person_sex_id FOREIGN KEY (sex_code) REFERENCES public.sex(id);
 A   ALTER TABLE ONLY public.person DROP CONSTRAINT fk_person_sex_id;
       public          postgres    false    2995    229    227            �           2606    50816    product fk_product_brand_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_product_brand_id FOREIGN KEY (brand_code) REFERENCES public.brand(id);
 E   ALTER TABLE ONLY public.product DROP CONSTRAINT fk_product_brand_id;
       public          postgres    false    231    2999    235            �           2606    50821    product fk_product_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_product_category_id FOREIGN KEY (category_code) REFERENCES public.category(id);
 H   ALTER TABLE ONLY public.product DROP CONSTRAINT fk_product_category_id;
       public          postgres    false    233    3001    235            �           2606    50695    states fk_states_country_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.states
    ADD CONSTRAINT fk_states_country_id FOREIGN KEY (country_code) REFERENCES public.country(id);
 E   ALTER TABLE ONLY public.states DROP CONSTRAINT fk_states_country_id;
       public          postgres    false    218    2983    216            �           2606    50865    stock fk_stock_product_id    FK CONSTRAINT        ALTER TABLE ONLY public.stock
    ADD CONSTRAINT fk_stock_product_id FOREIGN KEY (product_code) REFERENCES public.product(id);
 C   ALTER TABLE ONLY public.stock DROP CONSTRAINT fk_stock_product_id;
       public          postgres    false    3003    235    240            �           2606    50860    stock fk_stock_supplier_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT fk_stock_supplier_id FOREIGN KEY (supplier_code) REFERENCES public.supplier(id);
 D   ALTER TABLE ONLY public.stock DROP CONSTRAINT fk_stock_supplier_id;
       public          postgres    false    239    240    3007            y   S   x�]�;
�0 �9�KK>M��ív��7ķ?�mc�q.`H1�%��Z(�C�T݉"��X�|_��%5��Y��x�^��W�      �   �   x�]�1�0@��9E/@dǎ� �0!f�J�R)��)����?<��t���T���&B
��JVa1c*Ȱ0��U��U ��C��=v��O�4��%��-��:����L����s`���m.�P��X��?���.C{=�� B�?�cΉ����h�^�f1�Bx7O3�      c      x������ � �      e      x������ � �      a   q  x�]�Mn�0���)8AC�ɺW�R�+EM1�6�/��=3��O�OzO8�ڏE��p-�����������%!��~�zE������#�?��U�>`��f����e�hJR�m��a'�V�)���XQ��(�S����>���ۺ��K{xq�)!�R�J��*�?�#	���}lq>�� �#��m��t\���9��Z�>&oj2�h�X�I�'B�?I�'~�/��D��b]�^|L�!a�l���<3����2&��Ye�	��y�E���e�sLL�X��LXX'3Mb­~_~4�����T��.@T� ��	 ���40'6����lT�$5���'N��UOE���Z����U      g   �   x�U��
�@E�3O�8|���d�F�B��R�T·Oj�Yܳ�N��Q���U��%LX!O�ov���j��.��8�=���n����n�r�`�<;������� ���jƍ�����Hc�@�M�$���wY^O���]4. R�9N)=3J�30�      i      x������ � �      k      x������ � �      �   L   x��A� �u��}O|Aг�1���͞�m�=�98����=�
�"v�N�٬���/�C�D��      �   )   x�3�L�IM.)���LVH�����2�,�L�N-�rc���� ��v         +   x�3�t��)���2��/(��I��2�.-�I,������ ��      �      x�3�LI�,�T((�O)M.)������ Y��      t   I  x�UYM��=o�3��y�]K�Iެ6��$[�Q�3t����/�t�A�7#7���WU�80 C����]�Z.o��9��~;��sV��/��V.o��0l��$�3����S8\~�+\���O}�4� 8��aI��p���N뷸�0�DR��go�0�2�OsAc�2{�a�|n��?����D5�?��w�ME�݌�y'�YT�Χi�>��.��9���������!~�����0l����\}~�㰻�>��s.�����Ua3�y�0˾6�\I���d�
hE���+\g?��4��ן����^�B��7�]���d������mZ����7����އq���ECX�M�s�O�h������f���x���r�ٗ����8��!��W٫9Iq�*S���=�����2���b_��\ o�7a�L�i�g�.��O�Lᖯ�<��Oc<	h_�E����6(�wR�)��3|��_^��}?�_�)��)�� �rF��C\�O�\Q^��5�7�/���â��8�簾Ipnqj��H�ǰ�EIm�Ȝ�:=�|ᴎ!�r	ُ)��O"*MT��6R��n��-�U�u�|I�^nr�M�����-����ev��Cx�)�|^e����9�_ժ�w���K��!�����YO���zVK[�=��^����cJ�J4��O�׹�H���>��)��r6���#xi��^���$�浿���¶GY���xNaym���O�/��1A��w��Ǹ5%Z���9y�iTIg������t
��e?)n�;��=�FO*�MN�C�6���	���e�9�a#_߆4��14���c�$�/���$~��Na����߷���0��Xd/ h�6Mv�m�|��6g�6�iq������'��3�t�x��I{0$ft�#���.wfw�n�c���Yݲ��C���~n&�^�3��ݔrgf�e�����3�� Km3��Z�~�e�AdƷ����{Sɛ������cY~����>�HES՛�]��0���f83n��6�I�-��9S	]��ϰ��S:�4h���Qu8[Nb}�.�V�o��I򢼞�d��@��K�7��c����,�Y�/�N}�go��ID Tv8�t� t:��Y������ې.ߴp&-�:瘁�W��X��=�������$\
/77�������z;<�د�t�ک��[jDܮG��]/ݬ��Wf7KҒJm~Q��`�0/4�C�$xi8�����^�d'�\I�R{q�h:��n��B���R׋�5�4���dr�jwdi"�)ݢ��u�?��nQu/�i��e�dHU�
�7g��+�1�p'�T��U�c�~���]��e��/P���k�L�Aή�l������^�d����c�܅t�zR�8��>����z�,YI�Z�NL{��Z�N�K��ޏ�N���$e��<�Ik�,�q&%�[����6��Vj��$�+�PP3��]?.g,�t����l�Y�� � ����N2K�n����G�0���b�B�I`S����TF@���x�˰�5t~Q�������+T�"{%�(s�+d�)����ӽP�9�g�� 5��[�L��+u\Ul���~FW5�oҏ��
���ߩ̪%��>�Ӑ���ݪC��D���˕�����D�`�̕�AP�]�e	T
��kQ������y�OP��Sd����Y~�g�N�I[p�<h�����s%�0��}8b�̕��U!�GƘ+m�a��17�_=]�fA�5�e��u�-�z�[Qs8�5��:[&uI ���k\I2�$s�h���{Q"�^')&v�N�	{{���͸+��Ȣ�f�	�h����^P�l�8���PfC è�V��Y�J;1�^��9�7��T��퍑>ӎ
�����g=��N��>��*��R�X<��-@�N�A�MHp�/��m&�$��� =�K��/*'��t.Î�m �9"��o'��«�p�j셸�	󂕙�/�6P�;�S��"�sx��ӟx%x��.&������cɋ�L�J'$�u��#fj�L�N�{#L:���غ��HL�����X���Oc�)*T���b�M��j!E�0 �v4{̦�Ū�caf8����<���T�k��c����
,U2X&6���K:�d�ئ^�����I@��.d�I�g��,Q尿�v�j�tL����U��`q��K�FQ�
=3 Q�R[Umw	ɂ�R�Um�5D��^L�uO��?L��t�գӹ@�,�U�a�Μr�D�H��_���3gQQ�HE��7	(:4�@�:h?�����d�y՚�&ؒ�s	�4�ˇ�3��E�B%��x��t�8d�ARE�J��"t7��9�H��y��؁11X
���wa
�R�e��Us���e2l�`�+7�Q`+v��`��
u��`�}fO�e������yZ˖[����� *b�l6ۧ�ja!�tn�ڸN��vR�
����"bT�MN63U��:eh�Q&|-�-�Z/N�+�*;
8E�Xʠ����g>DU��Cg�o�:��RÇ�]�	X)C�;��J�;�c,X�vJ�(�S���Q��$�%�)����{U�q}3a������5�����pЁ\�E��ƽ���k��{,׏%���|�gJ�����v��k0Ə|���FҹY1����3<*O1"r**���#H3A�`��8Aad�4�لkyz�U
�:t����jiܨO�DE�����׭�N���1�$8%����u#9N�3����ƙ�NS�Bg�qoAfͪ�3�@K`t�%�j���Z�V/��9���EN��FK؎`�ɞOL���K�4���G���w5��#�{87�h#3z=D�z��E��:���4+Y'��!C�I�P�^h����(�� ~�����)���L�Zi&��<�s/*���5��j�ɵ��S�� r�s�9��T?5F��m<Z"���-�Q�NA)?ԯ�r@�WA�-�|K5�B�Z�P�����Vғ���$P�P���F݇��A+�k0���I�TPh�=)�l%G�#�Ӂ��J&�E��D��^LQ���֙'@Jn��Q�����=��9�"���p�O��%|��A�u���+�P�� (�}��S���;�G�#�7�jy�V�)W�=o�p�֛r5߼>AT1���36:�ߛV5��?���;qӪ��/-j�_�R��z����h��Ѷ�0��_��"�,}���9�DEx���ݠ�!Д����0��)u�����H�JДG}��;����4��6ADo�;���.��|Z*��n�X%8ʏa���G=�V�Ȱ�nb�Q�OZ ZI?l���	�I:-��0���*{7��~����e���� �d��r�$�)�|�#�Z���.��9���uB2(��kJ'4X�H�g�#A�P���8��2��O�~w�Zܱ���r�Zܱ�[i��<�,��%y	�������Iluj+HJB g��X��`�w������̷k
�v���F|�4���L��92�`�G7`vN��;ހ�O�F����IMvd��z��S��*۷c�1�ͧ�4����j��/߉��      p   �  x�m��r�X����������0g�'�A��.{f.�a5��-Py��~�s�ߠ^l�������**sr�9EC�ó:�J�HO��Є��%����0�G�u���X�'��;�ۖ�-��H�x$�C�@��w�w�hj�P��`�3H�c��`\T��p��d�n9}��w���Ӷ6P�s�eIȒPVn�N��g	BiZ��u8GmA��]������i7�����T�aRi�W�[�c��LZV�:����S'	��X��^չ��e��A*�i*-��z�pK�� ����[z�O�����^#�#i���b����Y,Ҷ�D�}Pe�Q��ԝ�u����Qc���}M�a�����럤gej4!��D�,���#� �G��AV�l�h�`_]x� �t�r�]�Ϲ�����\�����.�V��*��B:��T?/�ϵ4?]jc4͞�lM�*�4�G�;���T���]0�������fS�:QXq9�)�x �t�^�(��>�Kmv>p�� ��} ���=?�b�&�4<jP�����Nۜh��h��t	�(��̳;�I�mB�eu�ymd�sV�-b����V���SƵ!�z7V|�:���U��s!�	��vRv�B^����梸+C�\�ֺ�j�e�����كw|._�S@�0n�G�Eq�a�E2�>D�X���U�~=���7�?��s]�2$2	�Z�K"K�Z=�_?�p�D�.�ZM��V��d�T�&bf��<g!��B���[mCƺ�2�9�nu ���bb�[x�	�ۈ��M��sM �v?}����Y�Dmš8>���@�b-�V����ztw��+�Â<h���>�������ך�p�>�۳ǒ���3�r�Uo����Y��.�ۨ� �jK�P�K����~�Y����3]�}��ڨ�$��
�Z]��aU�/��
>�1�ҭG��W�v���	;\I@]�z�7�zc2�ͯm�����ۿ�>�g`-M'5ye�OGU��h.�x�F+r�.���確�2�3i8K���8�'��Qi���i~����Fw b���%�ME^-e<+�ڶ�w�׋�C�(=O�Șl���t-�b-����+��+EB�����OZIx/a|���ޘ�Q�/�q�����|)L��e�f0��p�1y��K�$�����ҭ���ϋW�'S�X��&��b|�ϮR�G����_2��d����&[�B�Z�;�,)�MW�[2��er�eEﶡ�l�Mf��Ѳ�%yNJu�h� ��U�n�>m�FG&C�	W���;)ד>�d"ɣY���H�.�HŹ�=�P��⻌	I�'	0�lE��!������u!�kH��r� ��W�zM%	�*�1�m\���ý}��bw����3��FG��c���%����P�������.`-`Yq&,��������/!άE��y	�Z{O����(DP��D?ԋ>R�$� ,��/�P�Y_%A�ܫ��s�<%f�������r�]%�+��l�P]�r��mVj2�TQ]e���4]D��2ժ��`[��ȴ_�Z�bӈ�;���d���R��=�����៶�4vƀ���C�v�9�th$}�vS�iu�N_e�<�wl7�m�5�,�ȕ�:Y϶
�zf�W��Xz�z6���2�eF��~4�;��T�\,�Y��ſ���=d/Q��h��^��p�i�j��,1&u��Mn��Af�d��{vQ���2�����׷t�&��FrK��t�n�[���	@�oțr�K�N�c`��3Zr[�[�����;�2W��e6���I��;��#s}��͌A�&���y^�ϤL����P�o�ɼ ���&'�x=违���y"�r���������r)s#��[L�4���i�? &Wm�t��k������	f�1�P������y�" wlt�Ѽ/ԅ�[�E\��#�n��H{z�ϖ�Tu��>�}!�p�+Pu�Y��vd�X����U]�A�G����zЩ�}:_43�b��}��}e��EVLB�L�^T����U���
|��$�DjC��I�;q���S��4
%����L�So�D`É���q5�=�1WN�۰��g}�h�qkiu���ఎ�k�Nʠcி��<����]%���)��雅���^i��9�S�D���bUF?-�N�V�3����,bRm��l�\��E�#���m;j���7(�Dc��!�E��t���Do5>��nd;[��D2a�o�\�����ö���B�l�pA��,"e�{� ?�ـ><2}����CQ�	}��\a�NzW�oo"y[f�2��{u�(K�d?��8:�. ��I[��[}?�SO0�����t4�3��mM�IŦ��`�"8!�3T/��y܋ЖX����	��R��U�u�x�}��U���6T���`<���šg�OZ�?���i�c�q�v;g`ϝL���.?��㝜�r͍!�W� �QX��8�ݜ;.�_���("��Y�d�H���f�p�d����&��?�m6����w ټ�#���г��'���+�z�mM����2�`h?�I�,=������3��	IR����&H{�� 7�	�N����JՌ	|�������wv*m���]�x<J�{&�u��d������$L���+�}�&��k��mI��F�%O�%a��x-P�鑍���|V��I����j�#&�dta^�C_w)̀X�3��$Ok}�L�z v�$���\�q���;j4#�ݸRF[�,�6{1=,�V��9��zY����O5yq��&��$�N˥���q�`�Ǒ��_�S��)�1�x_k0u�̇��u��?}��`"���7qk��@�s-8o(]F�cf����VՆ�i�$�t�Ì��m�痋�N���Y�1@ʶKTtCnݢژ�7棧�﹮
�x�@��	�	�k�b�	zw�8�I{ڵ�&��@Iʟ��X�խ]�L^�k�,�F�f�l룙���>� �^��H��*��B`�dƎ�p���n%+�N��E�����5��9��E�m^Je�h �q�0�?McI��:>���S]�-�T�%c��/	�T_7{} �%J�8�N߿�%��BS�����@I4�9��+���!H�{�?��%u�����W��� ٿ��Ae
��y�\���c��մ,��9���a�o�}j>&_?�I:@��8��K�Si�Rr^��}��;��Oi���t�~c׳����ꎊ�o9���6D��i4�n{�oO+ӆ�pӑt]Yj0���s�8(̕�w�e^[���=��[��2�Y>�9-e��6�}���~>b�����t]�k0%�����L~�����n��e��B`�%}K�gjH��˻+�2��u�$A�WS��C~�]p"��7=y��7�4�7vr�������NA���-��(��CǋӇyz7����ꔛ��T*��ܳ���^�V�l
�GhϪK�����tx��.��~C�bWH�;69���E�z���B�n l`ŌLIv0N��r�)�*g��xV��p�+��{VF
6�tK�P���Q]U�0�eK��/�Y��Q�)*B�wсo�K�C&���]ϐ�p}b���U�
/[s�����a���c�몰�ֶz1��hY�bl��:�m�[��yi�_wq0��J�������xN2�G��WE�1]{�*���O�ߘ����>�a��ȶe�������
V�������w���d��!h���˪�l��z�J�;1t�������@z>�ku�ԥ��
d��n�I��#��?��~��S�zb�s������Fo-��ul��ũ���o��N	�������/�/,��&���y,w�5�.ՉR7���Dz��iLP���==���亩t����<j<W���Ȯ�w��~@���1_iP�S~|V�oZ� �S������|�qV�O0�7�N���?���i�Ȕ      v   4   x�3�Vp��I,2T8��͸�8�32sR�R��9�}8ML�b���� &)      w   #   x�3�4�4202�50�50�04�30����� =�H      m      x������ � �      _   r   x�]��
�@E׹#���/n�A;	I���L��}��{J��d��p�Tc&e[�{���L&Uq�Ju6��!%V,�����i�\:�4�^�e���<�PW��5y7�w >��:�      ]   �  x����n� E������3��|�J%4E������:�B�H�����e<����y�sC�F��$���{%�������v��?��1K|��EAs��X")
B��]%�{JF�Y;�O���^����$��~e�+#�9D�G�֛�>�{wH	�X
������o7��;z4�����2Jl��6}�AO6n����׃�ҽO�{�l	DF�EW�2�����(@�S�6�Q�-%/Ŏ�b-��`J�5���o��c�ޥʖ�v�EB# �K��[\��-��Z¨B(�k��ʧ���D�r�6�`�ٜ��pRQ�
�n8YM�A̔�\�����2zň����o�u
~���t�2,�nÀ^���S�_盎���������7�,�'?���l�C�
�v<5_Q]�7��˄�B؞Þ�xde���:��L�E�uU�_Y\&!�DP]^K�U)��ii���n���u�p      n      x������ � �      �   *   x�3�L.JM�,QHN,J��2�LIM��9��38�b���� 	J)      }   �   x�3��M,�L�I, ���9�Ŝ�����@ĩmjf�`
`�3�����!=713G/9?�Ӑ�Ąӈˈ�+���JN�Լ�����*N�Ĥ�ԢD�����@1��gVLq2D-��Fcc���� iI.�      �   8   x�3��IM�HUp�+I-J��4460�4�4�2B�0���4JcHp%b���� '��      {   '   x�3��M�I��2�LK���9K�RR�2�RS8�b���� ��	N      r   4  x�=�;R�0E��Uh��8��q�8͵#�f��r*�@I��"k�NX	y�RG�sߑ� �m<Q.��"�Qi�{F�!��Y�s*Z�(�r��>4��"�=��<-����T�F�����RY�a�Vy�w�����Jw����԰�F�(_�皶�5���	l��(=�6�9�&a�S�Q�s�#1I�q�_V��_^���n�)~���W��;���r�:�q�ax���n!�m��I���N�zgt��_�=lМ��dK)���&_rA���w��ڢu�[N����ذ9yy�Ȳ���|�      �      x������ � �      �   a   x�3��ITp��/H-J,�,KTpL/:�69?'Q�R�'59(���� T��yxs��OfnfIbJ�������(�'PSi���K�������� �S     