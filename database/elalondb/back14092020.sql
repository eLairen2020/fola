PGDMP     *    )                x            elalondb    11.7 (Raspbian 11.7-0+deb10u1)    11.7 (Raspbian 11.7-0+deb10u1) �    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            b           1262    17399    elalondb    DATABASE     z   CREATE DATABASE elalondb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE elalondb;
             postgres    false            �            1259    17431 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    17429    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            c           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    17441    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    17439    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            d           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    17423    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    17421    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            e           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    17449 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    17459    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    17457    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            f           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    17447    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            g           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    17467    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    17465 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            h           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    17560    company_category    TABLE     �   CREATE TABLE public.company_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    sub_title character varying(200) NOT NULL
);
 $   DROP TABLE public.company_category;
       public         postgres    false            �            1259    17558    company_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.company_category_id_seq;
       public       postgres    false    215            i           0    0    company_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.company_category_id_seq OWNED BY public.company_category.id;
            public       postgres    false    214            �            1259    17587    company_company    TABLE     /  CREATE TABLE public.company_company (
    id integer NOT NULL,
    name_of_company character varying(200) NOT NULL,
    owner_of_the_company character varying(100) NOT NULL,
    about_owner character varying(500),
    address character varying(200) NOT NULL,
    company_email character varying(40),
    company_phone character varying(13) NOT NULL,
    "User_id" integer NOT NULL,
    category_id integer NOT NULL,
    slug character varying(200),
    opentiming character varying(100),
    address1 character varying(200),
    des_of_company character varying(300) NOT NULL,
    owner_image character varying(100) NOT NULL,
    add_menulist boolean NOT NULL,
    add_offer_section boolean NOT NULL,
    add_photoslider boolean NOT NULL,
    add_pricingtable boolean NOT NULL,
    add_services boolean NOT NULL
);
 #   DROP TABLE public.company_company;
       public         postgres    false            �            1259    17585    company_company_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_company_id_seq;
       public       postgres    false    221            j           0    0    company_company_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.company_company_id_seq OWNED BY public.company_company.id;
            public       postgres    false    220            �            1259    17634    company_design    TABLE     �  CREATE TABLE public.company_design (
    id integer NOT NULL,
    bg_color character varying(100) NOT NULL,
    welcome_color character varying(100) NOT NULL,
    header_color character varying(100) NOT NULL,
    header_font character varying(100) NOT NULL,
    sub_header_font character varying(100) NOT NULL,
    sub_header_color character varying(100) NOT NULL,
    button_color character varying(100) NOT NULL,
    p_color character varying(100) NOT NULL,
    p_font character varying(100) NOT NULL,
    hover_color character varying(100) NOT NULL,
    company_id integer NOT NULL,
    hero_background_image character varying(100),
    hero_image character varying(100),
    logo character varying(100) NOT NULL
);
 "   DROP TABLE public.company_design;
       public         postgres    false            �            1259    17632    company_design_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_design_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.company_design_id_seq;
       public       postgres    false    223            k           0    0    company_design_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.company_design_id_seq OWNED BY public.company_design.id;
            public       postgres    false    222            �            1259    17568    company_itemcategory    TABLE     �   CREATE TABLE public.company_itemcategory (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    sub_title character varying(200) NOT NULL,
    company_id integer NOT NULL
);
 (   DROP TABLE public.company_itemcategory;
       public         postgres    false            �            1259    17566    company_itemcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_itemcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.company_itemcategory_id_seq;
       public       postgres    false    217            l           0    0    company_itemcategory_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.company_itemcategory_id_seq OWNED BY public.company_itemcategory.id;
            public       postgres    false    216            �            1259    17576    company_items    TABLE     g  CREATE TABLE public.company_items (
    id integer NOT NULL,
    item_name character varying(100) NOT NULL,
    description character varying(100),
    price character varying(100) NOT NULL,
    tag character varying(100),
    stock boolean NOT NULL,
    image character varying(100),
    item_category_id integer NOT NULL,
    company_id integer NOT NULL
);
 !   DROP TABLE public.company_items;
       public         postgres    false            �            1259    17574    company_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.company_items_id_seq;
       public       postgres    false    219            m           0    0    company_items_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.company_items_id_seq OWNED BY public.company_items.id;
            public       postgres    false    218            �            1259    17678    company_offersection    TABLE     `  CREATE TABLE public.company_offersection (
    id integer NOT NULL,
    image character varying(100),
    offer boolean NOT NULL,
    item_name character varying(100) NOT NULL,
    description character varying(100) NOT NULL,
    price character varying(100) NOT NULL,
    offerprice character varying(100) NOT NULL,
    company_id integer NOT NULL
);
 (   DROP TABLE public.company_offersection;
       public         postgres    false            �            1259    17676    company_offersection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_offersection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.company_offersection_id_seq;
       public       postgres    false    229            n           0    0    company_offersection_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.company_offersection_id_seq OWNED BY public.company_offersection.id;
            public       postgres    false    228            �            1259    17670    company_photoslider    TABLE     �   CREATE TABLE public.company_photoslider (
    id integer NOT NULL,
    image character varying(100),
    company_id integer NOT NULL
);
 '   DROP TABLE public.company_photoslider;
       public         postgres    false            �            1259    17668    company_photoslider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_photoslider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.company_photoslider_id_seq;
       public       postgres    false    227            o           0    0    company_photoslider_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.company_photoslider_id_seq OWNED BY public.company_photoslider.id;
            public       postgres    false    226            �            1259    17662    company_services    TABLE     �   CREATE TABLE public.company_services (
    id integer NOT NULL,
    icon character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    subtitle character varying(100) NOT NULL,
    company_id integer NOT NULL
);
 $   DROP TABLE public.company_services;
       public         postgres    false            �            1259    17660    company_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.company_services_id_seq;
       public       postgres    false    225            p           0    0    company_services_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.company_services_id_seq OWNED BY public.company_services.id;
            public       postgres    false    224            �            1259    17527    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false            �            1259    17525    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            q           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    17413    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    17411    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            r           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    17402    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    17400    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            s           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    17705    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    17717    user_account_user_profile    TABLE     !  CREATE TABLE public.user_account_user_profile (
    id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    phone character varying(13),
    address character varying(200),
    photo character varying(100),
    username_id integer NOT NULL
);
 -   DROP TABLE public.user_account_user_profile;
       public         postgres    false            �            1259    17715     user_account_user_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_account_user_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.user_account_user_profile_id_seq;
       public       postgres    false    232            t           0    0     user_account_user_profile_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.user_account_user_profile_id_seq OWNED BY public.user_account_user_profile.id;
            public       postgres    false    231            M           2604    17434    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            N           2604    17444    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            L           2604    17426    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            O           2604    17452    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            P           2604    17462    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            Q           2604    17470    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            T           2604    17563    company_category id    DEFAULT     z   ALTER TABLE ONLY public.company_category ALTER COLUMN id SET DEFAULT nextval('public.company_category_id_seq'::regclass);
 B   ALTER TABLE public.company_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            W           2604    17590    company_company id    DEFAULT     x   ALTER TABLE ONLY public.company_company ALTER COLUMN id SET DEFAULT nextval('public.company_company_id_seq'::regclass);
 A   ALTER TABLE public.company_company ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            X           2604    17637    company_design id    DEFAULT     v   ALTER TABLE ONLY public.company_design ALTER COLUMN id SET DEFAULT nextval('public.company_design_id_seq'::regclass);
 @   ALTER TABLE public.company_design ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            U           2604    17571    company_itemcategory id    DEFAULT     �   ALTER TABLE ONLY public.company_itemcategory ALTER COLUMN id SET DEFAULT nextval('public.company_itemcategory_id_seq'::regclass);
 F   ALTER TABLE public.company_itemcategory ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            V           2604    17579    company_items id    DEFAULT     t   ALTER TABLE ONLY public.company_items ALTER COLUMN id SET DEFAULT nextval('public.company_items_id_seq'::regclass);
 ?   ALTER TABLE public.company_items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            [           2604    17681    company_offersection id    DEFAULT     �   ALTER TABLE ONLY public.company_offersection ALTER COLUMN id SET DEFAULT nextval('public.company_offersection_id_seq'::regclass);
 F   ALTER TABLE public.company_offersection ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            Z           2604    17673    company_photoslider id    DEFAULT     �   ALTER TABLE ONLY public.company_photoslider ALTER COLUMN id SET DEFAULT nextval('public.company_photoslider_id_seq'::regclass);
 E   ALTER TABLE public.company_photoslider ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            Y           2604    17665    company_services id    DEFAULT     z   ALTER TABLE ONLY public.company_services ALTER COLUMN id SET DEFAULT nextval('public.company_services_id_seq'::regclass);
 B   ALTER TABLE public.company_services ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            R           2604    17530    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            K           2604    17416    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            J           2604    17405    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            \           2604    17720    user_account_user_profile id    DEFAULT     �   ALTER TABLE ONLY public.user_account_user_profile ALTER COLUMN id SET DEFAULT nextval('public.user_account_user_profile_id_seq'::regclass);
 K   ALTER TABLE public.user_account_user_profile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231    232            ?          0    17431 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       A          0    17441    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��       =          0    17423    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       C          0    17449 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   R�       E          0    17459    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   e�       G          0    17467    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       K          0    17560    company_category 
   TABLE DATA               ?   COPY public.company_category (id, name, sub_title) FROM stdin;
    public       postgres    false    215   ��       Q          0    17587    company_company 
   TABLE DATA               +  COPY public.company_company (id, name_of_company, owner_of_the_company, about_owner, address, company_email, company_phone, "User_id", category_id, slug, opentiming, address1, des_of_company, owner_image, add_menulist, add_offer_section, add_photoslider, add_pricingtable, add_services) FROM stdin;
    public       postgres    false    221   ��       S          0    17634    company_design 
   TABLE DATA               �   COPY public.company_design (id, bg_color, welcome_color, header_color, header_font, sub_header_font, sub_header_color, button_color, p_color, p_font, hover_color, company_id, hero_background_image, hero_image, logo) FROM stdin;
    public       postgres    false    223   �       M          0    17568    company_itemcategory 
   TABLE DATA               O   COPY public.company_itemcategory (id, name, sub_title, company_id) FROM stdin;
    public       postgres    false    217   ��       O          0    17576    company_items 
   TABLE DATA               {   COPY public.company_items (id, item_name, description, price, tag, stock, image, item_category_id, company_id) FROM stdin;
    public       postgres    false    219   ��       Y          0    17678    company_offersection 
   TABLE DATA               w   COPY public.company_offersection (id, image, offer, item_name, description, price, offerprice, company_id) FROM stdin;
    public       postgres    false    229   N�       W          0    17670    company_photoslider 
   TABLE DATA               D   COPY public.company_photoslider (id, image, company_id) FROM stdin;
    public       postgres    false    227   k�       U          0    17662    company_services 
   TABLE DATA               Q   COPY public.company_services (id, icon, title, subtitle, company_id) FROM stdin;
    public       postgres    false    225   ��       I          0    17527    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ��       ;          0    17413    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   6      9          0    17402    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   �      Z          0    17705    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    230   �      \          0    17717    user_account_user_profile 
   TABLE DATA               r   COPY public.user_account_user_profile (id, first_name, last_name, phone, address, photo, username_id) FROM stdin;
    public       postgres    false    232   �      u           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            v           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            w           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
            public       postgres    false    200            x           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            y           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206            z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            {           0    0    company_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_category_id_seq', 4, true);
            public       postgres    false    214            |           0    0    company_company_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.company_company_id_seq', 2, true);
            public       postgres    false    220            }           0    0    company_design_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.company_design_id_seq', 2, true);
            public       postgres    false    222            ~           0    0    company_itemcategory_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.company_itemcategory_id_seq', 2, true);
            public       postgres    false    216                       0    0    company_items_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.company_items_id_seq', 3, true);
            public       postgres    false    218            �           0    0    company_offersection_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.company_offersection_id_seq', 1, false);
            public       postgres    false    228            �           0    0    company_photoslider_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.company_photoslider_id_seq', 1, false);
            public       postgres    false    226            �           0    0    company_services_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.company_services_id_seq', 1, false);
            public       postgres    false    224            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);
            public       postgres    false    196            �           0    0     user_account_user_profile_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.user_account_user_profile_id_seq', 1, true);
            public       postgres    false    231            j           2606    17556    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            o           2606    17483 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            r           2606    17446 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            l           2606    17436    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            e           2606    17474 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            g           2606    17428 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            z           2606    17464 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            }           2606    17498 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            t           2606    17454    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �           2606    17472 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            �           2606    17512 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            w           2606    17550     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �           2606    17565 &   company_category company_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_category
    ADD CONSTRAINT company_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_category DROP CONSTRAINT company_category_pkey;
       public         postgres    false    215            �           2606    17595 $   company_company company_company_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.company_company
    ADD CONSTRAINT company_company_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.company_company DROP CONSTRAINT company_company_pkey;
       public         postgres    false    221            �           2606    17644 ,   company_design company_design_company_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.company_design
    ADD CONSTRAINT company_design_company_id_key UNIQUE (company_id);
 V   ALTER TABLE ONLY public.company_design DROP CONSTRAINT company_design_company_id_key;
       public         postgres    false    223            �           2606    17642 "   company_design company_design_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.company_design
    ADD CONSTRAINT company_design_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.company_design DROP CONSTRAINT company_design_pkey;
       public         postgres    false    223            �           2606    17573 .   company_itemcategory company_itemcategory_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.company_itemcategory
    ADD CONSTRAINT company_itemcategory_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.company_itemcategory DROP CONSTRAINT company_itemcategory_pkey;
       public         postgres    false    217            �           2606    17584     company_items company_items_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.company_items
    ADD CONSTRAINT company_items_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.company_items DROP CONSTRAINT company_items_pkey;
       public         postgres    false    219            �           2606    17686 .   company_offersection company_offersection_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.company_offersection
    ADD CONSTRAINT company_offersection_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.company_offersection DROP CONSTRAINT company_offersection_pkey;
       public         postgres    false    229            �           2606    17675 ,   company_photoslider company_photoslider_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.company_photoslider
    ADD CONSTRAINT company_photoslider_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.company_photoslider DROP CONSTRAINT company_photoslider_pkey;
       public         postgres    false    227            �           2606    17667 &   company_services company_services_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_services
    ADD CONSTRAINT company_services_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_services DROP CONSTRAINT company_services_pkey;
       public         postgres    false    225            �           2606    17536 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            `           2606    17420 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            b           2606    17418 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            ^           2606    17410 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            �           2606    17712 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    230            �           2606    17725 8   user_account_user_profile user_account_user_profile_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.user_account_user_profile
    ADD CONSTRAINT user_account_user_profile_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.user_account_user_profile DROP CONSTRAINT user_account_user_profile_pkey;
       public         postgres    false    232            �           2606    17727 C   user_account_user_profile user_account_user_profile_username_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_account_user_profile
    ADD CONSTRAINT user_account_user_profile_username_id_key UNIQUE (username_id);
 m   ALTER TABLE ONLY public.user_account_user_profile DROP CONSTRAINT user_account_user_profile_username_id_key;
       public         postgres    false    232            h           1259    17557    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            m           1259    17494 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            p           1259    17495 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            c           1259    17480 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            x           1259    17510 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            {           1259    17509 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            ~           1259    17524 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            �           1259    17523 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            u           1259    17551     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �           1259    17607     company_company_User_id_2c8567af    INDEX     c   CREATE INDEX "company_company_User_id_2c8567af" ON public.company_company USING btree ("User_id");
 6   DROP INDEX public."company_company_User_id_2c8567af";
       public         postgres    false    221            �           1259    17614 $   company_company_category_id_1eed524d    INDEX     g   CREATE INDEX company_company_category_id_1eed524d ON public.company_company USING btree (category_id);
 8   DROP INDEX public.company_company_category_id_1eed524d;
       public         postgres    false    221            �           1259    17629    company_company_slug_cefb92db    INDEX     Y   CREATE INDEX company_company_slug_cefb92db ON public.company_company USING btree (slug);
 1   DROP INDEX public.company_company_slug_cefb92db;
       public         postgres    false    221            �           1259    17630 "   company_company_slug_cefb92db_like    INDEX     r   CREATE INDEX company_company_slug_cefb92db_like ON public.company_company USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.company_company_slug_cefb92db_like;
       public         postgres    false    221            �           1259    17628 (   company_itemcategory_company_id_f53e816e    INDEX     o   CREATE INDEX company_itemcategory_company_id_f53e816e ON public.company_itemcategory USING btree (company_id);
 <   DROP INDEX public.company_itemcategory_company_id_f53e816e;
       public         postgres    false    217            �           1259    17621 !   company_items_company_id_93e1e8a7    INDEX     a   CREATE INDEX company_items_company_id_93e1e8a7 ON public.company_items USING btree (company_id);
 5   DROP INDEX public.company_items_company_id_93e1e8a7;
       public         postgres    false    219            �           1259    17601 '   company_items_item_category_id_746da0a6    INDEX     m   CREATE INDEX company_items_item_category_id_746da0a6 ON public.company_items USING btree (item_category_id);
 ;   DROP INDEX public.company_items_item_category_id_746da0a6;
       public         postgres    false    219            �           1259    17704 (   company_offersection_company_id_bee0f652    INDEX     o   CREATE INDEX company_offersection_company_id_bee0f652 ON public.company_offersection USING btree (company_id);
 <   DROP INDEX public.company_offersection_company_id_bee0f652;
       public         postgres    false    229            �           1259    17698 '   company_photoslider_company_id_f42fcec7    INDEX     m   CREATE INDEX company_photoslider_company_id_f42fcec7 ON public.company_photoslider USING btree (company_id);
 ;   DROP INDEX public.company_photoslider_company_id_f42fcec7;
       public         postgres    false    227            �           1259    17692 $   company_services_company_id_6185ffad    INDEX     g   CREATE INDEX company_services_company_id_6185ffad ON public.company_services USING btree (company_id);
 8   DROP INDEX public.company_services_company_id_6185ffad;
       public         postgres    false    225            �           1259    17547 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            �           1259    17548 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            �           1259    17714 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    230            �           1259    17713 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    230            �           2606    17489 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2919            �           2606    17484 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    203    2924            �           2606    17475 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2914    201    199            �           2606    17504 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2924    203    209            �           2606    17499 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    207    2932            �           2606    17518 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    211    2919            �           2606    17513 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    207    211    2932            �           2606    17602 @   company_company company_company_User_id_2c8567af_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_company
    ADD CONSTRAINT "company_company_User_id_2c8567af_fk_auth_user_id" FOREIGN KEY ("User_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.company_company DROP CONSTRAINT "company_company_User_id_2c8567af_fk_auth_user_id";
       public       postgres    false    207    221    2932            �           2606    17609 K   company_company company_company_category_id_1eed524d_fk_company_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_company
    ADD CONSTRAINT company_company_category_id_1eed524d_fk_company_category_id FOREIGN KEY (category_id) REFERENCES public.company_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.company_company DROP CONSTRAINT company_company_category_id_1eed524d_fk_company_category_id;
       public       postgres    false    221    215    2953            �           2606    17645 G   company_design company_design_company_id_0a4e533b_fk_company_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_design
    ADD CONSTRAINT company_design_company_id_0a4e533b_fk_company_company_id FOREIGN KEY (company_id) REFERENCES public.company_company(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.company_design DROP CONSTRAINT company_design_company_id_0a4e533b_fk_company_company_id;
       public       postgres    false    223    221    2964            �           2606    17623 S   company_itemcategory company_itemcategory_company_id_f53e816e_fk_company_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_itemcategory
    ADD CONSTRAINT company_itemcategory_company_id_f53e816e_fk_company_company_id FOREIGN KEY (company_id) REFERENCES public.company_company(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.company_itemcategory DROP CONSTRAINT company_itemcategory_company_id_f53e816e_fk_company_company_id;
       public       postgres    false    2964    221    217            �           2606    17616 E   company_items company_items_company_id_93e1e8a7_fk_company_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_items
    ADD CONSTRAINT company_items_company_id_93e1e8a7_fk_company_company_id FOREIGN KEY (company_id) REFERENCES public.company_company(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.company_items DROP CONSTRAINT company_items_company_id_93e1e8a7_fk_company_company_id;
       public       postgres    false    2964    219    221            �           2606    17596 B   company_items company_items_item_category_id_746da0a6_fk_company_i    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_items
    ADD CONSTRAINT company_items_item_category_id_746da0a6_fk_company_i FOREIGN KEY (item_category_id) REFERENCES public.company_itemcategory(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.company_items DROP CONSTRAINT company_items_item_category_id_746da0a6_fk_company_i;
       public       postgres    false    217    2956    219            �           2606    17699 S   company_offersection company_offersection_company_id_bee0f652_fk_company_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_offersection
    ADD CONSTRAINT company_offersection_company_id_bee0f652_fk_company_company_id FOREIGN KEY (company_id) REFERENCES public.company_company(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.company_offersection DROP CONSTRAINT company_offersection_company_id_bee0f652_fk_company_company_id;
       public       postgres    false    2964    221    229            �           2606    17693 Q   company_photoslider company_photoslider_company_id_f42fcec7_fk_company_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_photoslider
    ADD CONSTRAINT company_photoslider_company_id_f42fcec7_fk_company_company_id FOREIGN KEY (company_id) REFERENCES public.company_company(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.company_photoslider DROP CONSTRAINT company_photoslider_company_id_f42fcec7_fk_company_company_id;
       public       postgres    false    221    227    2964            �           2606    17687 K   company_services company_services_company_id_6185ffad_fk_company_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_services
    ADD CONSTRAINT company_services_company_id_6185ffad_fk_company_company_id FOREIGN KEY (company_id) REFERENCES public.company_company(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.company_services DROP CONSTRAINT company_services_company_id_6185ffad_fk_company_company_id;
       public       postgres    false    225    221    2964            �           2606    17537 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    213    2914            �           2606    17542 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    207    2932    213            �           2606    17728 X   user_account_user_profile user_account_user_profile_username_id_95e12b58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account_user_profile
    ADD CONSTRAINT user_account_user_profile_username_id_95e12b58_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_account_user_profile DROP CONSTRAINT user_account_user_profile_username_id_95e12b58_fk_auth_user_id;
       public       postgres    false    207    232    2932            ?      x������ � �      A      x������ � �      =   R  x�]�[��0E��*��Q�;߳��Z)����ǔ���_\>��R��-��m���k�on=���a�ְ4% �װ�NQ��`��^��`,1X���
�
5d���x�lkQ�L+��v����bQP�=+*� ��ؾ��A�m�]ʥ}�B�J���"%�$ ,p�"�o�맱��w��4�v���|7n��q����m=C�n����tU���H����+��O��53tk�ڻ���qeJ�ޙAO��kg�o�!�"�Q�܏���\�Q'Sɔm�QA���.�8 :�z�q�S���?����>v��RTj;�*	L�&P�A`��q*�ӽ|��UcV�$��S�P��O��>!���`��N��"L���M�� ��<rC`��7�];A2aߊ|��a3�b�ai�R� �4r��3q�e�j�c�0��pZ&�y-l�(ĕ�UDA�D�\0�B�a`t����YF��
�I\��
c4Ri�La��J"K9V����(N�����-S�6~#D�4*����W	���5��x�����׿=���n<��i�E�L����(�O�d�'P]�hENr�����,�,^      C     x�m�Mo�@���+<p3���²�4Q)���T��j�4��R����EOm�\�0��$�|����3��T�!jZE��*��/���fs��"8��v+٩�a��� ���۰NX��  @4bi����uf3s�"�j�@	�ʰB�R2l;6M�0+p\���]�,�NAw�^������Ѱm��������S?��*g���pp�׭�.�Z�l
6a������̦2���B��&���9?߰�(�A.Y�      E      x������ � �      G      x������ � �      K   K   x�3�t��/�H-�tt�/-Q��9��sSK2��2I`�˄�+�<5''��*�sr����L��b���� P"c      Q     x�}��N�0��ݧ�t?���bH�M������/u�8!m�����M!�''��w��d񁂭1#�xi�Fq��ĵ�)`�(5�M��V.�<5�pj<U��n��#˞�h��ƒTi�,��������X�f����GJ-6G�٧������6���-8�Tr�ů�wz8u8���P�d���qT���}ڴ�v�J�p�U�
K�UY��x]�z��$˂��@j�EL~:{��&N�k
��E�r�ɞV��G�_�$I>H�O      S   V   x�3�D C���܂ļ������T���Ĕ�"�x�,#�R3W����t4%��~�N>Q.@�tN.#$ӌp�V�f�h
1��+F��� ��$�      M   /   x�3�KM�,IL�I-Vp+J-��,�prq��C#�=... �E�      O   }   x�3���M�S�I-))MNN�LL�/-Q�I�R9����9!r��%��%��񙹉�����yE�zY霆��\F�%��@���%�����8��(#8���Èӈ˘��Ĩ��T�d��=... O�6�      Y      x������ � �      W      x������ � �      U      x������ � �      I   �  x���OO�0���O�����x|�J!�=T=Qf�.+6	�.B����������~o����`	�D]����D���%p��I�7���?T�ibS�����p.�ڠB���T�v��*��u�w�"�bi��b���xخ��5A��5�H0�Y���]�g��zڹ)���eh˓0���{�7��,��9,-��Zk���>��س(B�/���_)�$__�n3��۸k������X]���r��0�۟'JNoD�bΈ� !S $�b2"�	�7�*��jH���xʑ&~>�o�Qts="e b��qB�`��Oۥ���l� �v��������vM�m��9���d.<&�ڊȧ]~�uq8b��Q�����.      ;   �   x�U��
�0F���;7�E��e[amJ�
{{�U����!_�2�wA�4c��A�L�EEL�1;
p�dN�#�5d����h�E�� gŸ��Y�Kc-� 5�D�[�E�фMY#8S�qk�	����3h�u��54"�9�>5R�>��"��Ņ�xucyJ�4ab��? �t@h�      9   �  x���[r�0E�a�(u���Z�J�����6����� ʐ`�����m`�����|>�i����ܸv�ن��&^_�m �0�ƕ;�o��P)|��]�?���qFF	�$h��
�v����mx�`�~_gh@�#C���:�vs3���u�{�]p��`J&��d^��ܰ��]��(����R�h];����5�K�z۹�������А���_P�)\|��A"����B%%^R9�q�ۃ$ǈ �0D�h�4G�p�S[o:*�eJ�B���?�f\�M��hZ���	��.����ٻy��}?��h;?M��E�92`������f�I��w��d>y���'q%���p:~��\�\0`O�����q�8���CRϥ�0������-�0I�K恎�0��"�&Kb�z S�mf�M��SUk$��EVj���:$�
Pa\T^�P���vjO��T3!��K�\�o~�/�����mӅh�YBI���,U��b؂u�Ab�T�#����P"�kx� �;�N�� pˌ�&%e�Y~�* 4	�����? �	U i�y�c�D��!��l���$
��IR����a4��e ha���e&�.�(-ԍP�(��H���+�QUo)/'^� Ç��[P�PJ6��_VƓM�ÇC��h�����B���R.XHO��ܮ��a
Qm      Z     x�=��n�0  �<�^@SZ�d'Rbk H���\[��6��3;��%_l��12�t�n�?����?�����YP�'�޳Tɬ�B�M�J#�R�:�%�p�,A��Tc�m�:^^8������
��x���9L�.S��S��XF�${l.Zf�j���9����58n���!m`i�$W��f(�n���\�-�g�j����{R%a�Y���!�v��	�#��B<#aŃV8�g� ���� ^���Gk�Ző�h	B�}�y�/�h�      \   :   x�3�LL�,�L�,HM��4426153��4�,�/��-H,Q���K/H���4����� x%�     