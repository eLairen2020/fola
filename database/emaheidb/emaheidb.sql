PGDMP     -            	        x            emaheidb    11.8    11.8 �   N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Q           1262    17783    emaheidb    DATABASE     �   CREATE DATABASE emaheidb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE emaheidb;
             postgres    false            �            1259    17784 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    17787    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    196            R           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    197            �            1259    17789    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    17792    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    198            S           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    199            �            1259    17794    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    17797    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    200            T           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    201            �            1259    17799 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         postgres    false            �            1259    17805    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    17808    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    203            U           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    204            �            1259    17810    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    202            V           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    205            �            1259    17812    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    17815 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    206            W           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    207            �            1259    17817 	   blog_blog    TABLE     �  CREATE TABLE public.blog_blog (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    author character varying(100) NOT NULL,
    article text NOT NULL,
    date_of_publish timestamp with time zone NOT NULL,
    about_author text NOT NULL,
    author_picture character varying(100),
    category_id integer,
    blog_image character varying(100),
    updated_by_id integer NOT NULL,
    about_designation character varying(100) NOT NULL
);
    DROP TABLE public.blog_blog;
       public         postgres    false            �            1259    17823    blog_blog_category    TABLE     �   CREATE TABLE public.blog_blog_category (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    updated_by_id integer NOT NULL
);
 &   DROP TABLE public.blog_blog_category;
       public         postgres    false            �            1259    17826    blog_blog_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blog_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.blog_blog_category_id_seq;
       public       postgres    false    209            X           0    0    blog_blog_category_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.blog_blog_category_id_seq OWNED BY public.blog_blog_category.id;
            public       postgres    false    210            �            1259    17828    blog_blog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_blog_id_seq;
       public       postgres    false    208            Y           0    0    blog_blog_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_blog_id_seq OWNED BY public.blog_blog.id;
            public       postgres    false    211            �            1259    17830    blog_blogcomment    TABLE     �   CREATE TABLE public.blog_blogcomment (
    sno integer NOT NULL,
    comment text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    blog_id integer NOT NULL,
    parent_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.blog_blogcomment;
       public         postgres    false            �            1259    17836    blog_blogcomment_sno_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blogcomment_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_blogcomment_sno_seq;
       public       postgres    false    212            Z           0    0    blog_blogcomment_sno_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_blogcomment_sno_seq OWNED BY public.blog_blogcomment.sno;
            public       postgres    false    213            �            1259    17838    blog_comment    TABLE     �   CREATE TABLE public.blog_comment (
    id integer NOT NULL,
    body text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    name_id integer NOT NULL,
    post_id integer NOT NULL
);
     DROP TABLE public.blog_comment;
       public         postgres    false            �            1259    17844    blog_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_comment_id_seq;
       public       postgres    false    214            [           0    0    blog_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;
            public       postgres    false    215            �            1259    17846    blog_subcomment    TABLE     �   CREATE TABLE public.blog_subcomment (
    id integer NOT NULL,
    body text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    main_comment_id integer,
    name_id integer NOT NULL
);
 #   DROP TABLE public.blog_subcomment;
       public         postgres    false            �            1259    17852    blog_sub_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_sub_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.blog_sub_comment_id_seq;
       public       postgres    false    216            \           0    0    blog_sub_comment_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.blog_sub_comment_id_seq OWNED BY public.blog_subcomment.id;
            public       postgres    false    217            �            1259    17854    comment_comment    TABLE     �  CREATE TABLE public.comment_comment (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content text NOT NULL,
    posted timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    parent_id integer,
    user_id integer NOT NULL,
    edited timestamp with time zone NOT NULL,
    urlhash character varying(50) NOT NULL,
    CONSTRAINT comment_comment_object_id_check CHECK ((object_id >= 0))
);
 #   DROP TABLE public.comment_comment;
       public         postgres    false            �            1259    17861    comment_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.comment_comment_id_seq;
       public       postgres    false    218            ]           0    0    comment_comment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.comment_comment_id_seq OWNED BY public.comment_comment.id;
            public       postgres    false    219            �            1259    17863    comment_flag    TABLE     �   CREATE TABLE public.comment_flag (
    id integer NOT NULL,
    count integer NOT NULL,
    state smallint NOT NULL,
    comment_id integer NOT NULL,
    moderator_id integer,
    CONSTRAINT comment_flag_count_check CHECK ((count >= 0))
);
     DROP TABLE public.comment_flag;
       public         postgres    false            �            1259    17867    comment_flag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_flag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.comment_flag_id_seq;
       public       postgres    false    220            ^           0    0    comment_flag_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.comment_flag_id_seq OWNED BY public.comment_flag.id;
            public       postgres    false    221            �            1259    17869    comment_flaginstance    TABLE     �   CREATE TABLE public.comment_flaginstance (
    id integer NOT NULL,
    info text,
    date_flagged timestamp with time zone NOT NULL,
    reason smallint NOT NULL,
    flag_id integer NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.comment_flaginstance;
       public         postgres    false            �            1259    17875    comment_flaginstance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_flaginstance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.comment_flaginstance_id_seq;
       public       postgres    false    222            _           0    0    comment_flaginstance_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.comment_flaginstance_id_seq OWNED BY public.comment_flaginstance.id;
            public       postgres    false    223            �            1259    17877    comment_reaction    TABLE     (  CREATE TABLE public.comment_reaction (
    id integer NOT NULL,
    likes integer NOT NULL,
    dislikes integer NOT NULL,
    comment_id integer NOT NULL,
    CONSTRAINT comment_reaction_dislikes_check CHECK ((dislikes >= 0)),
    CONSTRAINT comment_reaction_likes_check CHECK ((likes >= 0))
);
 $   DROP TABLE public.comment_reaction;
       public         postgres    false            �            1259    17882    comment_reaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_reaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.comment_reaction_id_seq;
       public       postgres    false    224            `           0    0    comment_reaction_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.comment_reaction_id_seq OWNED BY public.comment_reaction.id;
            public       postgres    false    225            �            1259    17884    comment_reactioninstance    TABLE     �   CREATE TABLE public.comment_reactioninstance (
    id integer NOT NULL,
    reaction_type smallint NOT NULL,
    date_reacted timestamp with time zone NOT NULL,
    reaction_id integer NOT NULL,
    user_id integer NOT NULL
);
 ,   DROP TABLE public.comment_reactioninstance;
       public         postgres    false            �            1259    17887    comment_reactioninstance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_reactioninstance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.comment_reactioninstance_id_seq;
       public       postgres    false    226            a           0    0    comment_reactioninstance_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.comment_reactioninstance_id_seq OWNED BY public.comment_reactioninstance.id;
            public       postgres    false    227            �            1259    17889    courses_categories    TABLE     �   CREATE TABLE public.courses_categories (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    updated_by_id integer NOT NULL
);
 &   DROP TABLE public.courses_categories;
       public         postgres    false            �            1259    17892    courses_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.courses_categories_id_seq;
       public       postgres    false    228            b           0    0    courses_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.courses_categories_id_seq OWNED BY public.courses_categories.id;
            public       postgres    false    229            �            1259    17894    courses_chapter    TABLE     �   CREATE TABLE public.courses_chapter (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    details character varying(500) NOT NULL,
    course_name_id integer,
    chapter_no integer NOT NULL,
    updated_by_id integer NOT NULL
);
 #   DROP TABLE public.courses_chapter;
       public         postgres    false            �            1259    17900    courses_chapter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_chapter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.courses_chapter_id_seq;
       public       postgres    false    230            c           0    0    courses_chapter_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.courses_chapter_id_seq OWNED BY public.courses_chapter.id;
            public       postgres    false    231            �            1259    17902    courses_course_enroll_details    TABLE     �   CREATE TABLE public.courses_course_enroll_details (
    id integer NOT NULL,
    date_of_purchase timestamp with time zone NOT NULL,
    payment_details character varying(100),
    course_name_id integer,
    student_name_id integer
);
 1   DROP TABLE public.courses_course_enroll_details;
       public         postgres    false            �            1259    17905 $   courses_course_enroll_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_enroll_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.courses_course_enroll_details_id_seq;
       public       postgres    false    232            d           0    0 $   courses_course_enroll_details_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.courses_course_enroll_details_id_seq OWNED BY public.courses_course_enroll_details.id;
            public       postgres    false    233            �            1259    17907    courses_courses    TABLE     c  CREATE TABLE public.courses_courses (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    subtitle character varying(200) NOT NULL,
    thumnail character varying(100) NOT NULL,
    lastupdate timestamp with time zone NOT NULL,
    price integer NOT NULL,
    offer boolean NOT NULL,
    offerprice integer,
    picture character varying(100) NOT NULL,
    durations character varying(10) NOT NULL,
    "What_you_will_learn" text NOT NULL,
    requirments text NOT NULL,
    category_id integer,
    instructor_id integer,
    language_name_id integer,
    updated_by_id integer NOT NULL
);
 #   DROP TABLE public.courses_courses;
       public         postgres    false            �            1259    17913    courses_courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.courses_courses_id_seq;
       public       postgres    false    234            e           0    0    courses_courses_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.courses_courses_id_seq OWNED BY public.courses_courses.id;
            public       postgres    false    235            �            1259    17915    courses_ebooks    TABLE     �   CREATE TABLE public.courses_ebooks (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    link character varying(200) NOT NULL,
    updated_by_id integer NOT NULL
);
 "   DROP TABLE public.courses_ebooks;
       public         postgres    false            �            1259    17918    courses_ebooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_ebooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_ebooks_id_seq;
       public       postgres    false    236            f           0    0    courses_ebooks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_ebooks_id_seq OWNED BY public.courses_ebooks.id;
            public       postgres    false    237            �            1259    17920    courses_enotes    TABLE     �   CREATE TABLE public.courses_enotes (
    id integer NOT NULL,
    enotes text NOT NULL,
    chapter_name_id integer,
    course_name_id integer,
    updated_by_id integer NOT NULL
);
 "   DROP TABLE public.courses_enotes;
       public         postgres    false            �            1259    17926    courses_enotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_enotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_enotes_id_seq;
       public       postgres    false    238            g           0    0    courses_enotes_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_enotes_id_seq OWNED BY public.courses_enotes.id;
            public       postgres    false    239            �            1259    17928    courses_faq    TABLE     �   CREATE TABLE public.courses_faq (
    id integer NOT NULL,
    "FAQ" text NOT NULL,
    chapter_name_id integer,
    course_name_id integer,
    updated_by_id integer NOT NULL
);
    DROP TABLE public.courses_faq;
       public         postgres    false            �            1259    17934    courses_faq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_faq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.courses_faq_id_seq;
       public       postgres    false    240            h           0    0    courses_faq_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.courses_faq_id_seq OWNED BY public.courses_faq.id;
            public       postgres    false    241            �            1259    17936    courses_instructor    TABLE     s  CREATE TABLE public.courses_instructor (
    id integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    email character varying(200) NOT NULL,
    image character varying(100) NOT NULL,
    brief_introduction text NOT NULL,
    qualifications character varying(100) NOT NULL,
    updated_by_id integer NOT NULL
);
 &   DROP TABLE public.courses_instructor;
       public         postgres    false            �            1259    17942    courses_instructor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.courses_instructor_id_seq;
       public       postgres    false    242            i           0    0    courses_instructor_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.courses_instructor_id_seq OWNED BY public.courses_instructor.id;
            public       postgres    false    243            �            1259    17944    courses_language_name    TABLE     �   CREATE TABLE public.courses_language_name (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    updated_by_id integer NOT NULL
);
 )   DROP TABLE public.courses_language_name;
       public         postgres    false            �            1259    17947    courses_language_name_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_language_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.courses_language_name_id_seq;
       public       postgres    false    244            j           0    0    courses_language_name_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.courses_language_name_id_seq OWNED BY public.courses_language_name.id;
            public       postgres    false    245            �            1259    17949    courses_questionbank    TABLE     �   CREATE TABLE public.courses_questionbank (
    id integer NOT NULL,
    questionbank text NOT NULL,
    chapter_name_id integer,
    course_name_id integer,
    updated_by_id integer NOT NULL
);
 (   DROP TABLE public.courses_questionbank;
       public         postgres    false            �            1259    17955    courses_questionbank_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_questionbank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.courses_questionbank_id_seq;
       public       postgres    false    246            k           0    0    courses_questionbank_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.courses_questionbank_id_seq OWNED BY public.courses_questionbank.id;
            public       postgres    false    247            �            1259    17957    courses_topics    TABLE       CREATE TABLE public.courses_topics (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    details text NOT NULL,
    chapter_id integer,
    topic_no integer NOT NULL,
    videolink character varying(200) NOT NULL,
    updated_by_id integer NOT NULL
);
 "   DROP TABLE public.courses_topics;
       public         postgres    false            �            1259    17963    courses_topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_topics_id_seq;
       public       postgres    false    248            l           0    0    courses_topics_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_topics_id_seq OWNED BY public.courses_topics.id;
            public       postgres    false    249            �            1259    17965    discussion_discussion    TABLE       CREATE TABLE public.discussion_discussion (
    id integer NOT NULL,
    discussion_text text NOT NULL,
    date timestamp with time zone NOT NULL,
    chapter_name_id integer,
    course_name_id integer,
    student_name_id integer,
    topic character varying(500) NOT NULL
);
 )   DROP TABLE public.discussion_discussion;
       public         postgres    false            �            1259    17971    discussion_discussion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discussion_discussion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.discussion_discussion_id_seq;
       public       postgres    false    250            m           0    0    discussion_discussion_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.discussion_discussion_id_seq OWNED BY public.discussion_discussion.id;
            public       postgres    false    251            �            1259    17973    discussion_discussionreply    TABLE     �   CREATE TABLE public.discussion_discussionreply (
    id integer NOT NULL,
    reply text NOT NULL,
    date timestamp with time zone NOT NULL,
    discussion_name_id integer
);
 .   DROP TABLE public.discussion_discussionreply;
       public         postgres    false            �            1259    17979 !   discussion_discussionreply_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discussion_discussionreply_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.discussion_discussionreply_id_seq;
       public       postgres    false    252            n           0    0 !   discussion_discussionreply_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.discussion_discussionreply_id_seq OWNED BY public.discussion_discussionreply.id;
            public       postgres    false    253            �            1259    17981    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false            �            1259    17988    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    254            o           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    255                        1259    17990    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false                       1259    17993    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    256            p           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    257                       1259    17995    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false                       1259    18001    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    258            q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    259                       1259    18003    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false                       1259    18009    reviews_reviews_class    TABLE     �   CREATE TABLE public.reviews_reviews_class (
    id integer NOT NULL,
    submission_date date NOT NULL,
    rating character varying(20) NOT NULL,
    review text NOT NULL,
    reply text NOT NULL,
    course_name_id integer,
    username_id integer
);
 )   DROP TABLE public.reviews_reviews_class;
       public         postgres    false                       1259    18015    reviews_reviews_class_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_reviews_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.reviews_reviews_class_id_seq;
       public       postgres    false    261            r           0    0    reviews_reviews_class_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.reviews_reviews_class_id_seq OWNED BY public.reviews_reviews_class.id;
            public       postgres    false    262                       1259    18531 
   taggit_tag    TABLE     �   CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);
    DROP TABLE public.taggit_tag;
       public         postgres    false                       1259    18529    taggit_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.taggit_tag_id_seq;
       public       postgres    false    268            s           0    0    taggit_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;
            public       postgres    false    267                       1259    18543    taggit_taggeditem    TABLE     �   CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.taggit_taggeditem;
       public         postgres    false                       1259    18541    taggit_taggeditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.taggit_taggeditem_id_seq;
       public       postgres    false    270            t           0    0    taggit_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;
            public       postgres    false    269                       1259    18017    testingapp_blog_testing    TABLE     d  CREATE TABLE public.testingapp_blog_testing (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    author character varying(100) NOT NULL,
    author_picture character varying(100),
    about_author text NOT NULL,
    blog_image character varying(100),
    article text NOT NULL,
    date_of_publish timestamp with time zone NOT NULL
);
 +   DROP TABLE public.testingapp_blog_testing;
       public         postgres    false                       1259    18023    testingapp_blog_testing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.testingapp_blog_testing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.testingapp_blog_testing_id_seq;
       public       postgres    false    263            u           0    0    testingapp_blog_testing_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.testingapp_blog_testing_id_seq OWNED BY public.testingapp_blog_testing.id;
            public       postgres    false    264            	           1259    18025    user_accounts_user_profile    TABLE     �  CREATE TABLE public.user_accounts_user_profile (
    id integer NOT NULL,
    username_id integer NOT NULL,
    first_name character varying(100),
    occupation character varying(100),
    language character varying(100),
    last_name character varying(100),
    photo character varying(100),
    address character varying(200),
    say_something_about_yourself character varying(300),
    phone character varying(13)
);
 .   DROP TABLE public.user_accounts_user_profile;
       public         postgres    false            
           1259    18031 "   user_accounts_user_accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_accounts_user_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_accounts_user_accounts_id_seq;
       public       postgres    false    265            v           0    0 "   user_accounts_user_accounts_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.user_accounts_user_accounts_id_seq OWNED BY public.user_accounts_user_profile.id;
            public       postgres    false    266            o           2604    18033    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            p           2604    18034    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            q           2604    18035    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            r           2604    18036    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    202            s           2604    18037    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            t           2604    18038    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            u           2604    18039    blog_blog id    DEFAULT     l   ALTER TABLE ONLY public.blog_blog ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_id_seq'::regclass);
 ;   ALTER TABLE public.blog_blog ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    208            v           2604    18040    blog_blog_category id    DEFAULT     ~   ALTER TABLE ONLY public.blog_blog_category ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_category_id_seq'::regclass);
 D   ALTER TABLE public.blog_blog_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            w           2604    18041    blog_blogcomment sno    DEFAULT     |   ALTER TABLE ONLY public.blog_blogcomment ALTER COLUMN sno SET DEFAULT nextval('public.blog_blogcomment_sno_seq'::regclass);
 C   ALTER TABLE public.blog_blogcomment ALTER COLUMN sno DROP DEFAULT;
       public       postgres    false    213    212            x           2604    18042    blog_comment id    DEFAULT     r   ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);
 >   ALTER TABLE public.blog_comment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            y           2604    18043    blog_subcomment id    DEFAULT     y   ALTER TABLE ONLY public.blog_subcomment ALTER COLUMN id SET DEFAULT nextval('public.blog_sub_comment_id_seq'::regclass);
 A   ALTER TABLE public.blog_subcomment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            z           2604    18044    comment_comment id    DEFAULT     x   ALTER TABLE ONLY public.comment_comment ALTER COLUMN id SET DEFAULT nextval('public.comment_comment_id_seq'::regclass);
 A   ALTER TABLE public.comment_comment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            |           2604    18045    comment_flag id    DEFAULT     r   ALTER TABLE ONLY public.comment_flag ALTER COLUMN id SET DEFAULT nextval('public.comment_flag_id_seq'::regclass);
 >   ALTER TABLE public.comment_flag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            ~           2604    18046    comment_flaginstance id    DEFAULT     �   ALTER TABLE ONLY public.comment_flaginstance ALTER COLUMN id SET DEFAULT nextval('public.comment_flaginstance_id_seq'::regclass);
 F   ALTER TABLE public.comment_flaginstance ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222                       2604    18047    comment_reaction id    DEFAULT     z   ALTER TABLE ONLY public.comment_reaction ALTER COLUMN id SET DEFAULT nextval('public.comment_reaction_id_seq'::regclass);
 B   ALTER TABLE public.comment_reaction ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            �           2604    18048    comment_reactioninstance id    DEFAULT     �   ALTER TABLE ONLY public.comment_reactioninstance ALTER COLUMN id SET DEFAULT nextval('public.comment_reactioninstance_id_seq'::regclass);
 J   ALTER TABLE public.comment_reactioninstance ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            �           2604    18049    courses_categories id    DEFAULT     ~   ALTER TABLE ONLY public.courses_categories ALTER COLUMN id SET DEFAULT nextval('public.courses_categories_id_seq'::regclass);
 D   ALTER TABLE public.courses_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            �           2604    18050    courses_chapter id    DEFAULT     x   ALTER TABLE ONLY public.courses_chapter ALTER COLUMN id SET DEFAULT nextval('public.courses_chapter_id_seq'::regclass);
 A   ALTER TABLE public.courses_chapter ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            �           2604    18051     courses_course_enroll_details id    DEFAULT     �   ALTER TABLE ONLY public.courses_course_enroll_details ALTER COLUMN id SET DEFAULT nextval('public.courses_course_enroll_details_id_seq'::regclass);
 O   ALTER TABLE public.courses_course_enroll_details ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            �           2604    18052    courses_courses id    DEFAULT     x   ALTER TABLE ONLY public.courses_courses ALTER COLUMN id SET DEFAULT nextval('public.courses_courses_id_seq'::regclass);
 A   ALTER TABLE public.courses_courses ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            �           2604    18053    courses_ebooks id    DEFAULT     v   ALTER TABLE ONLY public.courses_ebooks ALTER COLUMN id SET DEFAULT nextval('public.courses_ebooks_id_seq'::regclass);
 @   ALTER TABLE public.courses_ebooks ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236            �           2604    18054    courses_enotes id    DEFAULT     v   ALTER TABLE ONLY public.courses_enotes ALTER COLUMN id SET DEFAULT nextval('public.courses_enotes_id_seq'::regclass);
 @   ALTER TABLE public.courses_enotes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238            �           2604    18055    courses_faq id    DEFAULT     p   ALTER TABLE ONLY public.courses_faq ALTER COLUMN id SET DEFAULT nextval('public.courses_faq_id_seq'::regclass);
 =   ALTER TABLE public.courses_faq ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240            �           2604    18056    courses_instructor id    DEFAULT     ~   ALTER TABLE ONLY public.courses_instructor ALTER COLUMN id SET DEFAULT nextval('public.courses_instructor_id_seq'::regclass);
 D   ALTER TABLE public.courses_instructor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242            �           2604    18057    courses_language_name id    DEFAULT     �   ALTER TABLE ONLY public.courses_language_name ALTER COLUMN id SET DEFAULT nextval('public.courses_language_name_id_seq'::regclass);
 G   ALTER TABLE public.courses_language_name ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244            �           2604    18058    courses_questionbank id    DEFAULT     �   ALTER TABLE ONLY public.courses_questionbank ALTER COLUMN id SET DEFAULT nextval('public.courses_questionbank_id_seq'::regclass);
 F   ALTER TABLE public.courses_questionbank ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            �           2604    18059    courses_topics id    DEFAULT     v   ALTER TABLE ONLY public.courses_topics ALTER COLUMN id SET DEFAULT nextval('public.courses_topics_id_seq'::regclass);
 @   ALTER TABLE public.courses_topics ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            �           2604    18060    discussion_discussion id    DEFAULT     �   ALTER TABLE ONLY public.discussion_discussion ALTER COLUMN id SET DEFAULT nextval('public.discussion_discussion_id_seq'::regclass);
 G   ALTER TABLE public.discussion_discussion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250            �           2604    18061    discussion_discussionreply id    DEFAULT     �   ALTER TABLE ONLY public.discussion_discussionreply ALTER COLUMN id SET DEFAULT nextval('public.discussion_discussionreply_id_seq'::regclass);
 L   ALTER TABLE public.discussion_discussionreply ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    253    252            �           2604    18062    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    255    254            �           2604    18063    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256            �           2604    18064    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    259    258            �           2604    18065    reviews_reviews_class id    DEFAULT     �   ALTER TABLE ONLY public.reviews_reviews_class ALTER COLUMN id SET DEFAULT nextval('public.reviews_reviews_class_id_seq'::regclass);
 G   ALTER TABLE public.reviews_reviews_class ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    262    261            �           2604    18534    taggit_tag id    DEFAULT     n   ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);
 <   ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    268    268            �           2604    18546    taggit_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    269    270            �           2604    18066    testingapp_blog_testing id    DEFAULT     �   ALTER TABLE ONLY public.testingapp_blog_testing ALTER COLUMN id SET DEFAULT nextval('public.testingapp_blog_testing_id_seq'::regclass);
 I   ALTER TABLE public.testingapp_blog_testing ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    263            �           2604    18067    user_accounts_user_profile id    DEFAULT     �   ALTER TABLE ONLY public.user_accounts_user_profile ALTER COLUMN id SET DEFAULT nextval('public.user_accounts_user_accounts_id_seq'::regclass);
 L   ALTER TABLE public.user_accounts_user_profile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265                      0    17784 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    196   j8                0    17789    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    198   �8                0    17794    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    200   �9                0    17799 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    202   �?                0    17805    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    203   �B                0    17812    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    206   �B                0    17817 	   blog_blog 
   TABLE DATA               �   COPY public.blog_blog (id, title, author, article, date_of_publish, about_author, author_picture, category_id, blog_image, updated_by_id, about_designation) FROM stdin;
    public       postgres    false    208   �B                0    17823    blog_blog_category 
   TABLE DATA               F   COPY public.blog_blog_category (id, title, updated_by_id) FROM stdin;
    public       postgres    false    209   �Y                0    17830    blog_blogcomment 
   TABLE DATA               b   COPY public.blog_blogcomment (sno, comment, "timestamp", blog_id, parent_id, user_id) FROM stdin;
    public       postgres    false    212   �Y                0    17838    blog_comment 
   TABLE DATA               V   COPY public.blog_comment (id, body, created_on, active, name_id, post_id) FROM stdin;
    public       postgres    false    214   Z                0    17846    blog_subcomment 
   TABLE DATA               Y   COPY public.blog_subcomment (id, body, created_on, main_comment_id, name_id) FROM stdin;
    public       postgres    false    216   3Z                0    17854    comment_comment 
   TABLE DATA                  COPY public.comment_comment (id, object_id, content, posted, content_type_id, parent_id, user_id, edited, urlhash) FROM stdin;
    public       postgres    false    218   PZ                0    17863    comment_flag 
   TABLE DATA               R   COPY public.comment_flag (id, count, state, comment_id, moderator_id) FROM stdin;
    public       postgres    false    220   mZ                0    17869    comment_flaginstance 
   TABLE DATA               `   COPY public.comment_flaginstance (id, info, date_flagged, reason, flag_id, user_id) FROM stdin;
    public       postgres    false    222   �Z                0    17877    comment_reaction 
   TABLE DATA               K   COPY public.comment_reaction (id, likes, dislikes, comment_id) FROM stdin;
    public       postgres    false    224   �Z                0    17884    comment_reactioninstance 
   TABLE DATA               i   COPY public.comment_reactioninstance (id, reaction_type, date_reacted, reaction_id, user_id) FROM stdin;
    public       postgres    false    226   �Z      !          0    17889    courses_categories 
   TABLE DATA               E   COPY public.courses_categories (id, name, updated_by_id) FROM stdin;
    public       postgres    false    228   �Z      #          0    17894    courses_chapter 
   TABLE DATA               g   COPY public.courses_chapter (id, name, details, course_name_id, chapter_no, updated_by_id) FROM stdin;
    public       postgres    false    230   �[      %          0    17902    courses_course_enroll_details 
   TABLE DATA                  COPY public.courses_course_enroll_details (id, date_of_purchase, payment_details, course_name_id, student_name_id) FROM stdin;
    public       postgres    false    232   p\      '          0    17907    courses_courses 
   TABLE DATA               �   COPY public.courses_courses (id, title, subtitle, thumnail, lastupdate, price, offer, offerprice, picture, durations, "What_you_will_learn", requirments, category_id, instructor_id, language_name_id, updated_by_id) FROM stdin;
    public       postgres    false    234   []      )          0    17915    courses_ebooks 
   TABLE DATA               G   COPY public.courses_ebooks (id, name, link, updated_by_id) FROM stdin;
    public       postgres    false    236   zk      +          0    17920    courses_enotes 
   TABLE DATA               d   COPY public.courses_enotes (id, enotes, chapter_name_id, course_name_id, updated_by_id) FROM stdin;
    public       postgres    false    238   �k      -          0    17928    courses_faq 
   TABLE DATA               `   COPY public.courses_faq (id, "FAQ", chapter_name_id, course_name_id, updated_by_id) FROM stdin;
    public       postgres    false    240   �k      /          0    17936    courses_instructor 
   TABLE DATA               �   COPY public.courses_instructor (id, firstname, lastname, email, image, brief_introduction, qualifications, updated_by_id) FROM stdin;
    public       postgres    false    242   �k      1          0    17944    courses_language_name 
   TABLE DATA               H   COPY public.courses_language_name (id, name, updated_by_id) FROM stdin;
    public       postgres    false    244   �m      3          0    17949    courses_questionbank 
   TABLE DATA               p   COPY public.courses_questionbank (id, questionbank, chapter_name_id, course_name_id, updated_by_id) FROM stdin;
    public       postgres    false    246    n      5          0    17957    courses_topics 
   TABLE DATA               k   COPY public.courses_topics (id, name, details, chapter_id, topic_no, videolink, updated_by_id) FROM stdin;
    public       postgres    false    248   n      7          0    17965    discussion_discussion 
   TABLE DATA               �   COPY public.discussion_discussion (id, discussion_text, date, chapter_name_id, course_name_id, student_name_id, topic) FROM stdin;
    public       postgres    false    250   �q      9          0    17973    discussion_discussionreply 
   TABLE DATA               Y   COPY public.discussion_discussionreply (id, reply, date, discussion_name_id) FROM stdin;
    public       postgres    false    252   �q      ;          0    17981    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    254   r      =          0    17990    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    256   �      ?          0    17995    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    258   ��      A          0    18003    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    260   �      B          0    18009    reviews_reviews_class 
   TABLE DATA               x   COPY public.reviews_reviews_class (id, submission_date, rating, review, reply, course_name_id, username_id) FROM stdin;
    public       postgres    false    261   ��      I          0    18531 
   taggit_tag 
   TABLE DATA               4   COPY public.taggit_tag (id, name, slug) FROM stdin;
    public       postgres    false    268   ަ      K          0    18543    taggit_taggeditem 
   TABLE DATA               S   COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public       postgres    false    270   ��      D          0    18017    testingapp_blog_testing 
   TABLE DATA               �   COPY public.testingapp_blog_testing (id, title, author, author_picture, about_author, blog_image, article, date_of_publish) FROM stdin;
    public       postgres    false    263   ��      F          0    18025    user_accounts_user_profile 
   TABLE DATA               �   COPY public.user_accounts_user_profile (id, username_id, first_name, occupation, language, last_name, photo, address, say_something_about_yourself, phone) FROM stdin;
    public       postgres    false    265   �      w           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);
            public       postgres    false    197            x           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 137, true);
            public       postgres    false    199            y           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 161, true);
            public       postgres    false    201            z           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);
            public       postgres    false    204            {           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 27, true);
            public       postgres    false    205            |           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    207            }           0    0    blog_blog_category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blog_blog_category_id_seq', 5, true);
            public       postgres    false    210            ~           0    0    blog_blog_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_blog_id_seq', 10, true);
            public       postgres    false    211                       0    0    blog_blogcomment_sno_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blog_blogcomment_sno_seq', 29, true);
            public       postgres    false    213            �           0    0    blog_comment_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.blog_comment_id_seq', 5, true);
            public       postgres    false    215            �           0    0    blog_sub_comment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.blog_sub_comment_id_seq', 4, true);
            public       postgres    false    217            �           0    0    comment_comment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.comment_comment_id_seq', 1, false);
            public       postgres    false    219            �           0    0    comment_flag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.comment_flag_id_seq', 1, false);
            public       postgres    false    221            �           0    0    comment_flaginstance_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.comment_flaginstance_id_seq', 1, false);
            public       postgres    false    223            �           0    0    comment_reaction_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.comment_reaction_id_seq', 1, false);
            public       postgres    false    225            �           0    0    comment_reactioninstance_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.comment_reactioninstance_id_seq', 1, false);
            public       postgres    false    227            �           0    0    courses_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.courses_categories_id_seq', 14, true);
            public       postgres    false    229            �           0    0    courses_chapter_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.courses_chapter_id_seq', 26, true);
            public       postgres    false    231            �           0    0 $   courses_course_enroll_details_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.courses_course_enroll_details_id_seq', 27, true);
            public       postgres    false    233            �           0    0    courses_courses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.courses_courses_id_seq', 11, true);
            public       postgres    false    235            �           0    0    courses_ebooks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courses_ebooks_id_seq', 1, true);
            public       postgres    false    237            �           0    0    courses_enotes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courses_enotes_id_seq', 6, true);
            public       postgres    false    239            �           0    0    courses_faq_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.courses_faq_id_seq', 2, true);
            public       postgres    false    241            �           0    0    courses_instructor_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.courses_instructor_id_seq', 4, true);
            public       postgres    false    243            �           0    0    courses_language_name_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.courses_language_name_id_seq', 2, true);
            public       postgres    false    245            �           0    0    courses_questionbank_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.courses_questionbank_id_seq', 1, false);
            public       postgres    false    247            �           0    0    courses_topics_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.courses_topics_id_seq', 35, true);
            public       postgres    false    249            �           0    0    discussion_discussion_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.discussion_discussion_id_seq', 6, true);
            public       postgres    false    251            �           0    0 !   discussion_discussionreply_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.discussion_discussionreply_id_seq', 1, false);
            public       postgres    false    253            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 411, true);
            public       postgres    false    255            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 39, true);
            public       postgres    false    257            �           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 134, true);
            public       postgres    false    259            �           0    0    reviews_reviews_class_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.reviews_reviews_class_id_seq', 1, true);
            public       postgres    false    262            �           0    0    taggit_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.taggit_tag_id_seq', 26, true);
            public       postgres    false    267            �           0    0    taggit_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 35, true);
            public       postgres    false    269            �           0    0    testingapp_blog_testing_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.testingapp_blog_testing_id_seq', 1, false);
            public       postgres    false    264            �           0    0 "   user_accounts_user_accounts_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_accounts_user_accounts_id_seq', 20, true);
            public       postgres    false    266            �           2606    18071    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    196            �           2606    18073 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    198    198            �           2606    18075 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    198            �           2606    18077    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    196            �           2606    18079 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    200    200            �           2606    18081 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    200            �           2606    18083 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    203            �           2606    18085 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    203    203            �           2606    18087    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    202            �           2606    18089 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    206            �           2606    18091 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    206    206            �           2606    18093     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    202            �           2606    18095 *   blog_blog_category blog_blog_category_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.blog_blog_category
    ADD CONSTRAINT blog_blog_category_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.blog_blog_category DROP CONSTRAINT blog_blog_category_pkey;
       public         postgres    false    209            �           2606    18097    blog_blog blog_blog_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_blog DROP CONSTRAINT blog_blog_pkey;
       public         postgres    false    208            �           2606    18099 &   blog_blogcomment blog_blogcomment_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_pkey PRIMARY KEY (sno);
 P   ALTER TABLE ONLY public.blog_blogcomment DROP CONSTRAINT blog_blogcomment_pkey;
       public         postgres    false    212            �           2606    18101    blog_comment blog_comment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_pkey;
       public         postgres    false    214            �           2606    18103 %   blog_subcomment blog_sub_comment_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.blog_subcomment
    ADD CONSTRAINT blog_sub_comment_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.blog_subcomment DROP CONSTRAINT blog_sub_comment_pkey;
       public         postgres    false    216            �           2606    18105 $   comment_comment comment_comment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.comment_comment
    ADD CONSTRAINT comment_comment_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.comment_comment DROP CONSTRAINT comment_comment_pkey;
       public         postgres    false    218            �           2606    18107 5   comment_comment comment_comment_urlhash_1f2a37f4_uniq 
   CONSTRAINT     s   ALTER TABLE ONLY public.comment_comment
    ADD CONSTRAINT comment_comment_urlhash_1f2a37f4_uniq UNIQUE (urlhash);
 _   ALTER TABLE ONLY public.comment_comment DROP CONSTRAINT comment_comment_urlhash_1f2a37f4_uniq;
       public         postgres    false    218            �           2606    18109 (   comment_flag comment_flag_comment_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.comment_flag
    ADD CONSTRAINT comment_flag_comment_id_key UNIQUE (comment_id);
 R   ALTER TABLE ONLY public.comment_flag DROP CONSTRAINT comment_flag_comment_id_key;
       public         postgres    false    220            �           2606    18111    comment_flag comment_flag_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comment_flag
    ADD CONSTRAINT comment_flag_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.comment_flag DROP CONSTRAINT comment_flag_pkey;
       public         postgres    false    220            �           2606    18113 G   comment_flaginstance comment_flaginstance_flag_id_user_id_45354216_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.comment_flaginstance
    ADD CONSTRAINT comment_flaginstance_flag_id_user_id_45354216_uniq UNIQUE (flag_id, user_id);
 q   ALTER TABLE ONLY public.comment_flaginstance DROP CONSTRAINT comment_flaginstance_flag_id_user_id_45354216_uniq;
       public         postgres    false    222    222            �           2606    18115 .   comment_flaginstance comment_flaginstance_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.comment_flaginstance
    ADD CONSTRAINT comment_flaginstance_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.comment_flaginstance DROP CONSTRAINT comment_flaginstance_pkey;
       public         postgres    false    222            �           2606    18117 :   comment_reaction comment_reaction_comment_id_66a7fc70_uniq 
   CONSTRAINT     {   ALTER TABLE ONLY public.comment_reaction
    ADD CONSTRAINT comment_reaction_comment_id_66a7fc70_uniq UNIQUE (comment_id);
 d   ALTER TABLE ONLY public.comment_reaction DROP CONSTRAINT comment_reaction_comment_id_66a7fc70_uniq;
       public         postgres    false    224            �           2606    18119 &   comment_reaction comment_reaction_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.comment_reaction
    ADD CONSTRAINT comment_reaction_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.comment_reaction DROP CONSTRAINT comment_reaction_pkey;
       public         postgres    false    224            �           2606    18121 6   comment_reactioninstance comment_reactioninstance_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.comment_reactioninstance
    ADD CONSTRAINT comment_reactioninstance_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.comment_reactioninstance DROP CONSTRAINT comment_reactioninstance_pkey;
       public         postgres    false    226            �           2606    18123 S   comment_reactioninstance comment_reactioninstance_user_id_reaction_id_0e26e650_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.comment_reactioninstance
    ADD CONSTRAINT comment_reactioninstance_user_id_reaction_id_0e26e650_uniq UNIQUE (user_id, reaction_id);
 }   ALTER TABLE ONLY public.comment_reactioninstance DROP CONSTRAINT comment_reactioninstance_user_id_reaction_id_0e26e650_uniq;
       public         postgres    false    226    226            �           2606    18125 *   courses_categories courses_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.courses_categories
    ADD CONSTRAINT courses_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.courses_categories DROP CONSTRAINT courses_categories_pkey;
       public         postgres    false    228            �           2606    18127 $   courses_chapter courses_chapter_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.courses_chapter
    ADD CONSTRAINT courses_chapter_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.courses_chapter DROP CONSTRAINT courses_chapter_pkey;
       public         postgres    false    230            �           2606    18129 @   courses_course_enroll_details courses_course_enroll_details_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.courses_course_enroll_details
    ADD CONSTRAINT courses_course_enroll_details_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.courses_course_enroll_details DROP CONSTRAINT courses_course_enroll_details_pkey;
       public         postgres    false    232            �           2606    18131 $   courses_courses courses_courses_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.courses_courses
    ADD CONSTRAINT courses_courses_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.courses_courses DROP CONSTRAINT courses_courses_pkey;
       public         postgres    false    234            �           2606    18133 "   courses_ebooks courses_ebooks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.courses_ebooks
    ADD CONSTRAINT courses_ebooks_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.courses_ebooks DROP CONSTRAINT courses_ebooks_pkey;
       public         postgres    false    236                       2606    18135 "   courses_enotes courses_enotes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.courses_enotes
    ADD CONSTRAINT courses_enotes_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.courses_enotes DROP CONSTRAINT courses_enotes_pkey;
       public         postgres    false    238                       2606    18137    courses_faq courses_faq_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.courses_faq
    ADD CONSTRAINT courses_faq_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.courses_faq DROP CONSTRAINT courses_faq_pkey;
       public         postgres    false    240            
           2606    18139 *   courses_instructor courses_instructor_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.courses_instructor
    ADD CONSTRAINT courses_instructor_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.courses_instructor DROP CONSTRAINT courses_instructor_pkey;
       public         postgres    false    242                       2606    18141 4   courses_language_name courses_language_name_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.courses_language_name
    ADD CONSTRAINT courses_language_name_name_key UNIQUE (name);
 ^   ALTER TABLE ONLY public.courses_language_name DROP CONSTRAINT courses_language_name_name_key;
       public         postgres    false    244                       2606    18143 0   courses_language_name courses_language_name_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.courses_language_name
    ADD CONSTRAINT courses_language_name_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.courses_language_name DROP CONSTRAINT courses_language_name_pkey;
       public         postgres    false    244                       2606    18145 .   courses_questionbank courses_questionbank_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.courses_questionbank
    ADD CONSTRAINT courses_questionbank_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.courses_questionbank DROP CONSTRAINT courses_questionbank_pkey;
       public         postgres    false    246                       2606    18147 "   courses_topics courses_topics_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.courses_topics
    ADD CONSTRAINT courses_topics_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.courses_topics DROP CONSTRAINT courses_topics_pkey;
       public         postgres    false    248                       2606    18149 0   discussion_discussion discussion_discussion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.discussion_discussion
    ADD CONSTRAINT discussion_discussion_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.discussion_discussion DROP CONSTRAINT discussion_discussion_pkey;
       public         postgres    false    250            "           2606    18151 :   discussion_discussionreply discussion_discussionreply_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.discussion_discussionreply
    ADD CONSTRAINT discussion_discussionreply_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.discussion_discussionreply DROP CONSTRAINT discussion_discussionreply_pkey;
       public         postgres    false    252            %           2606    18153 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    254            (           2606    18155 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    256    256            *           2606    18157 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    256            ,           2606    18159 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    258            /           2606    18161 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    260            3           2606    18163 0   reviews_reviews_class reviews_reviews_class_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.reviews_reviews_class
    ADD CONSTRAINT reviews_reviews_class_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.reviews_reviews_class DROP CONSTRAINT reviews_reviews_class_pkey;
       public         postgres    false    261            =           2606    18538    taggit_tag taggit_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
       public         postgres    false    268            ?           2606    18536    taggit_tag taggit_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
       public         postgres    false    268            B           2606    18540    taggit_tag taggit_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
       public         postgres    false    268            E           2606    18566 J   taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);
 t   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
       public         postgres    false    270    270    270            I           2606    18548 (   taggit_taggeditem taggit_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
       public         postgres    false    270            6           2606    18165 4   testingapp_blog_testing testingapp_blog_testing_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.testingapp_blog_testing
    ADD CONSTRAINT testingapp_blog_testing_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.testingapp_blog_testing DROP CONSTRAINT testingapp_blog_testing_pkey;
       public         postgres    false    263            8           2606    18167 ;   user_accounts_user_profile user_accounts_user_accounts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.user_accounts_user_profile
    ADD CONSTRAINT user_accounts_user_accounts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY public.user_accounts_user_profile DROP CONSTRAINT user_accounts_user_accounts_pkey;
       public         postgres    false    265            :           2606    18169 O   user_accounts_user_profile user_accounts_user_profile_username_id_10d396ba_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_accounts_user_profile
    ADD CONSTRAINT user_accounts_user_profile_username_id_10d396ba_uniq UNIQUE (username_id);
 y   ALTER TABLE ONLY public.user_accounts_user_profile DROP CONSTRAINT user_accounts_user_profile_username_id_10d396ba_uniq;
       public         postgres    false    265            �           1259    18170    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    196            �           1259    18171 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    198            �           1259    18172 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    198            �           1259    18173 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    200            �           1259    18174 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    203            �           1259    18175 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    203            �           1259    18176 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    206            �           1259    18177 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    206            �           1259    18178     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    202            �           1259    18179    blog_blog_category_id_c34d5f94    INDEX     [   CREATE INDEX blog_blog_category_id_c34d5f94 ON public.blog_blog USING btree (category_id);
 2   DROP INDEX public.blog_blog_category_id_c34d5f94;
       public         postgres    false    208            �           1259    18180 )   blog_blog_category_updated_by_id_3c1cef0a    INDEX     q   CREATE INDEX blog_blog_category_updated_by_id_3c1cef0a ON public.blog_blog_category USING btree (updated_by_id);
 =   DROP INDEX public.blog_blog_category_updated_by_id_3c1cef0a;
       public         postgres    false    209            �           1259    18181     blog_blog_updated_by_id_b5710575    INDEX     _   CREATE INDEX blog_blog_updated_by_id_b5710575 ON public.blog_blog USING btree (updated_by_id);
 4   DROP INDEX public.blog_blog_updated_by_id_b5710575;
       public         postgres    false    208            �           1259    18182 !   blog_blogcomment_blog_id_d3b167d7    INDEX     a   CREATE INDEX blog_blogcomment_blog_id_d3b167d7 ON public.blog_blogcomment USING btree (blog_id);
 5   DROP INDEX public.blog_blogcomment_blog_id_d3b167d7;
       public         postgres    false    212            �           1259    18183 #   blog_blogcomment_parent_id_df1e1d2a    INDEX     e   CREATE INDEX blog_blogcomment_parent_id_df1e1d2a ON public.blog_blogcomment USING btree (parent_id);
 7   DROP INDEX public.blog_blogcomment_parent_id_df1e1d2a;
       public         postgres    false    212            �           1259    18184 !   blog_blogcomment_user_id_dc3b3111    INDEX     a   CREATE INDEX blog_blogcomment_user_id_dc3b3111 ON public.blog_blogcomment USING btree (user_id);
 5   DROP INDEX public.blog_blogcomment_user_id_dc3b3111;
       public         postgres    false    212            �           1259    18185    blog_comment_name_id_dcfbce3b    INDEX     Y   CREATE INDEX blog_comment_name_id_dcfbce3b ON public.blog_comment USING btree (name_id);
 1   DROP INDEX public.blog_comment_name_id_dcfbce3b;
       public         postgres    false    214            �           1259    18186    blog_comment_post_id_580e96ef    INDEX     Y   CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);
 1   DROP INDEX public.blog_comment_post_id_580e96ef;
       public         postgres    false    214            �           1259    18187 )   blog_sub_comment_main_comment_id_294fa7c2    INDEX     p   CREATE INDEX blog_sub_comment_main_comment_id_294fa7c2 ON public.blog_subcomment USING btree (main_comment_id);
 =   DROP INDEX public.blog_sub_comment_main_comment_id_294fa7c2;
       public         postgres    false    216            �           1259    18188 !   blog_sub_comment_name_id_0764a0fd    INDEX     `   CREATE INDEX blog_sub_comment_name_id_0764a0fd ON public.blog_subcomment USING btree (name_id);
 5   DROP INDEX public.blog_sub_comment_name_id_0764a0fd;
       public         postgres    false    216            �           1259    18189 (   comment_comment_content_type_id_fbfb9793    INDEX     o   CREATE INDEX comment_comment_content_type_id_fbfb9793 ON public.comment_comment USING btree (content_type_id);
 <   DROP INDEX public.comment_comment_content_type_id_fbfb9793;
       public         postgres    false    218            �           1259    18190 "   comment_comment_parent_id_b612524c    INDEX     c   CREATE INDEX comment_comment_parent_id_b612524c ON public.comment_comment USING btree (parent_id);
 6   DROP INDEX public.comment_comment_parent_id_b612524c;
       public         postgres    false    218            �           1259    18191 %   comment_comment_urlhash_1f2a37f4_like    INDEX     x   CREATE INDEX comment_comment_urlhash_1f2a37f4_like ON public.comment_comment USING btree (urlhash varchar_pattern_ops);
 9   DROP INDEX public.comment_comment_urlhash_1f2a37f4_like;
       public         postgres    false    218            �           1259    18192     comment_comment_user_id_6078e57b    INDEX     _   CREATE INDEX comment_comment_user_id_6078e57b ON public.comment_comment USING btree (user_id);
 4   DROP INDEX public.comment_comment_user_id_6078e57b;
       public         postgres    false    218            �           1259    18193 "   comment_flag_moderator_id_e2ccaf81    INDEX     c   CREATE INDEX comment_flag_moderator_id_e2ccaf81 ON public.comment_flag USING btree (moderator_id);
 6   DROP INDEX public.comment_flag_moderator_id_e2ccaf81;
       public         postgres    false    220            �           1259    18194 %   comment_flaginstance_flag_id_5f0100d0    INDEX     i   CREATE INDEX comment_flaginstance_flag_id_5f0100d0 ON public.comment_flaginstance USING btree (flag_id);
 9   DROP INDEX public.comment_flaginstance_flag_id_5f0100d0;
       public         postgres    false    222            �           1259    18195 %   comment_flaginstance_user_id_9aa1aa0c    INDEX     i   CREATE INDEX comment_flaginstance_user_id_9aa1aa0c ON public.comment_flaginstance USING btree (user_id);
 9   DROP INDEX public.comment_flaginstance_user_id_9aa1aa0c;
       public         postgres    false    222            �           1259    18196 -   comment_reactioninstance_reaction_id_68fbb2eb    INDEX     y   CREATE INDEX comment_reactioninstance_reaction_id_68fbb2eb ON public.comment_reactioninstance USING btree (reaction_id);
 A   DROP INDEX public.comment_reactioninstance_reaction_id_68fbb2eb;
       public         postgres    false    226            �           1259    18197 )   comment_reactioninstance_user_id_f813deaf    INDEX     q   CREATE INDEX comment_reactioninstance_user_id_f813deaf ON public.comment_reactioninstance USING btree (user_id);
 =   DROP INDEX public.comment_reactioninstance_user_id_f813deaf;
       public         postgres    false    226            �           1259    18198 )   courses_categories_updated_by_id_529b7334    INDEX     q   CREATE INDEX courses_categories_updated_by_id_529b7334 ON public.courses_categories USING btree (updated_by_id);
 =   DROP INDEX public.courses_categories_updated_by_id_529b7334;
       public         postgres    false    228            �           1259    18199 '   courses_chapter_course_name_id_a36adb31    INDEX     m   CREATE INDEX courses_chapter_course_name_id_a36adb31 ON public.courses_chapter USING btree (course_name_id);
 ;   DROP INDEX public.courses_chapter_course_name_id_a36adb31;
       public         postgres    false    230            �           1259    18200 &   courses_chapter_updated_by_id_984264c4    INDEX     k   CREATE INDEX courses_chapter_updated_by_id_984264c4 ON public.courses_chapter USING btree (updated_by_id);
 :   DROP INDEX public.courses_chapter_updated_by_id_984264c4;
       public         postgres    false    230            �           1259    18201 5   courses_course_enroll_details_course_name_id_235af4de    INDEX     �   CREATE INDEX courses_course_enroll_details_course_name_id_235af4de ON public.courses_course_enroll_details USING btree (course_name_id);
 I   DROP INDEX public.courses_course_enroll_details_course_name_id_235af4de;
       public         postgres    false    232            �           1259    18202 6   courses_course_enroll_details_student_name_id_b242c3d7    INDEX     �   CREATE INDEX courses_course_enroll_details_student_name_id_b242c3d7 ON public.courses_course_enroll_details USING btree (student_name_id);
 J   DROP INDEX public.courses_course_enroll_details_student_name_id_b242c3d7;
       public         postgres    false    232            �           1259    18203 $   courses_courses_category_id_ec629b46    INDEX     g   CREATE INDEX courses_courses_category_id_ec629b46 ON public.courses_courses USING btree (category_id);
 8   DROP INDEX public.courses_courses_category_id_ec629b46;
       public         postgres    false    234            �           1259    18204 &   courses_courses_instructor_id_83effc0d    INDEX     k   CREATE INDEX courses_courses_instructor_id_83effc0d ON public.courses_courses USING btree (instructor_id);
 :   DROP INDEX public.courses_courses_instructor_id_83effc0d;
       public         postgres    false    234            �           1259    18205 )   courses_courses_language_name_id_5b2b5139    INDEX     q   CREATE INDEX courses_courses_language_name_id_5b2b5139 ON public.courses_courses USING btree (language_name_id);
 =   DROP INDEX public.courses_courses_language_name_id_5b2b5139;
       public         postgres    false    234            �           1259    18206 &   courses_courses_updated_by_id_f367588e    INDEX     k   CREATE INDEX courses_courses_updated_by_id_f367588e ON public.courses_courses USING btree (updated_by_id);
 :   DROP INDEX public.courses_courses_updated_by_id_f367588e;
       public         postgres    false    234            �           1259    18207 %   courses_ebooks_updated_by_id_8e8b347d    INDEX     i   CREATE INDEX courses_ebooks_updated_by_id_8e8b347d ON public.courses_ebooks USING btree (updated_by_id);
 9   DROP INDEX public.courses_ebooks_updated_by_id_8e8b347d;
       public         postgres    false    236            �           1259    18208 '   courses_enotes_chapter_name_id_a29981cf    INDEX     m   CREATE INDEX courses_enotes_chapter_name_id_a29981cf ON public.courses_enotes USING btree (chapter_name_id);
 ;   DROP INDEX public.courses_enotes_chapter_name_id_a29981cf;
       public         postgres    false    238                        1259    18209 &   courses_enotes_course_name_id_d59ee143    INDEX     k   CREATE INDEX courses_enotes_course_name_id_d59ee143 ON public.courses_enotes USING btree (course_name_id);
 :   DROP INDEX public.courses_enotes_course_name_id_d59ee143;
       public         postgres    false    238                       1259    18210 %   courses_enotes_updated_by_id_ce42de5d    INDEX     i   CREATE INDEX courses_enotes_updated_by_id_ce42de5d ON public.courses_enotes USING btree (updated_by_id);
 9   DROP INDEX public.courses_enotes_updated_by_id_ce42de5d;
       public         postgres    false    238                       1259    18211 $   courses_faq_chapter_name_id_34e65b46    INDEX     g   CREATE INDEX courses_faq_chapter_name_id_34e65b46 ON public.courses_faq USING btree (chapter_name_id);
 8   DROP INDEX public.courses_faq_chapter_name_id_34e65b46;
       public         postgres    false    240                       1259    18212 #   courses_faq_course_name_id_faa4d068    INDEX     e   CREATE INDEX courses_faq_course_name_id_faa4d068 ON public.courses_faq USING btree (course_name_id);
 7   DROP INDEX public.courses_faq_course_name_id_faa4d068;
       public         postgres    false    240                       1259    18213 "   courses_faq_updated_by_id_5b1985a3    INDEX     c   CREATE INDEX courses_faq_updated_by_id_5b1985a3 ON public.courses_faq USING btree (updated_by_id);
 6   DROP INDEX public.courses_faq_updated_by_id_5b1985a3;
       public         postgres    false    240                       1259    18214 )   courses_instructor_updated_by_id_5b968f3f    INDEX     q   CREATE INDEX courses_instructor_updated_by_id_5b968f3f ON public.courses_instructor USING btree (updated_by_id);
 =   DROP INDEX public.courses_instructor_updated_by_id_5b968f3f;
       public         postgres    false    242                       1259    18215 (   courses_language_name_name_bacda5e8_like    INDEX     ~   CREATE INDEX courses_language_name_name_bacda5e8_like ON public.courses_language_name USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.courses_language_name_name_bacda5e8_like;
       public         postgres    false    244                       1259    18216 ,   courses_language_name_updated_by_id_e84b65d1    INDEX     w   CREATE INDEX courses_language_name_updated_by_id_e84b65d1 ON public.courses_language_name USING btree (updated_by_id);
 @   DROP INDEX public.courses_language_name_updated_by_id_e84b65d1;
       public         postgres    false    244                       1259    18217 -   courses_questionbank_chapter_name_id_342c2842    INDEX     y   CREATE INDEX courses_questionbank_chapter_name_id_342c2842 ON public.courses_questionbank USING btree (chapter_name_id);
 A   DROP INDEX public.courses_questionbank_chapter_name_id_342c2842;
       public         postgres    false    246                       1259    18218 ,   courses_questionbank_course_name_id_d9b2ac73    INDEX     w   CREATE INDEX courses_questionbank_course_name_id_d9b2ac73 ON public.courses_questionbank USING btree (course_name_id);
 @   DROP INDEX public.courses_questionbank_course_name_id_d9b2ac73;
       public         postgres    false    246                       1259    18219 +   courses_questionbank_updated_by_id_38b9ea15    INDEX     u   CREATE INDEX courses_questionbank_updated_by_id_38b9ea15 ON public.courses_questionbank USING btree (updated_by_id);
 ?   DROP INDEX public.courses_questionbank_updated_by_id_38b9ea15;
       public         postgres    false    246                       1259    18220 "   courses_topics_chapter_id_e34c6646    INDEX     c   CREATE INDEX courses_topics_chapter_id_e34c6646 ON public.courses_topics USING btree (chapter_id);
 6   DROP INDEX public.courses_topics_chapter_id_e34c6646;
       public         postgres    false    248                       1259    18221 %   courses_topics_updated_by_id_a58dcad0    INDEX     i   CREATE INDEX courses_topics_updated_by_id_a58dcad0 ON public.courses_topics USING btree (updated_by_id);
 9   DROP INDEX public.courses_topics_updated_by_id_a58dcad0;
       public         postgres    false    248                       1259    18222 .   discussion_discussion_chapter_name_id_e6fb5976    INDEX     {   CREATE INDEX discussion_discussion_chapter_name_id_e6fb5976 ON public.discussion_discussion USING btree (chapter_name_id);
 B   DROP INDEX public.discussion_discussion_chapter_name_id_e6fb5976;
       public         postgres    false    250                       1259    18223 -   discussion_discussion_course_name_id_06478de2    INDEX     y   CREATE INDEX discussion_discussion_course_name_id_06478de2 ON public.discussion_discussion USING btree (course_name_id);
 A   DROP INDEX public.discussion_discussion_course_name_id_06478de2;
       public         postgres    false    250                       1259    18224 .   discussion_discussion_student_name_id_fc02c427    INDEX     {   CREATE INDEX discussion_discussion_student_name_id_fc02c427 ON public.discussion_discussion USING btree (student_name_id);
 B   DROP INDEX public.discussion_discussion_student_name_id_fc02c427;
       public         postgres    false    250                        1259    18225 6   discussion_discussionreply_discussion_name_id_50d3048d    INDEX     �   CREATE INDEX discussion_discussionreply_discussion_name_id_50d3048d ON public.discussion_discussionreply USING btree (discussion_name_id);
 J   DROP INDEX public.discussion_discussionreply_discussion_name_id_50d3048d;
       public         postgres    false    252            #           1259    18226 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    254            &           1259    18227 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    254            -           1259    18228 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    260            0           1259    18229 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    260            1           1259    18230 -   reviews_reviews_class_course_name_id_a8fcbfab    INDEX     y   CREATE INDEX reviews_reviews_class_course_name_id_a8fcbfab ON public.reviews_reviews_class USING btree (course_name_id);
 A   DROP INDEX public.reviews_reviews_class_course_name_id_a8fcbfab;
       public         postgres    false    261            4           1259    18231 *   reviews_reviews_class_username_id_d1e0e6e3    INDEX     s   CREATE INDEX reviews_reviews_class_username_id_d1e0e6e3 ON public.reviews_reviews_class USING btree (username_id);
 >   DROP INDEX public.reviews_reviews_class_username_id_d1e0e6e3;
       public         postgres    false    261            ;           1259    18549    taggit_tag_name_58eb2ed9_like    INDEX     h   CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_name_58eb2ed9_like;
       public         postgres    false    268            @           1259    18550    taggit_tag_slug_6be58b2c_like    INDEX     h   CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_slug_6be58b2c_like;
       public         postgres    false    268            C           1259    18562 *   taggit_taggeditem_content_type_id_9957a03c    INDEX     s   CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
       public         postgres    false    270            F           1259    18564 8   taggit_taggeditem_content_type_id_object_id_196cc965_idx    INDEX     �   CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
       public         postgres    false    270    270            G           1259    18561 $   taggit_taggeditem_object_id_e2d7d1df    INDEX     g   CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);
 8   DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
       public         postgres    false    270            J           1259    18563 !   taggit_taggeditem_tag_id_f4f5b767    INDEX     a   CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);
 5   DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
       public         postgres    false    270            K           2606    18232 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    198    200    2984            L           2606    18237 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    198    196    2973            M           2606    18242 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    200    256    3114            N           2606    18247 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    196    2973            O           2606    18252 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    203    202    2986            P           2606    18257 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    206    200    2984            Q           2606    18262 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    202    2986    206            R           2606    18267 A   blog_blog blog_blog_category_id_c34d5f94_fk_blog_blog_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_category_id_c34d5f94_fk_blog_blog_category_id FOREIGN KEY (category_id) REFERENCES public.blog_blog_category(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.blog_blog DROP CONSTRAINT blog_blog_category_id_c34d5f94_fk_blog_blog_category_id;
       public       postgres    false    3007    209    208            T           2606    18272 L   blog_blog_category blog_blog_category_updated_by_id_3c1cef0a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blog_category
    ADD CONSTRAINT blog_blog_category_updated_by_id_3c1cef0a_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.blog_blog_category DROP CONSTRAINT blog_blog_category_updated_by_id_3c1cef0a_fk_auth_user_id;
       public       postgres    false    209    202    2986            S           2606    18277 :   blog_blog blog_blog_updated_by_id_b5710575_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_updated_by_id_b5710575_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_blog DROP CONSTRAINT blog_blog_updated_by_id_b5710575_fk_auth_user_id;
       public       postgres    false    202    2986    208            U           2606    18282 B   blog_blogcomment blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id FOREIGN KEY (blog_id) REFERENCES public.blog_blog(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.blog_blogcomment DROP CONSTRAINT blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id;
       public       postgres    false    212    3004    208            V           2606    18287 L   blog_blogcomment blog_blogcomment_parent_id_df1e1d2a_fk_blog_blogcomment_sno    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_parent_id_df1e1d2a_fk_blog_blogcomment_sno FOREIGN KEY (parent_id) REFERENCES public.blog_blogcomment(sno) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.blog_blogcomment DROP CONSTRAINT blog_blogcomment_parent_id_df1e1d2a_fk_blog_blogcomment_sno;
       public       postgres    false    3012    212    212            W           2606    18292 B   blog_blogcomment blog_blogcomment_user_id_dc3b3111_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_user_id_dc3b3111_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.blog_blogcomment DROP CONSTRAINT blog_blogcomment_user_id_dc3b3111_fk_auth_user_id;
       public       postgres    false    212    2986    202            X           2606    18297 :   blog_comment blog_comment_name_id_dcfbce3b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_name_id_dcfbce3b_fk_auth_user_id FOREIGN KEY (name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_name_id_dcfbce3b_fk_auth_user_id;
       public       postgres    false    2986    202    214            Y           2606    18302 :   blog_comment blog_comment_post_id_580e96ef_fk_blog_blog_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_blog_id FOREIGN KEY (post_id) REFERENCES public.blog_blog(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_blog_id;
       public       postgres    false    3004    208    214            Z           2606    18307 A   blog_subcomment blog_sub_comment_name_id_0764a0fd_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_subcomment
    ADD CONSTRAINT blog_sub_comment_name_id_0764a0fd_fk_auth_user_id FOREIGN KEY (name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.blog_subcomment DROP CONSTRAINT blog_sub_comment_name_id_0764a0fd_fk_auth_user_id;
       public       postgres    false    2986    202    216            [           2606    18312 K   blog_subcomment blog_subcomment_main_comment_id_897167de_fk_blog_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_subcomment
    ADD CONSTRAINT blog_subcomment_main_comment_id_897167de_fk_blog_comment_id FOREIGN KEY (main_comment_id) REFERENCES public.blog_comment(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.blog_subcomment DROP CONSTRAINT blog_subcomment_main_comment_id_897167de_fk_blog_comment_id;
       public       postgres    false    3016    214    216            \           2606    18317 E   comment_comment comment_comment_content_type_id_fbfb9793_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_comment
    ADD CONSTRAINT comment_comment_content_type_id_fbfb9793_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.comment_comment DROP CONSTRAINT comment_comment_content_type_id_fbfb9793_fk_django_co;
       public       postgres    false    3114    218    256            ]           2606    18322 H   comment_comment comment_comment_parent_id_b612524c_fk_comment_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_comment
    ADD CONSTRAINT comment_comment_parent_id_b612524c_fk_comment_comment_id FOREIGN KEY (parent_id) REFERENCES public.comment_comment(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.comment_comment DROP CONSTRAINT comment_comment_parent_id_b612524c_fk_comment_comment_id;
       public       postgres    false    218    3025    218            ^           2606    18327 @   comment_comment comment_comment_user_id_6078e57b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_comment
    ADD CONSTRAINT comment_comment_user_id_6078e57b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.comment_comment DROP CONSTRAINT comment_comment_user_id_6078e57b_fk_auth_user_id;
       public       postgres    false    218    2986    202            _           2606    18332 C   comment_flag comment_flag_comment_id_41d5e873_fk_comment_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_flag
    ADD CONSTRAINT comment_flag_comment_id_41d5e873_fk_comment_comment_id FOREIGN KEY (comment_id) REFERENCES public.comment_comment(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.comment_flag DROP CONSTRAINT comment_flag_comment_id_41d5e873_fk_comment_comment_id;
       public       postgres    false    218    220    3025            `           2606    18337 ?   comment_flag comment_flag_moderator_id_e2ccaf81_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_flag
    ADD CONSTRAINT comment_flag_moderator_id_e2ccaf81_fk_auth_user_id FOREIGN KEY (moderator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.comment_flag DROP CONSTRAINT comment_flag_moderator_id_e2ccaf81_fk_auth_user_id;
       public       postgres    false    220    202    2986            a           2606    18342 M   comment_flaginstance comment_flaginstance_flag_id_5f0100d0_fk_comment_flag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_flaginstance
    ADD CONSTRAINT comment_flaginstance_flag_id_5f0100d0_fk_comment_flag_id FOREIGN KEY (flag_id) REFERENCES public.comment_flag(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.comment_flaginstance DROP CONSTRAINT comment_flaginstance_flag_id_5f0100d0_fk_comment_flag_id;
       public       postgres    false    222    220    3034            b           2606    18347 J   comment_flaginstance comment_flaginstance_user_id_9aa1aa0c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_flaginstance
    ADD CONSTRAINT comment_flaginstance_user_id_9aa1aa0c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.comment_flaginstance DROP CONSTRAINT comment_flaginstance_user_id_9aa1aa0c_fk_auth_user_id;
       public       postgres    false    222    202    2986            c           2606    18352 K   comment_reaction comment_reaction_comment_id_66a7fc70_fk_comment_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_reaction
    ADD CONSTRAINT comment_reaction_comment_id_66a7fc70_fk_comment_comment_id FOREIGN KEY (comment_id) REFERENCES public.comment_comment(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.comment_reaction DROP CONSTRAINT comment_reaction_comment_id_66a7fc70_fk_comment_comment_id;
       public       postgres    false    218    224    3025            d           2606    18357 O   comment_reactioninstance comment_reactioninst_reaction_id_68fbb2eb_fk_comment_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_reactioninstance
    ADD CONSTRAINT comment_reactioninst_reaction_id_68fbb2eb_fk_comment_r FOREIGN KEY (reaction_id) REFERENCES public.comment_reaction(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.comment_reactioninstance DROP CONSTRAINT comment_reactioninst_reaction_id_68fbb2eb_fk_comment_r;
       public       postgres    false    226    224    3044            e           2606    18362 R   comment_reactioninstance comment_reactioninstance_user_id_f813deaf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_reactioninstance
    ADD CONSTRAINT comment_reactioninstance_user_id_f813deaf_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.comment_reactioninstance DROP CONSTRAINT comment_reactioninstance_user_id_f813deaf_fk_auth_user_id;
       public       postgres    false    226    202    2986            f           2606    18367 L   courses_categories courses_categories_updated_by_id_529b7334_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_categories
    ADD CONSTRAINT courses_categories_updated_by_id_529b7334_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.courses_categories DROP CONSTRAINT courses_categories_updated_by_id_529b7334_fk_auth_user_id;
       public       postgres    false    228    202    2986            g           2606    18372 M   courses_chapter courses_chapter_course_name_id_a36adb31_fk_courses_courses_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_chapter
    ADD CONSTRAINT courses_chapter_course_name_id_a36adb31_fk_courses_courses_id FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.courses_chapter DROP CONSTRAINT courses_chapter_course_name_id_a36adb31_fk_courses_courses_id;
       public       postgres    false    230    234    3066            h           2606    18377 F   courses_chapter courses_chapter_updated_by_id_984264c4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_chapter
    ADD CONSTRAINT courses_chapter_updated_by_id_984264c4_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.courses_chapter DROP CONSTRAINT courses_chapter_updated_by_id_984264c4_fk_auth_user_id;
       public       postgres    false    230    202    2986            i           2606    18382 W   courses_course_enroll_details courses_course_enrol_course_name_id_235af4de_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_course_enroll_details
    ADD CONSTRAINT courses_course_enrol_course_name_id_235af4de_fk_courses_c FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.courses_course_enroll_details DROP CONSTRAINT courses_course_enrol_course_name_id_235af4de_fk_courses_c;
       public       postgres    false    232    234    3066            j           2606    18387 X   courses_course_enroll_details courses_course_enrol_student_name_id_b242c3d7_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_course_enroll_details
    ADD CONSTRAINT courses_course_enrol_student_name_id_b242c3d7_fk_auth_user FOREIGN KEY (student_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.courses_course_enroll_details DROP CONSTRAINT courses_course_enrol_student_name_id_b242c3d7_fk_auth_user;
       public       postgres    false    232    202    2986            k           2606    18392 M   courses_courses courses_courses_category_id_ec629b46_fk_courses_categories_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_courses
    ADD CONSTRAINT courses_courses_category_id_ec629b46_fk_courses_categories_id FOREIGN KEY (category_id) REFERENCES public.courses_categories(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.courses_courses DROP CONSTRAINT courses_courses_category_id_ec629b46_fk_courses_categories_id;
       public       postgres    false    234    228    3052            l           2606    18397 O   courses_courses courses_courses_instructor_id_83effc0d_fk_courses_instructor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_courses
    ADD CONSTRAINT courses_courses_instructor_id_83effc0d_fk_courses_instructor_id FOREIGN KEY (instructor_id) REFERENCES public.courses_instructor(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.courses_courses DROP CONSTRAINT courses_courses_instructor_id_83effc0d_fk_courses_instructor_id;
       public       postgres    false    234    242    3082            m           2606    18402 F   courses_courses courses_courses_language_name_id_5b2b5139_fk_courses_l    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_courses
    ADD CONSTRAINT courses_courses_language_name_id_5b2b5139_fk_courses_l FOREIGN KEY (language_name_id) REFERENCES public.courses_language_name(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.courses_courses DROP CONSTRAINT courses_courses_language_name_id_5b2b5139_fk_courses_l;
       public       postgres    false    234    244    3088            n           2606    18407 F   courses_courses courses_courses_updated_by_id_f367588e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_courses
    ADD CONSTRAINT courses_courses_updated_by_id_f367588e_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.courses_courses DROP CONSTRAINT courses_courses_updated_by_id_f367588e_fk_auth_user_id;
       public       postgres    false    234    202    2986            o           2606    18412 D   courses_ebooks courses_ebooks_updated_by_id_8e8b347d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_ebooks
    ADD CONSTRAINT courses_ebooks_updated_by_id_8e8b347d_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.courses_ebooks DROP CONSTRAINT courses_ebooks_updated_by_id_8e8b347d_fk_auth_user_id;
       public       postgres    false    236    202    2986            p           2606    18417 L   courses_enotes courses_enotes_chapter_name_id_a29981cf_fk_courses_chapter_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_enotes
    ADD CONSTRAINT courses_enotes_chapter_name_id_a29981cf_fk_courses_chapter_id FOREIGN KEY (chapter_name_id) REFERENCES public.courses_chapter(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.courses_enotes DROP CONSTRAINT courses_enotes_chapter_name_id_a29981cf_fk_courses_chapter_id;
       public       postgres    false    238    230    3056            q           2606    18422 K   courses_enotes courses_enotes_course_name_id_d59ee143_fk_courses_courses_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_enotes
    ADD CONSTRAINT courses_enotes_course_name_id_d59ee143_fk_courses_courses_id FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.courses_enotes DROP CONSTRAINT courses_enotes_course_name_id_d59ee143_fk_courses_courses_id;
       public       postgres    false    238    234    3066            r           2606    18427 D   courses_enotes courses_enotes_updated_by_id_ce42de5d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_enotes
    ADD CONSTRAINT courses_enotes_updated_by_id_ce42de5d_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.courses_enotes DROP CONSTRAINT courses_enotes_updated_by_id_ce42de5d_fk_auth_user_id;
       public       postgres    false    238    202    2986            s           2606    18432 F   courses_faq courses_faq_chapter_name_id_34e65b46_fk_courses_chapter_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_faq
    ADD CONSTRAINT courses_faq_chapter_name_id_34e65b46_fk_courses_chapter_id FOREIGN KEY (chapter_name_id) REFERENCES public.courses_chapter(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.courses_faq DROP CONSTRAINT courses_faq_chapter_name_id_34e65b46_fk_courses_chapter_id;
       public       postgres    false    240    230    3056            t           2606    18437 E   courses_faq courses_faq_course_name_id_faa4d068_fk_courses_courses_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_faq
    ADD CONSTRAINT courses_faq_course_name_id_faa4d068_fk_courses_courses_id FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.courses_faq DROP CONSTRAINT courses_faq_course_name_id_faa4d068_fk_courses_courses_id;
       public       postgres    false    240    234    3066            u           2606    18442 >   courses_faq courses_faq_updated_by_id_5b1985a3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_faq
    ADD CONSTRAINT courses_faq_updated_by_id_5b1985a3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.courses_faq DROP CONSTRAINT courses_faq_updated_by_id_5b1985a3_fk_auth_user_id;
       public       postgres    false    202    240    2986            v           2606    18447 L   courses_instructor courses_instructor_updated_by_id_5b968f3f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_instructor
    ADD CONSTRAINT courses_instructor_updated_by_id_5b968f3f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.courses_instructor DROP CONSTRAINT courses_instructor_updated_by_id_5b968f3f_fk_auth_user_id;
       public       postgres    false    242    202    2986            w           2606    18452 R   courses_language_name courses_language_name_updated_by_id_e84b65d1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_language_name
    ADD CONSTRAINT courses_language_name_updated_by_id_e84b65d1_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.courses_language_name DROP CONSTRAINT courses_language_name_updated_by_id_e84b65d1_fk_auth_user_id;
       public       postgres    false    244    202    2986            x           2606    18457 O   courses_questionbank courses_questionbank_chapter_name_id_342c2842_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_questionbank
    ADD CONSTRAINT courses_questionbank_chapter_name_id_342c2842_fk_courses_c FOREIGN KEY (chapter_name_id) REFERENCES public.courses_chapter(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.courses_questionbank DROP CONSTRAINT courses_questionbank_chapter_name_id_342c2842_fk_courses_c;
       public       postgres    false    246    230    3056            y           2606    18462 N   courses_questionbank courses_questionbank_course_name_id_d9b2ac73_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_questionbank
    ADD CONSTRAINT courses_questionbank_course_name_id_d9b2ac73_fk_courses_c FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.courses_questionbank DROP CONSTRAINT courses_questionbank_course_name_id_d9b2ac73_fk_courses_c;
       public       postgres    false    246    234    3066            z           2606    18467 P   courses_questionbank courses_questionbank_updated_by_id_38b9ea15_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_questionbank
    ADD CONSTRAINT courses_questionbank_updated_by_id_38b9ea15_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.courses_questionbank DROP CONSTRAINT courses_questionbank_updated_by_id_38b9ea15_fk_auth_user_id;
       public       postgres    false    246    202    2986            {           2606    18472 G   courses_topics courses_topics_chapter_id_e34c6646_fk_courses_chapter_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_topics
    ADD CONSTRAINT courses_topics_chapter_id_e34c6646_fk_courses_chapter_id FOREIGN KEY (chapter_id) REFERENCES public.courses_chapter(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.courses_topics DROP CONSTRAINT courses_topics_chapter_id_e34c6646_fk_courses_chapter_id;
       public       postgres    false    248    230    3056            |           2606    18477 D   courses_topics courses_topics_updated_by_id_a58dcad0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_topics
    ADD CONSTRAINT courses_topics_updated_by_id_a58dcad0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.courses_topics DROP CONSTRAINT courses_topics_updated_by_id_a58dcad0_fk_auth_user_id;
       public       postgres    false    248    202    2986            }           2606    18482 P   discussion_discussion discussion_discussio_chapter_name_id_e6fb5976_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.discussion_discussion
    ADD CONSTRAINT discussion_discussio_chapter_name_id_e6fb5976_fk_courses_c FOREIGN KEY (chapter_name_id) REFERENCES public.courses_chapter(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.discussion_discussion DROP CONSTRAINT discussion_discussio_chapter_name_id_e6fb5976_fk_courses_c;
       public       postgres    false    250    230    3056            ~           2606    18487 O   discussion_discussion discussion_discussio_course_name_id_06478de2_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.discussion_discussion
    ADD CONSTRAINT discussion_discussio_course_name_id_06478de2_fk_courses_c FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.discussion_discussion DROP CONSTRAINT discussion_discussio_course_name_id_06478de2_fk_courses_c;
       public       postgres    false    250    234    3066            �           2606    18492 X   discussion_discussionreply discussion_discussio_discussion_name_id_50d3048d_fk_discussio    FK CONSTRAINT     �   ALTER TABLE ONLY public.discussion_discussionreply
    ADD CONSTRAINT discussion_discussio_discussion_name_id_50d3048d_fk_discussio FOREIGN KEY (discussion_name_id) REFERENCES public.discussion_discussion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.discussion_discussionreply DROP CONSTRAINT discussion_discussio_discussion_name_id_50d3048d_fk_discussio;
       public       postgres    false    252    250    3102                       2606    18497 T   discussion_discussion discussion_discussion_student_name_id_fc02c427_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.discussion_discussion
    ADD CONSTRAINT discussion_discussion_student_name_id_fc02c427_fk_auth_user_id FOREIGN KEY (student_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.discussion_discussion DROP CONSTRAINT discussion_discussion_student_name_id_fc02c427_fk_auth_user_id;
       public       postgres    false    250    202    2986            �           2606    18502 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    256    3114    254            �           2606    18507 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    254    202    2986            �           2606    18512 O   reviews_reviews_class reviews_reviews_clas_course_name_id_a8fcbfab_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews_reviews_class
    ADD CONSTRAINT reviews_reviews_clas_course_name_id_a8fcbfab_fk_courses_c FOREIGN KEY (course_name_id) REFERENCES public.courses_courses(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.reviews_reviews_class DROP CONSTRAINT reviews_reviews_clas_course_name_id_a8fcbfab_fk_courses_c;
       public       postgres    false    261    234    3066            �           2606    18517 P   reviews_reviews_class reviews_reviews_class_username_id_d1e0e6e3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews_reviews_class
    ADD CONSTRAINT reviews_reviews_class_username_id_d1e0e6e3_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.reviews_reviews_class DROP CONSTRAINT reviews_reviews_class_username_id_d1e0e6e3_fk_auth_user_id;
       public       postgres    false    261    202    2986            �           2606    18551 I   taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
       public       postgres    false    256    270    3114            �           2606    18556 D   taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
       public       postgres    false    3135    268    270            �           2606    18522 Z   user_accounts_user_profile user_accounts_user_profile_username_id_10d396ba_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_accounts_user_profile
    ADD CONSTRAINT user_accounts_user_profile_username_id_10d396ba_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_accounts_user_profile DROP CONSTRAINT user_accounts_user_profile_username_id_10d396ba_fk_auth_user_id;
       public       postgres    false    2986    265    202               <   x�3�t.-.��M-�2�.ILK�2�L���M�+�OL����2��s�SR�K�b���� W�           x��˱�0E��=�t��%��򏣵G(�����~r�
RJ�T��Ȩ�j.�iI�>�d >2_D|2�0H�%B)É��ēm9^�/V���/M��.��[?^�/K��O�����Q�U(��6�W7�W7�W7�W��{������o�o�o�o�K���iq�U8=*�^�|*�5��W�M��&Ux��pf���Y�kzg6��/]�w�}�ѻ�뭷��:���:��;���x��ƛ�����i��5x�Mޖo����;��m�Nb�'w��O��[�         �  x�u�]��8���)���y�1ڦ��q�����ۯ��T��f�/MW�����q~/���r}����]���>�ki*�����T�z�2ݧ�0$`��o���5��cz~�����E�ɀi�9 ɝb;�X2��^,�=*n�.����(�7�?��]��y�EH�=1Bv��
�M���NϢ�������i�n�Fߝ �y Z�7M�[��.���̛��޶��T4��#�쵑&C��W?�W�b3��]`��z�¿�z�te*�wa�gĠ�#{S�.�w���M��y�֢O1�
JH~�
�Z����U�����-�+�>�W�B������1�*_�`��j��t�������5�3��k����FX��!�1B$�ǲ�^����A�S� ��Q��{a�&��o�=_�myeX�e��P�3MC�#M5�"��w�II����5�����T�a݇ASC 2w'�@.27*Ԩxd�г���|�f��X�2��4�DA�9r�ő�ȩ�(�{��$e[��+��*i (��%� 'B�!�TL��v���<�}�(C�W���Bn���En�jUJ��n���\n����2�1-�Qr�iH	��P�*%�z��l�5�4���~?]�m��ݳ���L���ă/��1��._-���;�t)=���fzI��6rώ�7'��P4$.��"���e���4*��"�:)^R9����IE��_�R)w� �Bq� J�R��-��T~��*�	��t�G�$~�H�t�}�W�Yc?'���������8�.�����>fz�`Ɠ%�@3	�D�
c&��o׏!]?����c8X?���c8X?��x����ҵ��z�����&k�P���M�ޡ������;�č��Z�Y�P�~<���<�צ�<�L9&�O��|W�6E�f8�VJ�>Ysл�=��|�Z�������.�����n�����#d����>ʆ3��U�$�;�9Y�V��Qf�a�a~D���U<_�,9Ett����B=z-*�� D��Т
��ĿG�N���m����R��!�^*R�e��d7��F� �"Fm�!����8EІN��	ILq�r�*x7���!����R�ϽX%��n߇����eA�i�ye,ia۴�5��Y]Z�Z��Y=���c%�$r���|-l%��1S�<���qI�F%�aI�E%�(
�'�ZLbz��4��F�$ڃ$Z�$��8�����r��J��p�F4遂���h�O@jz+3���a��Sa���NUYa�]i��o m�c���(��)�$��>�:
]}��&!�<����2¯�Q�c ����(�]�"~�#(oJS�A��*M��A�+ަ��N���Ќ�K�A���������n��s)��㨀�pE�>�S�N�æ0�����\>o�	v�4��!��*^o~��M��WI��W$e��U��2��/c�����W         �  x�}�[o�@�g�)|�)΍a�d�U�ݪUk6٠�(�E�O�C5�l��2C'�9�H��K��?�g#�J�qI�˚�Ȋ�|"�a�u6A:;6�q�����hg�O:�4:��`>m?%*�QC �� ��)LC@��c~@ͭA^�նA�{��3������m ���x��[ i@�)QLE�;D�Cg���;���ש�_�J_O��Ѝ"	&}����m��it��c�m
�RS��ʸr7�m �@�N�
�v[|��e�sB/b��x��h��N��I	���I4��p��L
��q�ml�"Iw�S��q`8���:d��jH���]�'J6�9߇�^�?�ސT"�(D(|��[�QS!�8�����F'2!Γ^�e�&���	�3C�Q��g�|����r��f.#�/r;��xT��k��)q�T�^:et�d��Tj?/�5��}w���"^�g�u��:]'KZ/>f���3��
X�D�\XF�Cx��ȭH�{����A���f��հ���T�{����J��i���|V�w�}���i��E�h5fͮ*�?XdQ/8�O��z뀋8j��*e���~)�^-��d�v�Aur�X�]bqKkM��a��bi���d���U]���Z�x�{������0~A�_Ź�??i����� ���
���ĩ��]��'r�N&��Ԫ���廻���dV6            x������ � �            x������ � �            x��[s�F����8_�Z�#)�JG�zKr�X��8�����Ujɱ ��~�{�{%:��e+���`���~�3z����6�|f��U�t������U�����}kӚ��:[�6���2{����ivv�C�ك�����mv�2me<o^|��v4]��B�^a��f��7|��Y��*�\�5:3?^ԅ3��[����Z�=�ֻ��Ίʅ��3���2dte�v��N6��73���=�X�Ȃ���)3��Z<���^���T�w�|��͋����׋lm0[�������.ǜ���ua�ek��t�W�\��#k_����v�$�n#r-�-���M��j~]�c7ִ�,.;/e���=�J{�����k�J:nZ�*�D��jn6��#�J�c�Ƈ.�+��2yk���Egwm��|:�q�"���"+\��d�,Oǲ���^A
:F�����uv�`�G�a�������v���z��U�n�J��e� �3��Ý�,�Mi�����v���^=�T-Xb�/�xn�Uk}��&�F��.F���a���n���������C�b:<�"]i��Ǵ
�4yت�ʇ/��{N��4:9~�D�:u���/WT�ߞ쏻�٦�^�`X���#��MØ9"GTl��[�T[a;�J[���y~��Gӽ���k1E�������4n�E�b���v��\Ѐ�#���f��z�wk;G��_�&�I%ɽ����b/0~͈�l�T����*�}�������!i�8j�}ckbG����n��Ȃ�3����0֎x�s5�='f���t�M�,�h��&����K�yQ$��j�]�PxV҆���.P���RxbG��<�#�MUod�A������y(��+��-!.|�5u���%s�u@�"�����?�eI�ɛ�(�v!3l�R�À���F+@�[8�^�N��}H#�����k���p��(��K��H��Ɠ9��l혧�V�K��C/��M��hJ�T?͠+�)r�EH~}c�Nǃ3 %������iG��f��#x����kf�;~��*�\�?�4W"��]��d�q�� p*�m��/�<4_�~�H<�o� �(ɋ&:�ۋK�+�t��������$����x�B���C��Z��y�/E�9AS��%V��!-��G�b(פD0Zi�o����9�uk��z�^��.lck�����1�.�4ݫϬ`b[G�aaz �`�5<�I��Їh+����������DZ�!�˄��WvcmC5�Ib�&��@�\���	��<��	��A���)�B��1����թD��1��m�S[0�d/}��4Qȝ�sU"��w��&�v��΄�x�L3�u��d��"�)'ÇnG�ڔ�����P�4�.�Ѥ���r8( &RAb}��p�ש�z��5K��̹n>3����_�@��}Dm�۹C�����RXJX �Y��L �CCU_v����+�`�n� ��`0��=�S�a�������*;R��؄Opu���-�H��2��"��V��̎�s�.�Bȱ�I����!�X10	��$�Fh�9��Y��tp����"��(��%n�<|F�D�2I�wtZB��OJkqs�,���!�E1.�4	ם
U1���K��b��LR�n�	�eUT�$�!��D���b���B��K+�&>�[�\$��=b:��D���Аْ��a�U	����**S:��S*�(w�D5b��B,b�-��F$� h� :���N-�@f���)iO���h�:"c��>���t��un�ɦ��ש��,q\A��s�o��]DM�dԈL�2��ʊ��7[�=1P�1�
���m�#�s��[�"�b[�����/�F�ː��~#��_���i-z�Ȧ�E�1I��Yv��Ej|qS:!̈́���!'w�
�h����XN3K���s����D#ŧ��}8�Zh ^d��}5������P��X����h�
�n��{�����5F�A�:;+L�(���E�b��Ԧ�GK�9hSF�|(}��s�G+�c49|����:X���ѲTkZ��|�c��ւ��[��Iv�+�[l��5�Phׂ ��%��;�h4�hJ�J=!0�v��R��A�Ҁ��{(����8	�\�=�]ء@�p��V�X��Kva�������#�f�����ϒ_ą��gʵ�� 5`�>��t7��4��BG��yŷ�?�ze���G�����]��Ʌ����Z�M�.�U�k��$�S'H)���Z��!ȸ�,{���7���d� S�%���|e���J�Yg��M��OH
���_�d Z�����K��%���T͗`����}�/sp�/A��1p腃���5�Rwq�l@p[�����N�\3�����SQIվBw�$�-㺋���H.b����߃�(��w��t?�|W+uVlB������ +Fa%d�fG�[���]�9U��E�(T!���[	��B�iBբ��N�=^	�\	���t@gI.w��cS�a�:ˑ�A(?��|�R��q)��o����,�C��1�fn�+RLC����>}�4��(e�W��Ƹ��`ɆL�1d��S������)�e�2����S�9��0d��*���jD�$SÚ�*EH�b�	�vA���
7�;$H[Z1����?��@ �3�7)��D�lz�HmrhT_���!�$���jB�P'R���(h�E��-׺ G>��o��ow�d+�W��v�]2��� ��#e�41uX��GX�(���<O�f�^�O�~�\ػ�D97�{��A*"QM#'�EO�-'�3TK]&��~�Zbۺ.�)�d N+�G+ч�KQ�`�Y��� ���/��Ї�
��L�؜��IW&B+3��Ɣ�[{�Iw#�i8��,�2[p���"m>.1�޼O�j��]�5Ȅ�.,+�ML�9�I�m,y���~���}V��ښ�!e�a���J:*I8s3T�x��V)|�ч�H=�����x����a��w�de�~$!Xn�F�1�%���y�-G璭�A]��%�� ����h�Њ�x6��Ò�`n��R�Y�Q� �,�U��K�g��{�6ח��ޞb��v�������˞��>x?�W:Ev��
�;�xv���A_�Vz����ȱRdQ�� ⯼�L�{{&���\Lc&���S�O[)L,��X;��W�,�M[�?x|�,KQ�S�"ܭ���Y��X��L!-��|v����6�������AI�m��P���L�%s��R9��s5��Ќ�z�xp�o�Dᣐ��k�}�ϰ�f����˖�>��XU������|Àz��7�v_��l��-�?����iy��_?�=zzXm�q�)���t�c7��i֏�dv�V�#A�F��)�Wߎ$��g������ Gj��Zl{uZJ!�'=t����
�ի4��7�Kw��P�P���쫤a�x���N��-����[^���P�
����/�h����=�s���!�����Q��
0=~��d��#uȁ���)���]Q�B���Q���𠏶�����E��3�߿��X��?iK�����p'���������������ӓ�O�>�}vr����8:�����N�rg)(%�N㙵Lb�n��_����r{s���,�}h�>}���c�	������XF?xٷPV{�����vq��x��ťI�����O�x���A�߷�C��?=����fo_}��=�f�]T�:�FE�W���~f���t�B`C�-��"y�z�р��e�ux��� ��=q�\��8�ד���3��j,�hsB�֦-������sL�E_}���aeI�W�cS�/;x�X���\�q�WE��I�!J�\���c"jX�t��zl�~(h�b'��7ncH�TCٶ�z����3�r�7)�V���m��?	�m�L*)���M�,���/{�O�H�>(�΀T5�Vi�d�m��ԾB�3�5H����X׷�l���G�v-��	��֯�{��4�x.�������%; �  ��������o@D��|�y����`�׮�p���賃8r�g��t��?8�w��[��.��
/M�`Ě������vnZ�X��\	���#B	�?6<#��RP��`��>V7 ��n�'/Y!�Xi@.{'�R�",�I������n��~*�W��;����E�F|ӔN[�| ����p��ӣ��&W�W�!:�;���,���tx���QGb�gB6M7�tgp).)���3C����KW�l<�,9�(f	*��<���_���ցO�;\�j��� Vb��,�+���SF<���j��dӶ��(wZ޸�ٰVqԓX�K�y� ��!稥ܜ�kU�>(��n��c��,��SJlf�Հ)s�P2D:4-�/"��;y\#���I��T�3y��]��F�#��D������ę-�m��C�Gm�|+���K�SB�J%g�r��cj��̠a�UDG�f[� m�H1�^�����r��-��������K���f�E��V����
JS5���'AF"��Ӿ۽��c-�R>�q��d'D���ZǤ3��#,L�Rڈ�%�;U��[m1�\;NK��]�]�+���P�o���D6�Q��"�gɚ��*���j�Gd���!��8��(w" ��de����L����R���Z�'���W��>�����xv����ӧe[���mM���u�ﲮ���'w�����_����o��x��z���у�����+͔p���Vpm�`�������L�v󌎧K�ѝ��J3l��F��G��|�=�vn���e}�s;(�hW�Vo\�K�[�_Z�Nna�r�������j��tO�B�J�.zd�M���Q17��k?�cL�y��8N��YҌ8�ϳ���$4��<��H��>���1���ON��L���������?��^�~.c��#�t�ª��:�Y\�^a{�(���~�ވ�{�\���0X�`�b�1a�TZ��xe�Å��^'S+N���jl6��!����B)KI����i��J鎍��A�Jl v�?��W���Z�� cxn=>Sޱ�9��E��9Ax�7�����I �ny.�w	\c���U�e؄�#�L{+�y�(�k%I�mp	G_� hy���q��[���F��|2r�m�������l��׼���\�2��oE�!���f�v��K�@I�a���E��D�b_3A��].ޞS'��ܝH�K���b�����%�Of�+!�ù�cx
{��F<�x�:����5w�з�~7:��K��6�+���D�� �i��dߧ�6)W�tkX<6��U�Qak�[lb�@���(
���TK�5>�)~��ճk�4R���,��iy���J�l۫*o_�d}�D���X��m�5�c!(�:��7ۤ�tG���0��"���hj������5�q��+��'í���K�Y�;�H+v���*�R�L94u_�p��-�5��u�4����t9o�L�B��GA��>k����O`5���Ҳ��4��<b$��d��O�j���&�7�F�I�\Rg{�7�4�B����$���2��X�'- �X��$�����"�&#~�T���nI��a���	�'�V }���%�� �@܌,���A%~��/�����������q$J;�0dYߞf�~$�����T��d�7�qx�Q9%OX�
?͎?k~e���1�٨)����R�כ�Ust��!�1��?���>��O��Ab�            x�3�Ȩ,�L.�4����� +            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      !   �   x�E�?�0���)29�����"(Q'���0^J.��M���������Q�ھ�OZ¡a�z�σ�������Ʀ���\����A=����Y���Q(N��=ӧI����P��0�P��m�
lb*�m��~̕R?�4+      #   �   x���Mk�0��ʯб��9��vn��Sw�EsD#H�a���oܖ����������a�R���&���UG1��k�-9�q�GP�z��)���$נF��5���R^2�4�R�g�|�?QC�%T���u���{�����|�o��7g����Xܵ���pᣕ��.�x�o�\�6������b����O�ꃝq��bV�;����>��8�0�_      %   �   x�eѻq�0E�X�B�g9x�@���6���$Z�ϼ�AӋ�E~�J�4;�y|����a�������&sI~�,�N�vIYR�H.��uB(�%uI��8a�һ����/i���f�XA)z�s�L7͓�H�plI<i���"�.ʋ��Y��O�J�E17֝2�X;kXn�Z���f��}tR�(pBK���Q�:�/��x<�qgJ�WG�ꭵ�Gk�      '     x��\ms�6���
�7ӤSIֻ-9���8Mzq�Znr��$AH0 hE����z��$��>�e2�$$���j�Ts��-L,Sr�d�h��4����)S�"7Rq*j�̕f�&Γ�r��ٛ��,�uZ�V���h�H{o���{�N������ժ���Zh��#2�ﾾ��3.���Kb�R{�+���;��B捈��KÍ`d�h��O~lh�:"�TS8u@B���F����sƣ�`I��*hڈ�������R�ȿ:�n��7�4�b1"�ғF��S�"�HΟ��+&���>��#�O�h��f��P�fl�JX"�x���-g�"����H�<�L���>�<�����{�-=NQ�>���~O��b�.�a���.נK,3"�L�6�5�������j2�:�
?��[�;Ϥ��i���԰�Gg�g��9c�+;W4<>�.ZCY�*��>�q]!��]An�j�c`���vҧ��V�*��#�Q��9L<"�N�����t=�.Io�P�s����A� <-���]|���]����M=�T�x��j��� ԏ�J��`x@4bb�U9IfҺpՌ�����0�%Y��s��8��13��܏���_��:�Ա����T�9W,�u��ҝ��v����j�p�>��������u�y�}��	﹑I����<�/Tl\�	��ڥ�Nv�uO{/7�M�q�}V�mcp��hiH������gZ��-��K���*SW�S?��K��~ *�b��}��[#m=�4���c>��!����8�C�G�(���Z&�b��&W�\�I}7�p�p�ABMLf�� ��w��g�ݏ$�g�w��|pm�-�-XdL�4O<���\E���O��0ƍ(�	��A���rOg�on�r��W�S��ڵ�����r�b
���~S����[x�nw��5{�A�������^-��-����t������b��b;����`;��q�����0b��Z:�Js���c�q:A���4&4���,�L��n?F?�Q�[�T����b9G�
��W�o��p�h-LS��J�;�#rl��d��9̎֎ڻk?%��H{�Q
�ךFCg0�W45�#�R!L��!f�g%@o��㌲B����ɭ���-��2��� e֥q!���B� �U���b��g���S�T�҃B$�"�Q���6�zA�t���;IVŠ�gX�z��\b�KWdK��k��{�Vk�1���5S�l�9g1�:���<��뽵��W.����L�?�G���2n|�	w����r�d��cway���xJVϛ����0�a��hJ"8�h6��v�U�����J�w��~F��I���4����o���lÅ0Z�t>�C��Yga��l��SC��l{Щإ��G�eN�Ӕ��vܜ��,^h�q����ˤ�aK�a�������oߚ(��*.g�zWI2����2�4�d�es#S ^��t�`~YH�0��\A�� �!Εr��q���4�\K$r#yR_�/Vd��$�/n���F����%#���q�4�TD�f5y��g�s�����)7�������l���p-�& ۚ64~~��ɕ�I����g�|̘2(��g�����Zm��TkɝF���t�'�r�l���Ü�LA^PP�y�*ڱ?W\���P"^P����������֕�ܴ�k�M��
̕��0E _��XJ���- ᚸ.�*�$X�\���궯���$[3̠��Z4�G2�h�噜v7(6+��J�Z	K45�������l|�����~�k�B�];
���v$W�E.�t�[�<[;w#�n�L�PW[)��Q{�����.Z����������R�j�V�j��#��"`���A�@~����7U@X	}��;	��(���54*���	��ϕp9��.��1��s-�Z�)�>�L7+�VB�)p�6� `�������S����8���D���@�9:��8P3OP.D�a���%���"�ܠ�� ���|Z�|f\��ϭ�~WGgsY[�ʊWB��`��w���)���
]v��1p�@*0��t�N@v��{<�ӄ)z�x;��Q�=\���2�&<I$���"p&p�b�iCV�B8!p�A�E�oI�Z$� Y��n7�E��Q�;"o~� ?�$g�G���r�������|���%�`�XR��f6C�3Ѡ6�{(DS�ݨ�.�y�c�D�����m<&���B�e|G�@e e�4�F�U��K<�d��H����8wm�-=���,1����C��&슥��͵�8(�v�v"�}�8�-��}>A���c�I�^�5A�"�׶��Q{���;��1����W13Q1�ѩXe֣a�I�3j&
�S����3\E}��w���\������|##I�R�-��$W!��n��i���u�Dj�_��Ԧm�O��:��8��A�B���wc:�) �B�_ſ̜V���`6��x�=yv����r�c߹8v�8c�S��i ~}l0�� ~�7�N��5�m���w�Sֶ�����}&cg�E6��N��V������gSt�'i�|���%;����yU&�8'y-7���fA��	DB����V˹a��t=����	Q߸cj�ڄ�Ȟ ��!w��Gf1�T	��4�8N��ä%J��v$�g�+�L��R1d\�8��Ɍ>���4k��d7C0��	�FD9j�Qdv7Y�߲�z�i�p����ݶ��n�w�)�z���(M����c��.A�K�m�myc�Q��vZ{�{�$(�1����	ʸS�Z��x�.�.ձ�e�z��kdV��׈ޥ���7�0�v��u�k ��Ix$��'L6�'y�怿�� �"�E�g�o���k⺺�M�Β6��m�R�1�a7�u���k�������8��'�?m>���(�h��ÔO^r&��[#�Q�<��ݟ�>[1^��ϕ�ss�z�I��s���V����hA^
9��O��������0��2?1��q#��³X��K��tz{���v$���~�x8�1:=o���E�}r�4N�e���{Wx[�%8����yv`74n����|>���C��Q-pT���8u��u�b#_gm\0u^1q��w��W�R!�;3rǾ�DH7�Ȁ�j�h%�]H� ��9n�"�b�QH��J�{@^&�L��(6��ǿ��'�!۸��_(�pi��q�m��vfS�c���Q]l9[^X�E7���2���={�N�9��[��'��GT1O�T1�#3��fvL���6{|�[�l�R��F��q����U^B%��c������]�J���])��Y�N#��.�bӍ.aZ���P
.+�Y	}O -�/����=	�p�;Q0w�m {	.�'�N^c��ܿN.�܀�ur�/��+���'��cU��cM�rۘʙ��,N�L�n������i\nmolm��ܯ�_��[{a�*^�c_�oSV?פ�:�Ž"L����ɓ�*C֍      )      x�3�����4�4����� ��      +      x������ � �      -      x������ � �      /   �  x�}Rm��0���
$(���N�vp�qҤ�m�$k�Ly���m���NTmj'��<���;2h#��[�R�MV:#�ѧ2:��%�WC��������[v8�� k�j��PK��lv>�Bv��Gq[�آx�R	�m�l��%�4~�6���l<�����6����)�,6p�90X��Df��5)�N|A+�K"������9��\�Ra��|
�h+XC$,ۨ��Tq]�h+3�ۥ�
�����6�ͯt�V4ݺ�חu���^ːwd+�k��B��8�p��=ڄ�j�x�b:: �*E��쎪��!����F�t�yp{"8-BT���`��tL����к��6����A	��T�b��u� G�Me�g����/�7W�5�?�>�|+�%�՞�+Ɛ�Nv��ͫ����25��5�l
-s(Hjky�9$uӫ��'C6v���x������<�m6��]      1   $   x�3�t�K��,��4�2��M��,(-�rb���� �q�      3      x������ � �      5   �  x�͖oo�:�_���{�I-��d�tEK������T��xK��v����i7zۂ�Օ�H�9���y�e�����c�kδ�'�WLpU� 5e\3��QHS��-i��0NV��[o@U!�d��5��X��6~-��_L�c=	T�dB���B���R誼q�	9e?v!+䧪��2���$�:�\�� ��D(���Pdu�o8��Ӭ�?�t[)��y��q���O<ByD���m9Nx=ɍDZh�cg1�]߳#ǫ�,Ƿ��V^�em)
]���B6����W�B�� ��2��_�����̖µ���$C����;<h�XΞ�[� B�HE��/�a)HZo9r�8dx�G�9�]st�����:�+v���VGhH�ٵ'R(�>�s�&�!M'����/kg+k�S����ﻰv�.�N�45^�b���B��f�,�����%%������U����Q�[Q�<����ٸ�}��=YǒA\҂���E���	��F>�z�Wq%oĐ��Li�A�JK����Zo9�q�>x�};�ek��ꝰ�ʔ�A:����W�\ok�*�fi�ca��Н�l�O.��{�>��I˯*�������@<�J�,MK@����f��a�ͩb=�+~��r�: i�YH&"T��*%��e��O����el�C���*�}�E~��[e�R��t���Ə}���T'������گ���O�a�W;�Y���!�r����B���ϯG���+��V�9����;_^L�]�7���!�z��d:1+@��������C���ĊK�9籐٪3�DtdLqM�\R)E�zQ� l%�"W&w�C>W5!�r1O�\����$Ե��j��ҧ�ǜ��ä�L�*:|T7і{��s���N�f�W�pބ}S����_"$d      7      x������ � �      9      x������ � �      ;      x��]Ys7�~n��
?�kU�>�O�%;����F��C�Yd����C^�����P
���DL[�H�ߗ *3�	$Pt�#/�x�T����$Rik����������_����T7_^����4�fF�`=\�\1r�UI M���_,�f�Kh��)^ڒ)+���7��U�[���@��2 ��z�w�z��';@/�x� e֘Ѐw�O�z�����)�2F��o�GO�`~%Y)�&�c?�7US�T���O��WL��Kc\���u�[v�����}���&�=E�}�1��⼤�����a?c_,�;O��m]�nv�����<֋/��qRғ���+���0<L��oom��\�+�J&�"j�6�"$)���QD��5h;ڋo���q绁MyL
��Yr��9����n?���"�W���Px�H�f_v`��67Fr��Mə��x��@FtQ�ՈVC���(����h賤���v����l�e��ӑDȡ���ed�WT��C��̼�R�3l��[#Jee���#<8*��߰�3����Jr�y�6f6���ϑ�p#,zSO�?r5�6��>1J�1�N�̖�SE�~��pQs�*#��\�X�y�����NN]s��y�f�(�?ԫ��%�0}��eT���EU�K�� ���QS�LM����O�߼��unJF�6N����W����&F�+&Jz�P�~�i�n;\~ʑ�)	�%L�[�m��I��+�a#��U���vSc/�MQ�w�@[����i�ޯ�/�*�|�޷_X֛y�¯��﫻f�	������������u������{�©M�is9+�����~����w�y?��^J������e��(%�k��Y���m��HZ�6p>��T\r���w��f���.*""����H�0���0��N.�rJCL��������ާ�ʳ���9Q�5RCy�l�(tL��V�8��{��o��zU�#X���zs����
]Z&8~�՟��ZW�}����ic�Q�Li����5(��d��c3f��??��#C�0�C� �Q���ݞ3<�E�#�%�U"�#[y$4v]�S��Z1�Ř ��� 7:� #� hKL	+��<�ƁZrG༾F{w���a���Р��u��P��4ӕfJ�@э6�<���sRZ�-�y�E(23��j�p����N-�!¸g�@/���#�(�q�El�,"����|�O��)� �Ԏ:����Gu����n��`Ŕ�d�dT'tj�8�bc�1WPRH<�׫9���
�8�GRj�Qpk�����_��]1��?���)6çc>�������Q�>T���!���17�@k1��_͡sŻO�%ƻ-:�#��1#Ǡ�j)���w���A5SCMbPvY����@}����zS�4�,McB�p[¸�w��v���p�7�z��q��fLݵ�^Q)���M/�@���nsQ�Mb�+�.~���$�\W0�0i�̉O�kc�VĴ�_k��o ��9,2a�[Ɖ��[�6K5�^aKn�Ա�	� Q�6~63��G�T���8P�&HM��#_�3��.�Ա��i��DzST�����.Q�X�%��
�[b)������ϠqcL�s]�<�?�B\���w��I���MEZqå:�g�=6-F�R�B�U1�u������l}�1���q}�K�\0����.����S\2Ԡ2&���|�6*� Y�.9Q4�n|0~��d�k���$fBr�<���;�d�L�L!֯�A��2٘I�3��E[16Z\`C+�$�)�Pe�Ѓu �0eY"��p�8�eb���N�4`CŦl����!2Q<��f_�7�9�XL����Я���HqDܪ��h7���\)|�oN���M��-�N��\��AE��,�	L�r�g��6Vg�s8b����.���;Vp\naD�7I�H�9,GFI���s0<i����3�b��H(��u��>�,6�K*���j����(���T�����>�`���1\J�R8�T�`�#� �������{�К��:�Fܢ.��Rr�fh���B�6N��J�|B�&��1�\$�eP�_�/KM�5k}x�KPbG�%U4�Pq��;�d��7�n�o �r����;>��qh�LYi�&asV�^���柊}S�\��d&G��v�`D��z@��nG�рs#�8Jʌ�k@�[���R�A"fb��JaM�@��O�fy�Pˇby��S�['{NYP��ø�i�Љ5}曦b��L��m��\6��+�L9*S	\�҄Q�fr��f
�,���f��}L�L��ؘB�6+���)�?}�������}���⻟}��#��������g}x�_�W�%e� F#\V%VX�k�1s|�j�)���T����� F1<�p)�j�}��
�-���K\ ���S��a�eL�6�P�]�r�7�	,�C�$�TN����>�����:�����j�sI�21�����>*+���v����xY��
�X_7k܇(>,�]M�*�?7�j������b�	�=�:�_����^TE���8��쉻mꖘ� B@��W�xG�H�qh�걨����Yt$Baي�ò�M6Z���z]\Ϸ���|���}߁(�E�t�8Al$H��t�Z�Þ�e�}�x�q�*�4$ ���ݯ�w0o������Y��o��w�����m�\�a����$��k��q�HK+�[wٶ�y���R��7J��;��B�pԢ}uL"�}q�.�͟������1��cf���TJ�C#;���a췟����:�w����l������f�f鶝0r�5L(:{?�i�S@,[��_�N��ׇ��>�ʩ+i"S� !<�,,�"V��g��G-œLRby��.q�:��c�������=e#�%<+��0D�%�2���n�����q#跛���I.��9�cj�����.k?I"�&2��pI�I�3D����7~5�$)M�҄`�w$�I��4-��d�I��dxy�K:���O��f�%�KP���׉O��e8u�i.�Lۋ�m�՗s��F�r�vs;�l��$���BH�WK�LJ=�IJJ�����ԛa}��dOۦ�p��z��MW�Y@T��_w���L'V�N��Lq�-RY��
Ksݴ|���xT�5��{|J��I[���x���~�?��W�v�n�Eu(�M���z�l!���?��7*k\��ϫ���Xo`�]�?6���aYmn�0�u�?����������ج�Gd{1�����АbX����ժ��}UTw����^����X����ïo����N�]�������O�鴯�V�N��N�������Vϒv����r~x�s�� �c�j �>���n��|��?�gŪ�w�XY�y5�v+m�'JW�%ٿ.�1}j�o�j��$��Q��T��%�n�g|�.���K�	d��/=�$(pQ���h<>�@:(qUk��|���KW{9�b1.��X�}���	��TW�R��4A��e�E,F��D�n��3��\�&�2���0eZ�<ݱV���a��K�� ��1����pe�8wS�-�#����p��x�z�Mm�1w\0��S�6!р��g �Ֆϐ��㺟��ِ���ԻD}��2��hhL%���eڤ��aS��X��M/܏�
eL8��ܲ�6����ɽ�~<�t�- Γe��L�d+$̯��ʧ6�n�<I�UNY�*��D����'�����<*恡�Л��t�ڗ��t̀��T�Q�,��+ObF$ʕ:��)�]�`̏�\�[b�JaZ<�����G�8�}���
�_���x�߿�4�*8Y߆���m���P*�8k$��X�@Wά"�(��B$V�j��y=!��B\]���'�}	!"���X�my���H��r�J4j��26T%��(��a���'?�߶��[Ha�R�0A�i׎M���+NR��
yn���lb:���`E}����p\l$�l���������   ��V�Ht8yA������ey�n� 30\�7UKq^�x�A������-�༴�ʰ杘O#�z�0H�C)XA���H��I�r*���4�=g7f#\m��L�+����x.'71��`��[_Du4|�\����D*K-IW�;�k�X
%����A����ź}.�fs���1w��1?�L��x��mv�vF��\"��d���������O)%�0�P/��;h�D��v���0k��NZ���i I�$�+���BqkC���C�"Ja��T���)���s�CJ\q�`�>�0�7�)}YD�F�6��0��@g#:<k�J�u��5=yY�1�Č��Jh�ݠ2���#%�1�)X�����T���pJ�y���#�����Id���g���'�H�i�����b���DR�c���,DO!x�4�Ƙ�jI����L����ݡ+�
2MB&P��}�[�u�s	~+,<I��'��4'�|J]'��E� ��` ����A��b��?�`S�6bܢ�[�Ɗjj�~��a��5�j��7w���|������l��n��9�c��K�H�س��n����X����H�P~��pu��}3��CZW��]-Ůg��������3��Y�R��$���e�zČK?��R���S���)��7��n�&���Ȗ��3��MOdᮔ,�P�F�7�:"�Xō�6�Eԑ̧���6&vd]rc�쪀̄�ϖ�����~��Ɩ�Z��(<�X��������x�B� ��+��ۃ��|Y��i(.`�����+��$�L���j5����#�cc��j�ܝ����pك/'��� ��*��`�cl���V���%��>L4��D���4̆�J_�X i�ʁ͖xy]������{�~�cDcX�dN�ڃddM��G����e#'�/=C�@�e%�-H���Pg�qʯM��uFf�?D�~E� �He� �v���U��G[e���  o��X��p���|5t�h�AF�[�� fz��0'aGƫ�e�i�[��͒p��I�#%���#��ܱ�H�XҢt�@���|�U|G	L� �	%kOt'�5�L�%��+���P!+Y>�wG�JF)n������R_x���#(�����)���X�3��OX*��R�9}��i��iK%%��c��8w�^s��h8܏M��$bJ"9�>D����$2O"c���$�L:�q�$'n�鳀���̂C��46o.*K^���0�c*w/(�Q�p_��T]}h��I����F4,˴$:Ob#�1�&��C��Õ�a30��)���� *0�bd�c`c|�\�X���.�su�mX���
]j��� <��`2U\���WxE��̥Al�Y8܉	A�_��y��M�����}�<��yd��q?By�른���]��IԔ��5"��5���j���<�ItL�.���~���ծ���V�ILL�J��]HN��=��Ď̕;M}1��B�ҽ��ZF{�`��v����\�N��x���
��`z�cZ(�@�@����[i\nvϝu��G�x�O����HV�Qx�*�fOԍ�@��%i\��JI���ݑ��R𤖀��gY�J�T�L�x�T�[�wM}�P	�n�D���lt�gH2SI�G*�m��/���ilL#1�B�KI���.� >�r�p�,�-9K�`�;<�[G�i,�]�k�wٝ��Ꙛ;\_�%!��'�s�;>YM8�����0�g~����L]8���-��\R��y�� bჭmO������2+���jJἁ�]�8\��XO��J8J�̟�?��L��h�����;������Ԓ�8���U������`�N���/"�Sb�%���ҟ��{�ԟj�]A#�\��Gi�P�� ���\��m+d, �t@�4Jhj'�H��'P��ڣ�	�0K�Q:��Z0?�eN���G����w��f��J���L8��������c�)�l�`֫��B�~��6���<�8����m�-����v�}Q����̗v��|��Be�3ʿ��>�a��'��>o�:��%H�>\�%������MM���p���n�:���ض-wI�u���S{��b�X�Xi����f�)�����Ƌ��ƙ�q�JR%�3��ic����J��3k�	�q��i��d�v\\�I��S1N�f�*n�q.2��8��e'��K�z?�oj�1�f|YU��=	�7_��p�c)>��7�r����9ûb��Dc��-��� �M`�E�ZUw�V�zc�l٬ +[��ƀ��#��*Ô�M��m-� 3y�� :�E?`&��a$����3�-�M��4 ��}R��� �?��g��j�Lk� �_{�X��!R��0;���~���[�`������P?�y��D�6\�YMۖ��#\�����iI�W������u\��>oo�?n����EP�֋�C�~��s��y���`�o:�-O���wμK]~���|���9�W�����-bn�܆�Ӈ#��7��A]���	Aw'�8u
���C�)h|ui5�����=Ԟ����;��n O�)���)x�~�>��~�yΞm���9�Q{��
��rΑ̞-����xh���d��Og���6v�����Q�}��FO�QΞf|<��Z���Tg���b���Q�Q��=6�p=vzr�'�K�RAe�y,z��	%A�w1u���p�`;hB���c�v,	u�Lo��	c�������:�K��5���h]��a�4Ʀ_Q��5§�������Oo�����wt���u��]��D��N�!��b��Ce;�\���uP���%x�piz����Q��ZiC�]�v�.����qU�ͷ��V�m�����X_�{7���^����+;�n�W!�ߋ���]�dEs[P�U����*^��S�k;�G�j���L>��u��H����{	�>�"�B�G�X[@v�#>z�=��{�c�x���V2�c��%������-��<�����/�^ne,ź�)����`_��L
kd�vaUD$�1ɩ
���y����E�K�j\��bF�=�NDnu�Ͱ�S��(�p�6�:3����KȈ[��d����n2��Z�����?�'�!��ƒ��5	�6�X��{�!!1���x��`b�ξ�VU�^�v���V���o0��6Q�����<�m��s�%�i$��Y*�K����:\���_O��`����壄��ppK+l���ڍVq�nN�Ԙc�H"o�/��A˳��R�/��l$/ٿ�sWSrIK&���wնnn��fYmp,��ߚA����S/T��#�����^'8�8�a�]������b�0i�:���0�o�b��>���67��!�AL�0E�d�; ��_�׏����~ژ��>b���%q1{U͝���V���� S������-����PK���K*�S5���.������kM:4q��opo������Vy��\��[4Ï�%�w����?�_|�o��      =   ^  x�m��n� ����L���]&E.uST̦��ܦ%]����|0Z�atA�8P�|���I%ʣ+�� �D�k���BV������D�5��*t�.��HA��V�LC̎
lgx��"���t�^4D��Bt#.��r̠M��Pq�>�H�����"�eC����j$ӗ�o��F��:�Л�{
9z���yڽ��v�!�83��#^��.�
K��L���f�oD�V嘆�$�j/۽�l�.S���\�?�$t7Q�Q��b�K�7���ƌ⛉0`J��#��{�͢ˆ2����[�a�uc�ݺ�Er�+����;�C��n�V�9p�����y)�)�ap|;�� ~ ��      ?   �  x��X�nܸ}�|��/,�6.��J�b�������-�2[���3�9,O-�ٞ���x��=w׍1�����v�A����+���H-�
ޑ������~{�*t��ڴ�C�b������M��m.����k��S��v��H!
zP(�i���tl~�۷f�~귚�U*�(��"[���M�����u*ˈ�ʕ�a��oݥ9w�C�Ɛ"�9��}w|��J���T�P�@u������oY�f"K(,<f�?R8������L��1ž��b�{���~�ʽqhҕ�����_JvSڛ��u�L�P�B����]{;]�����ti��ھ}r�^38�Q����&���>1qa
�=E�*=@�*0���t??G�w��@s?k���|9��;�z~�H���~�~c �6�r�!�m�Ed�o`P�H>,lR�ڭ�y�=�Ev	�f���#h]c��lP����������M*q�9���� b� p/���jq�w>[0�	�h�`L �S��<#��b�7�����[�$������d�(㓹�u�Nu3"�����WQ@�����zK~�Cc�l{8Q�|�p�~���fX���N���k'�{5�i�!������qE�8�A##�R���T���)2�<М��N84Ca��.�`�-��~�N�\�}�g�$�EW)/s �w:�l�*8G6�#�&'������w!HB�8l?:V4����WCQ�� �t�$��ZU��̐����i�r��eǓcY�͘C�V��YG�c"��$�9���+�?����};�������� ��h^�u��B�	�'��fQ�Z��c�fA�,���%��h��U��=
��`���6N[?5���aA�Mf��e"5�V��T�
�.��}���	WB*���\�n�st�I�&l���2?G#����k��\���|��`W����djB:�9z��m��sྠ�i4:��qQ,�6A��h��oD�l�=wQL��WсYr�%+啟��*-N\�)��1ک[�/�ٽ�h4MV�K���9��Ќk���Es`gh�ҽf�U_���.��4Z��t�R4~	�9��,U�����!��4�B>���V��s['Ep4O��ՠ�F��Y�)fEp��V�P��%G��Ȭo�S�l�6����	��2rm�ΐh2�h
�����Tg!�ltv�8�9���٘���"z8�h�V�(��%c6��n�ߚ8 ��1�q�v��t*-ݴB���w&�a���=�0�������]$�a�<~�3Ο��AX%�Z�A�0&�y|��I �t��?-/�ѺV	P'�,\�[w��Ƿ�|���� ��=T7q��ɱ�/�ŖM�� ����=T��h2f-�q���Du���~ٿ����a"<l	���_�M2A�4j�
,[�S�)��c���Ii����͗���$o��ۤ2~������928���>��Z�ؐTqE� �8 |��W�z��$��h��f*&�p�V�偵��̑�W��0��_2�ך0P�+��%Ư���C�싡�N���@F�M�^��[n̠��JJ�d�	���ףX��&'4���m�X[����z�<lf<��#x�����sH]�7A�=�[�Ȓ��<��x�
~�c�<<�q��y�.�t��xqK�����-0�-a����y|��l����am3u�V����юt:�<��ҙg9k�����r�����~:vs���a�g՗�<��G`�C�o����AlA3���X�Q�C��^�è3�L�C[��o�K�]�-߮�����٪p�	+� ��]��gF�� f��!��X93d׭��N~�@����릋�%�������y��[��֯vH��Xe(����^&ΤT9�X��DX%�U}��OM�=vW�!-�����{���?�D��d&M��Hv]GI ִ:�{(��|�\ZQ�햕0l
�xu^O� vq?*�@� �o��Ǐ�ͦ~�      A   2  x���n�H����OQ�rar0�6K6)K�D���N&�����ORU�O�Uc���e�I}�G��j�!N{�����Uʊ��}2��	���d'j��N�3��>՘:����&����S���@�/�f��Z�.U"�zʯ�2Z�}`����]��W���6
�������VYIv4��m9�k_��:�i��]c^/�^�_�s�9�:�}d�:u�1~]��}��2\Q�(�k�e���渡����	��Sl�6G�it=�㉩4���ޤZ����@�ȏ���@fH�������Z�
Y�<�$��&B�)���n��щil�텙�����kԄU��:*�[�c7V!���ݠƻ��f��ѥ��;q�N�i��u.K�W6��_�{V�P�藿p�sLr���x�k��k��5<l��2Tb2+����>5G�7Gk�54ǰ;�Qj��߲���q&���ĮfN{kL1-$E2?��~Օ"f��`��ҏТ��2���QW��,j��;u�$�qM�,�������gwXy�:ǉ��u��N��m���x��Z��?��x-�ĎHs�u� +���o�S�UV��ͣ*hC�Ҳ���KY�`Q�;jv��)���VVlQw��Eg&_7!����G��<~�����>;mܡ���y��י����	6��-֌��Xt�s7��:���)s�̡<�1!H�؍��%������ڀEmҖlP$ ~ֻo�b'ϱ4D����Ţƒ��ǜ8K�����q+3�AC*��X+S��?��g�m��Z���T��ɠ�;ĵ��#V�#�x����6y�´6As"�����V��q�@ �$�	k3�nP/�D��ѥ1��q-�
��v%)KP4x(u��w*Gp��8~ݱ̍�tmaNȌ`$(��-�4�I��a+e-e(�dT���l��nm8d��HdI�nA�N�MYD�����6-i[�1	?��=U�/@�c^i�L�@@db��4��aֲP̄L�A����Hq�$|0��T���Iy
&�eft�E��=�F�M���[���Pu�R��_*3�n*����g=#U�ى�j�k�G�Xme^:�I9�����e��N��9�P�D$A���J�Ħ�(���*)�T*i�� �~��Ǝ��;a&	��슑F��vI,U��ŀ8NGʱ�iPŒ��nb7�ye��ɼ���]��]��c�� 'B��n+�U�'�G >4�*A�zE�,&v�`G�$-�qX�jh��-\��P&��&v���t&K�"�m�`vM���v2�S)H�ڳ;n��#�����i�;z��D��H�!0+��~�U�I6xy�y���?��d.����AV��yT
��#�Q�TL��pG�wR6|���MS$��Დ�|�����%�G4M��	�;: ��\?�f���P�v����<n��������T��zO����Nq��=��/,�kOS�=2�{��<7�e�	�;�"e�ɣ%u��xXbھ��w�gD����um��X-��y-n*�D4����x�RE���{��ޗד����p���vs����<7�x�</OFW����՗����P����#��C<��5�����xC�����ôl�ZiRܕ��JU��q�q�A����@M}ô�۫ƺ�C�`��hҧ�w�q��>)�L��4=;|�1�Z4Ěq��iz�|�NP)���Su~�j�����]�0f�/��4� �>���zw�u%Ɛd�Hrr+"�E���Ύ�8'`�p"Dx���)ZTEM��J�
�lI�D}*>�?���N�ï���q7�,yĩnmց␘�M��]ӥx���%����E��/��*:������U��QE�D�C�����_��C?���)�t��#� ���J�=m�U�,j
������G��*ۧB'Oc� �A���	��a���P;T������N!���?���Ӹ�G"@�)�E�h����c�y��9�ڎ�V�809#�q��5�vX���2��=�
\�:�rmn������ߝh�a������i˟�����b*;1k�祭��26����(R�Y�?m3��j��J�]w�44�R���y����g �1)�����d��;�g�M[�����s}��x*MFk������[u��;�@i�Y0ѹ3�I_^l�5�A��~�S�j�p��셃J]~]����X��,��r�(��c�ȥ2��3 /j+�l ��.�m���qV潬��9��i��Ʃ��=/��cDUci]��;�@��"x0x�C�A�äk��O���3M7����yx;4wzG�L���0��'��F1p�(Æ-p�di7z}��S>���N�Ꝃ$�5go��b̘�b��U�I&ʑL��u�Sw�e���!!��T��o@�R��"��NKQ*\�L�o��z�u��?�(Z�G�D� [��P��8��Vھ�5�/�n����F���{��q����%-��'������"ݿ��Ǘ7F���M$5l�ke�������渣��R?mf��G_7�f�oO�a���]m^�Sy��Rg
/��ħ�a~{�l�o����u\���8UJ�_�u�� 3-u ��&��fX X�o�Ѡ��崖�$�KύI�6q��i������y��譯_G.���5\=
ay4�Q�'�x�+���Ce�=�|�MT�b&���~�$�+��+!����oE]�	����M�M���ڞ������:w�[��,�Z�4���u[60ԗ�ފg�A�[k���w�x���'� V|�c�h��V�	ј�h��hׅ��7B�ۡ����oӴ:|��ԭ���x�U\�����%�m�ƯQ]�@q^�ؽX��rh-
�w��md0�z��Eڅ6�^�\u�T+O�E��t��!|Ο�Sv~.��kwzq�_�<ǉ����r�<j���/�J��挤��̟���=���)7�|���M �������h�WG�>Fq�#�mm2m�A��;#Ly�k1L�D& 	�⨔���PE�9����Ͼe x�7E�����wཐ��K�nɯ*��>5�9g
߾�#x�T�UU���%��" ����b����T���j�'F_-�o������<PC[�n����0P�g��8�1R�0�Hൈ�y:ҼO��]��|��N?��v���!G��2j�����vy;;�:���e0S){hn.��$��B���)3I�e���)BX�(�=%'`b�a#���*/�3mᙇ�tˋ�H�����㇔�?�$H��YD��y������_	��o�9��mH$����=�駟�t�<      B      x������ � �      I   �   x�M�M�0���)�@����t�	+X��e�*��-1xz�	�b�7��!���'�V���/�� iZ���q$������4�O�p��d�(����Q��f��(8RUck����B@M�8(v���Fђ(�����UT�i�I3��bZ��[���m��W�]�"���9Z�D�5T8      K   M   x�5ʻ�0�Z&�H˟]��1b�9��([�a`O0�����.���K6�%�$!���R9�^P�������      D      x������ � �      F   B  x����J�0ƯO��<��Iڮ���1;��Pb�5qKZ���ݜ�� �������x{��P[a$<=����8��W#nd���h��N���=j�`�m�`��սnn�jUs�r����y����7+�t�3���P��$��PD���8B����Y����,vz�l�,gx��N�����i��v�0RZQ�~�ܯ�K�^�����ƣ�t�5J�O� �)�)B5�{:�=>�.	まw]�1ҝ�N{\�O�%\ �_��xvM,�PRã
�����1.��Cv��k��B�������R�W� �q�γ��������     