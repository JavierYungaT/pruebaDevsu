PGDMP      $        
        }            accounts    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                        1262    16657    accounts    DATABASE     j   CREATE DATABASE accounts WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE accounts;
                     postgres    false            �            1259    16848    account    TABLE     i  CREATE TABLE public.account (
    account_balance numeric(38,2) NOT NULL,
    account_state boolean,
    account_id bigint NOT NULL,
    account_client_identification character varying(255) NOT NULL,
    account_client_name character varying(255) NOT NULL,
    account_number character varying(255) NOT NULL,
    account_type character varying(255) NOT NULL
);
    DROP TABLE public.account;
       public         heap r       postgres    false            �            1259    16857    movement    TABLE     E  CREATE TABLE public.movement (
    movement_amount numeric(38,2) NOT NULL,
    movement_balance numeric(38,2) NOT NULL,
    movement_state boolean NOT NULL,
    account_id bigint,
    movement_date timestamp(6) without time zone NOT NULL,
    movement_id bigint NOT NULL,
    movement_type character varying(255) NOT NULL
);
    DROP TABLE public.movement;
       public         heap r       postgres    false            �            1259    16846    t_account_seq    SEQUENCE     v   CREATE SEQUENCE public.t_account_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.t_account_seq;
       public               postgres    false            �            1259    16847    t_movement_seq    SEQUENCE     w   CREATE SEQUENCE public.t_movement_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.t_movement_seq;
       public               postgres    false                      0    16848    account 
   TABLE DATA           �   COPY public.account (account_balance, account_state, account_id, account_client_identification, account_client_name, account_number, account_type) FROM stdin;
    public               postgres    false    219   �                 0    16857    movement 
   TABLE DATA           �   COPY public.movement (movement_amount, movement_balance, movement_state, account_id, movement_date, movement_id, movement_type) FROM stdin;
    public               postgres    false    220          !           0    0    t_account_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.t_account_seq', 2, true);
          public               postgres    false    217            "           0    0    t_movement_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.t_movement_seq', 1, true);
          public               postgres    false    218            �           2606    16856 "   account account_account_number_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_account_number_key UNIQUE (account_number);
 L   ALTER TABLE ONLY public.account DROP CONSTRAINT account_account_number_key;
       public                 postgres    false    219            �           2606    16854    account account_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (account_id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public                 postgres    false    219            �           2606    16861    movement movement_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT movement_pkey PRIMARY KEY (movement_id);
 @   ALTER TABLE ONLY public.movement DROP CONSTRAINT movement_pkey;
       public                 postgres    false    220            �           2606    16862 $   movement fkoemeananv9w9qnbcoccbl70a0    FK CONSTRAINT     �   ALTER TABLE ONLY public.movement
    ADD CONSTRAINT fkoemeananv9w9qnbcoccbl70a0 FOREIGN KEY (account_id) REFERENCES public.account(account_id);
 N   ALTER TABLE ONLY public.movement DROP CONSTRAINT fkoemeananv9w9qnbcoccbl70a0;
       public               postgres    false    220    3458    219                  x������ � �            x������ � �     