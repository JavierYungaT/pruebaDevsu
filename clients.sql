PGDMP  )    +        
        }            clients    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16656    clients    DATABASE     i   CREATE DATABASE clients WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE clients;
                     postgres    false            �            1259    16889    client    TABLE     �   CREATE TABLE public.client (
    cli_state boolean,
    per_id bigint NOT NULL,
    cli_password character varying(255) NOT NULL
);
    DROP TABLE public.client;
       public         heap r       postgres    false            �            1259    16894    person    TABLE     C  CREATE TABLE public.person (
    per_age integer NOT NULL,
    per_id bigint NOT NULL,
    per_address character varying(255) NOT NULL,
    per_dni character varying(255) NOT NULL,
    per_genre character varying(255) NOT NULL,
    per_name character varying(255) NOT NULL,
    per_phone character varying(255) NOT NULL
);
    DROP TABLE public.person;
       public         heap r       postgres    false            �            1259    16888    t_person_seq    SEQUENCE     u   CREATE SEQUENCE public.t_person_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.t_person_seq;
       public               postgres    false                      0    16889    client 
   TABLE DATA           A   COPY public.client (cli_state, per_id, cli_password) FROM stdin;
    public               postgres    false    218   .                 0    16894    person 
   TABLE DATA           g   COPY public.person (per_age, per_id, per_address, per_dni, per_genre, per_name, per_phone) FROM stdin;
    public               postgres    false    219   K                  0    0    t_person_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.t_person_seq', 1, true);
          public               postgres    false    217                       2606    16893    client client_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (per_id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public                 postgres    false    218            �           2606    16902    person person_per_dni_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_per_dni_key UNIQUE (per_dni);
 C   ALTER TABLE ONLY public.person DROP CONSTRAINT person_per_dni_key;
       public                 postgres    false    219            �           2606    16900    person person_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (per_id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public                 postgres    false    219            �           2606    16903 "   client fkpb8ay9bwxy5w5cjiwkh92lghc    FK CONSTRAINT     �   ALTER TABLE ONLY public.client
    ADD CONSTRAINT fkpb8ay9bwxy5w5cjiwkh92lghc FOREIGN KEY (per_id) REFERENCES public.person(per_id);
 L   ALTER TABLE ONLY public.client DROP CONSTRAINT fkpb8ay9bwxy5w5cjiwkh92lghc;
       public               postgres    false    3459    218    219                  x������ � �            x������ � �     