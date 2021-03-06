PGDMP         :    	            w         
   DB-SL-test    12.1    12.0 �    n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            q           1262    17463 
   DB-SL-test    DATABASE     �   CREATE DATABASE "DB-SL-test" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "DB-SL-test";
                postgres    false            �            1255    17464    iif(boolean, text, text)    FUNCTION        CREATE FUNCTION public.iif(condition boolean, true_result text, false_result text) RETURNS text
    LANGUAGE plpgsql
    AS $$
    BEGIN
     IF condition THEN
        RETURN true_result;
     ELSE
        RETURN false_result;
     END IF;
    END
    $$;
 R   DROP FUNCTION public.iif(condition boolean, true_result text, false_result text);
       public          postgres    false            �            1259    17465    pcmaster    TABLE     L  CREATE TABLE public.pcmaster (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL,
    tipo character(1) NOT NULL,
    idusuariocad integer NOT NULL,
    datacadastro timestamp without time zone NOT NULL,
    idusuarioalt integer,
    dataalteracao timestamp without time zone,
    idempresa integer NOT NULL
);
    DROP TABLE public.pcmaster;
       public         heap    postgres    false            �            1259    17468    PCMASTER_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PCMASTER_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."PCMASTER_id_seq";
       public          postgres    false    202            r           0    0    PCMASTER_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."PCMASTER_id_seq" OWNED BY public.pcmaster.id;
          public          postgres    false    203            �            1259    17470    certificadoa1    TABLE       CREATE TABLE public.certificadoa1 (
    id integer NOT NULL,
    serial character varying(40) NOT NULL,
    cert bytea NOT NULL,
    senha character varying(40) NOT NULL,
    validade timestamp with time zone NOT NULL,
    descricao character varying(300)
);
 !   DROP TABLE public.certificadoa1;
       public         heap    postgres    false            �            1259    17476    certificadoa1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.certificadoa1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.certificadoa1_id_seq;
       public          postgres    false    204            s           0    0    certificadoa1_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.certificadoa1_id_seq OWNED BY public.certificadoa1.id;
          public          postgres    false    205            �            1259    17478    cliente    TABLE       CREATE TABLE public.cliente (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    fantasia character varying(100),
    razao character varying(150) NOT NULL,
    endereco character varying(100),
    nr character varying(35),
    bairro character varying(50),
    cidade character varying(50),
    codcidade character varying(10),
    cep character varying(9),
    telefone character varying(15),
    contato character varying(30),
    cnpj character varying(20) NOT NULL,
    inscest character varying(20),
    inscmun character varying(14),
    uf character varying(2),
    email character varying(100),
    complemento character varying(100),
    idusuariocad integer NOT NULL,
    datacadastro date NOT NULL,
    idusuarioalt integer,
    dataalteracao date
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    17484    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    206            t           0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    207            �            1259    18000    clientecobranca    TABLE     �  CREATE TABLE public.clientecobranca (
    id integer NOT NULL,
    idcliente integer NOT NULL,
    endereco character varying(100),
    nr character varying(35),
    bairro character varying(50),
    cidade character varying(50),
    codcidade character varying(10),
    cep character varying(9),
    uf character varying(2),
    complemento character varying(100),
    idusuariocad integer NOT NULL,
    datacadastro date NOT NULL,
    idusuarioalt integer,
    dataalteracao date
);
 #   DROP TABLE public.clientecobranca;
       public         heap    postgres    false            �            1259    17998    clientecobranca_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientecobranca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.clientecobranca_id_seq;
       public          postgres    false    242            u           0    0    clientecobranca_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.clientecobranca_id_seq OWNED BY public.clientecobranca.id;
          public          postgres    false    241            �            1259    17987    clientecontato    TABLE     �   CREATE TABLE public.clientecontato (
    id integer NOT NULL,
    idcliente integer NOT NULL,
    nome character varying(40) NOT NULL,
    fone character varying(15),
    email character varying(100)
);
 "   DROP TABLE public.clientecontato;
       public         heap    postgres    false            �            1259    17985    clientecontato_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientecontato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.clientecontato_id_seq;
       public          postgres    false    240            v           0    0    clientecontato_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.clientecontato_id_seq OWNED BY public.clientecontato.id;
          public          postgres    false    239            �            1259    17486    configcaixa    TABLE     �  CREATE TABLE public.configcaixa (
    idempresa integer NOT NULL,
    id integer NOT NULL,
    caixa character varying(3) NOT NULL,
    data date NOT NULL,
    serial character varying(20) NOT NULL,
    documento character varying(8) NOT NULL,
    numccf integer DEFAULT 0 NOT NULL,
    usacloudnfce boolean NOT NULL,
    idusuariocad integer NOT NULL,
    datacadastro date NOT NULL,
    equipamento smallint,
    download text,
    certificado integer
);
    DROP TABLE public.configcaixa;
       public         heap    postgres    false            �            1259    17493    configcaixa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.configcaixa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.configcaixa_id_seq;
       public          postgres    false    208            w           0    0    configcaixa_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.configcaixa_id_seq OWNED BY public.configcaixa.id;
          public          postgres    false    209            �            1259    17495 
   confignfce    TABLE     S  CREATE TABLE public.confignfce (
    idempresa integer NOT NULL,
    id integer NOT NULL,
    numccf integer NOT NULL,
    idcsc character varying(6) NOT NULL,
    csc character varying(40) NOT NULL,
    certificado integer NOT NULL,
    numcoo integer NOT NULL,
    serie smallint NOT NULL,
    producao boolean DEFAULT false NOT NULL
);
    DROP TABLE public.confignfce;
       public         heap    postgres    false            �            1259    17499    empresa    TABLE     |  CREATE TABLE public.empresa (
    id integer NOT NULL,
    fantasia character varying(40),
    razao character varying(40),
    endereco character varying(40),
    nr character varying(35),
    bairro character varying(30),
    cidade character varying(30),
    codcidade character varying(10),
    cep character varying(9),
    telefone character varying(10),
    contato character varying(30),
    cnpj character varying(20),
    inscest character varying(20),
    inscmun character varying(14),
    uf character varying(2),
    email character varying(100),
    complemento character varying(100),
    codregtrib integer NOT NULL
);
    DROP TABLE public.empresa;
       public         heap    postgres    false            �            1259    17505    empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.empresa_id_seq;
       public          postgres    false    211            x           0    0    empresa_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.empresa_id_seq OWNED BY public.empresa.id;
          public          postgres    false    212            �            1259    17507    finalizadora    TABLE     �  CREATE TABLE public.finalizadora (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    descricao character varying(25),
    tef integer,
    duplicata boolean DEFAULT false NOT NULL,
    contabancaria integer DEFAULT 0 NOT NULL,
    prazo integer DEFAULT 0 NOT NULL,
    desconto numeric(9,2) DEFAULT 0 NOT NULL,
    analitico smallint DEFAULT 0 NOT NULL,
    sintetico smallint DEFAULT 0 NOT NULL,
    permitetroco boolean DEFAULT false NOT NULL,
    codcedente integer DEFAULT 0 NOT NULL,
    tipomovimento integer DEFAULT 0,
    creddeb smallint DEFAULT 0 NOT NULL,
    vlrminimoop numeric(15,2) DEFAULT 0.01 NOT NULL,
    acrescimo numeric(9,2) DEFAULT 0,
    tipoad character varying(1) DEFAULT '$'::character varying NOT NULL,
    usaad boolean DEFAULT false NOT NULL,
    descpda numeric(12,2) DEFAULT 0 NOT NULL,
    idusuariocad integer NOT NULL,
    datacadastro date NOT NULL,
    idusuarioalt integer,
    dataalteracao date,
    cartao boolean DEFAULT false NOT NULL
);
     DROP TABLE public.finalizadora;
       public         heap    postgres    false            �            1259    17526    finalizadora_id_seq    SEQUENCE     �   CREATE SEQUENCE public.finalizadora_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.finalizadora_id_seq;
       public          postgres    false    213            y           0    0    finalizadora_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.finalizadora_id_seq OWNED BY public.finalizadora.id;
          public          postgres    false    214            �            1259    17528 	   grupoprod    TABLE     6  CREATE TABLE public.grupoprod (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    descricao character varying(20) NOT NULL,
    cor character varying(7),
    idusuariocad integer NOT NULL,
    datacadastro date DEFAULT CURRENT_TIMESTAMP NOT NULL,
    idusuarioalt integer,
    dataalteracao date
);
    DROP TABLE public.grupoprod;
       public         heap    postgres    false            �            1259    17532    grupoprod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grupoprod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.grupoprod_id_seq;
       public          postgres    false    215            z           0    0    grupoprod_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.grupoprod_id_seq OWNED BY public.grupoprod.id;
          public          postgres    false    216            �            1259    17534    ibge    TABLE     �   CREATE TABLE public.ibge (
    id integer NOT NULL,
    cidade character varying(35),
    estado character varying(25),
    sigla character varying(2),
    iduf integer
);
    DROP TABLE public.ibge;
       public         heap    postgres    false            �            1259    17537    ncm    TABLE     W  CREATE TABLE public.ncm (
    id integer NOT NULL,
    ncm character varying(8) NOT NULL,
    descricao text,
    tec integer,
    bkbit character varying(10),
    excecoes character varying(10),
    icmsin numeric(4,2),
    icmsout numeric(4,2),
    cfopin character varying(4),
    cfopout character varying(4),
    st character varying(4),
    natreceita character varying(4),
    cstpc integer,
    cstpcentrada integer,
    percpiscred numeric(9,4),
    perccofinscred numeric(9,4),
    percpisdeb numeric(9,4),
    perccofinsdeb numeric(9,4),
    ativo boolean DEFAULT true NOT NULL,
    valibpt numeric(12,4),
    natreceitasec character varying(4),
    cest character varying(7),
    desccest text,
    produto character varying(100) NOT NULL,
    data date,
    stout character varying(4),
    fundocp numeric(15,2),
    icmssub numeric(15,2)
);
    DROP TABLE public.ncm;
       public         heap    postgres    false            �            1259    17544 
   ncm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ncm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.ncm_id_seq;
       public          postgres    false    218            {           0    0 
   ncm_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.ncm_id_seq OWNED BY public.ncm.id;
          public          postgres    false    219            �            1259    17546 
   parametros    TABLE     e   CREATE TABLE public.parametros (
    id integer DEFAULT 0 NOT NULL,
    limitedb integer NOT NULL
);
    DROP TABLE public.parametros;
       public         heap    postgres    false            �            1259    17550 
   planoconta    TABLE     s  CREATE TABLE public.planoconta (
    id integer NOT NULL,
    sintetico integer NOT NULL,
    analitico integer NOT NULL,
    descricao character varying(30),
    idpcmaster integer NOT NULL,
    idempresa integer NOT NULL,
    idusuariocad integer,
    datacadastro timestamp without time zone,
    idusuarioalt integer,
    dataalteracao timestamp without time zone
);
    DROP TABLE public.planoconta;
       public         heap    postgres    false            �            1259    17553    plano_conta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plano_conta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.plano_conta_id_seq;
       public          postgres    false    221            |           0    0    plano_conta_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.plano_conta_id_seq OWNED BY public.planoconta.id;
          public          postgres    false    222            �            1259    17555    produto    TABLE     W  CREATE TABLE public.produto (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    codproduto character varying(14) NOT NULL,
    descricao character varying(100) NOT NULL,
    codgrupo integer NOT NULL,
    estoque numeric(12,3) DEFAULT 0 NOT NULL,
    unidade character varying(2) NOT NULL,
    minimo integer,
    maximo integer,
    compra numeric(9,2),
    venda numeric(9,2),
    datacadastro date NOT NULL,
    idusuariocad integer NOT NULL,
    dataalteracao date,
    idusuarioalt integer,
    balanca boolean DEFAULT false NOT NULL,
    sinccloud boolean DEFAULT false NOT NULL
);
    DROP TABLE public.produto;
       public         heap    postgres    false            �            1259    17561    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          postgres    false    223            }           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
          public          postgres    false    224            �            1259    17563 
   produtoimp    TABLE     �  CREATE TABLE public.produtoimp (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    idproduto integer NOT NULL,
    ncm character varying(8),
    cest character varying(7),
    cstipi integer DEFAULT 0,
    aliquotaipi numeric(12,2) DEFAULT 0,
    csosn character varying(4) DEFAULT '0500'::character varying,
    csticms character varying(4) DEFAULT '0060'::character varying,
    aliquotaicms numeric(12,2) DEFAULT 0,
    cstpiscofins integer DEFAULT 6,
    aliquotapis numeric(12,2) DEFAULT 0,
    aliquotacofins numeric(12,2) DEFAULT 0,
    cfopvenda character varying(4) NOT NULL,
    descanp character varying(50),
    codanp character(12)
);
    DROP TABLE public.produtoimp;
       public         heap    postgres    false            �            1259    17574    produtoimp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtoimp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.produtoimp_id_seq;
       public          postgres    false    225            ~           0    0    produtoimp_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.produtoimp_id_seq OWNED BY public.produtoimp.id;
          public          postgres    false    226            �            1259    17576    vendarec    TABLE       CREATE TABLE public.vendarec (
    id integer NOT NULL,
    idvenda integer,
    idfinalizadora integer NOT NULL,
    descricaofin character varying(20) NOT NULL,
    data date NOT NULL,
    hora time without time zone NOT NULL,
    ntef character varying(1) NOT NULL,
    valor numeric(9,2) NOT NULL,
    troco numeric(9,2) DEFAULT 0,
    tef integer,
    nsu character varying(35),
    rede character varying(100),
    msg text,
    nrparcelas integer DEFAULT 1 NOT NULL,
    origem integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.vendarec;
       public         heap    postgres    false            �            1259    17585    recebimento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recebimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.recebimento_id_seq;
       public          postgres    false    227                       0    0    recebimento_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.recebimento_id_seq OWNED BY public.vendarec.id;
          public          postgres    false    228            �            1259    17587    unidades    TABLE     �   CREATE TABLE public.unidades (
    id integer NOT NULL,
    cod character varying(6) NOT NULL,
    descricao character varying(50)
);
    DROP TABLE public.unidades;
       public         heap    postgres    false            �            1259    17590    unidades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.unidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.unidades_id_seq;
       public          postgres    false    229            �           0    0    unidades_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.unidades_id_seq OWNED BY public.unidades.id;
          public          postgres    false    230            �            1259    17592    usuario    TABLE     \  CREATE TABLE public.usuario (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    nome character varying(30) NOT NULL,
    login character varying(20) NOT NULL,
    senha character varying(12),
    ativo boolean DEFAULT true NOT NULL,
    email character varying(100),
    dataultimoacesso timestamp without time zone,
    imagem bytea
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    17599    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    231            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    232            �            1259    17601    venda    TABLE     �  CREATE TABLE public.venda (
    id integer NOT NULL,
    idempresa integer NOT NULL,
    documento character varying(10) NOT NULL,
    caixa character varying(3) NOT NULL,
    idusuarioope integer NOT NULL,
    idusuariores integer,
    idusuarioven integer,
    tipomovimento integer DEFAULT 2 NOT NULL,
    cfop character varying(4),
    cancelado boolean DEFAULT false NOT NULL,
    canrejeicao boolean DEFAULT false NOT NULL,
    valor numeric(12,2) DEFAULT 0 NOT NULL,
    estadual numeric(12,2) DEFAULT 0 NOT NULL,
    federal numeric(12,2) DEFAULT 0 NOT NULL,
    ipi numeric(12,2) DEFAULT 0 NOT NULL,
    desconto numeric(12,2) DEFAULT 0 NOT NULL,
    acrescimo numeric(12,2) DEFAULT 0 NOT NULL,
    subtotal numeric(12,2) DEFAULT 0 NOT NULL,
    comissao numeric(12,2) DEFAULT 0 NOT NULL,
    basecalcicms numeric(12,2) DEFAULT 0 NOT NULL,
    icmssubst numeric(12,2) DEFAULT 0 NOT NULL,
    basecalcsubst numeric(12,2) DEFAULT 0 NOT NULL,
    pedido integer DEFAULT 0 NOT NULL,
    tipodoc character varying(2) DEFAULT '65'::character varying NOT NULL,
    numccf integer DEFAULT 0 NOT NULL,
    cpfcnpjavulso character varying(17),
    nomecliavulso character varying(60),
    idcliente integer,
    data timestamp with time zone NOT NULL
);
    DROP TABLE public.venda;
       public         heap    postgres    false            �            1259    17621    venda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venda_id_seq;
       public          postgres    false    233            �           0    0    venda_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;
          public          postgres    false    234            �            1259    17623    vendamov    TABLE     b  CREATE TABLE public.vendamov (
    id integer NOT NULL,
    data date NOT NULL,
    hora time without time zone NOT NULL,
    codproduto character varying(14) NOT NULL,
    descricao character varying(50) NOT NULL,
    unidade character varying(2) NOT NULL,
    antes numeric(12,3) DEFAULT 0 NOT NULL,
    qtd numeric(12,3) DEFAULT 0 NOT NULL,
    depois numeric(12,3) DEFAULT 0 NOT NULL,
    compra numeric(12,2) DEFAULT 0 NOT NULL,
    venda numeric(12,4) DEFAULT 0 NOT NULL,
    comissao numeric(12,2) DEFAULT 0 NOT NULL,
    cancelado boolean DEFAULT false NOT NULL,
    desconto numeric(12,2) DEFAULT 0 NOT NULL,
    item integer NOT NULL,
    subtotal numeric(12,2) DEFAULT 0 NOT NULL,
    idgrupo integer,
    cfop character varying(4) NOT NULL,
    sticms character varying(4) NOT NULL,
    stpiscofins character varying(2) NOT NULL,
    stipi character varying(2) DEFAULT 53 NOT NULL,
    aliicms numeric(12,4) DEFAULT 0 NOT NULL,
    alipis numeric(12,4) DEFAULT 0 NOT NULL,
    alicofins numeric(12,4) DEFAULT 0 NOT NULL,
    aliipi numeric(12,4) DEFAULT 0 NOT NULL,
    vlricms numeric(12,2) DEFAULT 0 NOT NULL,
    vlripi numeric(12,2) DEFAULT 0 NOT NULL,
    vlrpis numeric(12,2) DEFAULT 0 NOT NULL,
    vlrcofins numeric(12,2) DEFAULT 0 NOT NULL,
    ncm character varying(8),
    cest character varying(7),
    idusuacan integer,
    idvenda integer NOT NULL
);
    DROP TABLE public.vendamov;
       public         heap    postgres    false            �            1259    17644    vendamov_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendamov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vendamov_id_seq;
       public          postgres    false    235            �           0    0    vendamov_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vendamov_id_seq OWNED BY public.vendamov.id;
          public          postgres    false    236            �            1259    17646    vendaxml    TABLE     �   CREATE TABLE public.vendaxml (
    id integer NOT NULL,
    idvenda integer NOT NULL,
    datanf timestamp without time zone NOT NULL,
    chave character varying(44),
    status smallint NOT NULL,
    motivo text NOT NULL,
    nfxml bytea NOT NULL
);
    DROP TABLE public.vendaxml;
       public         heap    postgres    false            �            1259    17652    vendaxml_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendaxml_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vendaxml_id_seq;
       public          postgres    false    237            �           0    0    vendaxml_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vendaxml_id_seq OWNED BY public.vendaxml.id;
          public          postgres    false    238                       2604    17654    certificadoa1 id    DEFAULT     t   ALTER TABLE ONLY public.certificadoa1 ALTER COLUMN id SET DEFAULT nextval('public.certificadoa1_id_seq'::regclass);
 ?   ALTER TABLE public.certificadoa1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204                       2604    17655 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            Y           2604    18003    clientecobranca id    DEFAULT     x   ALTER TABLE ONLY public.clientecobranca ALTER COLUMN id SET DEFAULT nextval('public.clientecobranca_id_seq'::regclass);
 A   ALTER TABLE public.clientecobranca ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            X           2604    17990    clientecontato id    DEFAULT     v   ALTER TABLE ONLY public.clientecontato ALTER COLUMN id SET DEFAULT nextval('public.clientecontato_id_seq'::regclass);
 @   ALTER TABLE public.clientecontato ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240                       2604    17656    configcaixa id    DEFAULT     p   ALTER TABLE ONLY public.configcaixa ALTER COLUMN id SET DEFAULT nextval('public.configcaixa_id_seq'::regclass);
 =   ALTER TABLE public.configcaixa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208                       2604    17657 
   empresa id    DEFAULT     h   ALTER TABLE ONLY public.empresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_id_seq'::regclass);
 9   ALTER TABLE public.empresa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211                       2604    17658    finalizadora id    DEFAULT     r   ALTER TABLE ONLY public.finalizadora ALTER COLUMN id SET DEFAULT nextval('public.finalizadora_id_seq'::regclass);
 >   ALTER TABLE public.finalizadora ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213                       2604    17659    grupoprod id    DEFAULT     l   ALTER TABLE ONLY public.grupoprod ALTER COLUMN id SET DEFAULT nextval('public.grupoprod_id_seq'::regclass);
 ;   ALTER TABLE public.grupoprod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                       2604    17660    ncm id    DEFAULT     `   ALTER TABLE ONLY public.ncm ALTER COLUMN id SET DEFAULT nextval('public.ncm_id_seq'::regclass);
 5   ALTER TABLE public.ncm ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                        2604    17661    pcmaster id    DEFAULT     l   ALTER TABLE ONLY public.pcmaster ALTER COLUMN id SET DEFAULT nextval('public."PCMASTER_id_seq"'::regclass);
 :   ALTER TABLE public.pcmaster ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202                       2604    17662    planoconta id    DEFAULT     o   ALTER TABLE ONLY public.planoconta ALTER COLUMN id SET DEFAULT nextval('public.plano_conta_id_seq'::regclass);
 <   ALTER TABLE public.planoconta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            !           2604    17663 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            *           2604    17664    produtoimp id    DEFAULT     n   ALTER TABLE ONLY public.produtoimp ALTER COLUMN id SET DEFAULT nextval('public.produtoimp_id_seq'::regclass);
 <   ALTER TABLE public.produtoimp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            /           2604    17665    unidades id    DEFAULT     j   ALTER TABLE ONLY public.unidades ALTER COLUMN id SET DEFAULT nextval('public.unidades_id_seq'::regclass);
 :   ALTER TABLE public.unidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            1           2604    17666 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            C           2604    17667    venda id    DEFAULT     d   ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);
 7   ALTER TABLE public.venda ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            V           2604    17668    vendamov id    DEFAULT     j   ALTER TABLE ONLY public.vendamov ALTER COLUMN id SET DEFAULT nextval('public.vendamov_id_seq'::regclass);
 :   ALTER TABLE public.vendamov ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            .           2604    17669    vendarec id    DEFAULT     m   ALTER TABLE ONLY public.vendarec ALTER COLUMN id SET DEFAULT nextval('public.recebimento_id_seq'::regclass);
 :   ALTER TABLE public.vendarec ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            W           2604    17670    vendaxml id    DEFAULT     j   ALTER TABLE ONLY public.vendaxml ALTER COLUMN id SET DEFAULT nextval('public.vendaxml_id_seq'::regclass);
 :   ALTER TABLE public.vendaxml ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            E          0    17470    certificadoa1 
   TABLE DATA           U   COPY public.certificadoa1 (id, serial, cert, senha, validade, descricao) FROM stdin;
    public          postgres    false    204   �      G          0    17478    cliente 
   TABLE DATA           �   COPY public.cliente (id, idempresa, fantasia, razao, endereco, nr, bairro, cidade, codcidade, cep, telefone, contato, cnpj, inscest, inscmun, uf, email, complemento, idusuariocad, datacadastro, idusuarioalt, dataalteracao) FROM stdin;
    public          postgres    false    206   �=      k          0    18000    clientecobranca 
   TABLE DATA           �   COPY public.clientecobranca (id, idcliente, endereco, nr, bairro, cidade, codcidade, cep, uf, complemento, idusuariocad, datacadastro, idusuarioalt, dataalteracao) FROM stdin;
    public          postgres    false    242   y?      i          0    17987    clientecontato 
   TABLE DATA           J   COPY public.clientecontato (id, idcliente, nome, fone, email) FROM stdin;
    public          postgres    false    240   �?      I          0    17486    configcaixa 
   TABLE DATA           �   COPY public.configcaixa (idempresa, id, caixa, data, serial, documento, numccf, usacloudnfce, idusuariocad, datacadastro, equipamento, download, certificado) FROM stdin;
    public          postgres    false    208   �@      K          0    17495 
   confignfce 
   TABLE DATA           m   COPY public.confignfce (idempresa, id, numccf, idcsc, csc, certificado, numcoo, serie, producao) FROM stdin;
    public          postgres    false    210   ;A      L          0    17499    empresa 
   TABLE DATA           �   COPY public.empresa (id, fantasia, razao, endereco, nr, bairro, cidade, codcidade, cep, telefone, contato, cnpj, inscest, inscmun, uf, email, complemento, codregtrib) FROM stdin;
    public          postgres    false    211   �A      N          0    17507    finalizadora 
   TABLE DATA           )  COPY public.finalizadora (id, idempresa, descricao, tef, duplicata, contabancaria, prazo, desconto, analitico, sintetico, permitetroco, codcedente, tipomovimento, creddeb, vlrminimoop, acrescimo, tipoad, usaad, descpda, idusuariocad, datacadastro, idusuarioalt, dataalteracao, cartao) FROM stdin;
    public          postgres    false    213   'B      P          0    17528 	   grupoprod 
   TABLE DATA           {   COPY public.grupoprod (id, idempresa, descricao, cor, idusuariocad, datacadastro, idusuarioalt, dataalteracao) FROM stdin;
    public          postgres    false    215   �B      R          0    17534    ibge 
   TABLE DATA           ?   COPY public.ibge (id, cidade, estado, sigla, iduf) FROM stdin;
    public          postgres    false    217   �C      S          0    17537    ncm 
   TABLE DATA             COPY public.ncm (id, ncm, descricao, tec, bkbit, excecoes, icmsin, icmsout, cfopin, cfopout, st, natreceita, cstpc, cstpcentrada, percpiscred, perccofinscred, percpisdeb, perccofinsdeb, ativo, valibpt, natreceitasec, cest, desccest, produto, data, stout, fundocp, icmssub) FROM stdin;
    public          postgres    false    218   �C      U          0    17546 
   parametros 
   TABLE DATA           2   COPY public.parametros (id, limitedb) FROM stdin;
    public          postgres    false    220   ��      C          0    17465    pcmaster 
   TABLE DATA           {   COPY public.pcmaster (id, descricao, tipo, idusuariocad, datacadastro, idusuarioalt, dataalteracao, idempresa) FROM stdin;
    public          postgres    false    202   ��      V          0    17550 
   planoconta 
   TABLE DATA           �   COPY public.planoconta (id, sintetico, analitico, descricao, idpcmaster, idempresa, idusuariocad, datacadastro, idusuarioalt, dataalteracao) FROM stdin;
    public          postgres    false    221   >�      X          0    17555    produto 
   TABLE DATA           �   COPY public.produto (id, idempresa, codproduto, descricao, codgrupo, estoque, unidade, minimo, maximo, compra, venda, datacadastro, idusuariocad, dataalteracao, idusuarioalt, balanca, sinccloud) FROM stdin;
    public          postgres    false    223   ��      Z          0    17563 
   produtoimp 
   TABLE DATA           �   COPY public.produtoimp (id, idempresa, idproduto, ncm, cest, cstipi, aliquotaipi, csosn, csticms, aliquotaicms, cstpiscofins, aliquotapis, aliquotacofins, cfopvenda, descanp, codanp) FROM stdin;
    public          postgres    false    225   -�      ^          0    17587    unidades 
   TABLE DATA           6   COPY public.unidades (id, cod, descricao) FROM stdin;
    public          postgres    false    229   �       `          0    17592    usuario 
   TABLE DATA           l   COPY public.usuario (id, idempresa, nome, login, senha, ativo, email, dataultimoacesso, imagem) FROM stdin;
    public          postgres    false    231   _      b          0    17601    venda 
   TABLE DATA           O  COPY public.venda (id, idempresa, documento, caixa, idusuarioope, idusuariores, idusuarioven, tipomovimento, cfop, cancelado, canrejeicao, valor, estadual, federal, ipi, desconto, acrescimo, subtotal, comissao, basecalcicms, icmssubst, basecalcsubst, pedido, tipodoc, numccf, cpfcnpjavulso, nomecliavulso, idcliente, data) FROM stdin;
    public          postgres    false    233   }'      d          0    17623    vendamov 
   TABLE DATA           6  COPY public.vendamov (id, data, hora, codproduto, descricao, unidade, antes, qtd, depois, compra, venda, comissao, cancelado, desconto, item, subtotal, idgrupo, cfop, sticms, stpiscofins, stipi, aliicms, alipis, alicofins, aliipi, vlricms, vlripi, vlrpis, vlrcofins, ncm, cest, idusuacan, idvenda) FROM stdin;
    public          postgres    false    235   +      \          0    17576    vendarec 
   TABLE DATA           �   COPY public.vendarec (id, idvenda, idfinalizadora, descricaofin, data, hora, ntef, valor, troco, tef, nsu, rede, msg, nrparcelas, origem) FROM stdin;
    public          postgres    false    227   �2      f          0    17646    vendaxml 
   TABLE DATA           U   COPY public.vendaxml (id, idvenda, datanf, chave, status, motivo, nfxml) FROM stdin;
    public          postgres    false    237   �<      �           0    0    PCMASTER_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."PCMASTER_id_seq"', 218, true);
          public          postgres    false    203            �           0    0    certificadoa1_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.certificadoa1_id_seq', 68, true);
          public          postgres    false    205            �           0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 33, true);
          public          postgres    false    207            �           0    0    clientecobranca_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clientecobranca_id_seq', 2, true);
          public          postgres    false    241            �           0    0    clientecontato_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clientecontato_id_seq', 13, true);
          public          postgres    false    239            �           0    0    configcaixa_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.configcaixa_id_seq', 142, true);
          public          postgres    false    209            �           0    0    empresa_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.empresa_id_seq', 2, true);
          public          postgres    false    212            �           0    0    finalizadora_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.finalizadora_id_seq', 107, true);
          public          postgres    false    214            �           0    0    grupoprod_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.grupoprod_id_seq', 106, true);
          public          postgres    false    216            �           0    0 
   ncm_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ncm_id_seq', 3087, true);
          public          postgres    false    219            �           0    0    plano_conta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.plano_conta_id_seq', 224, true);
          public          postgres    false    222            �           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produto_id_seq', 93, true);
          public          postgres    false    224            �           0    0    produtoimp_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.produtoimp_id_seq', 51, true);
          public          postgres    false    226            �           0    0    recebimento_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.recebimento_id_seq', 120, true);
          public          postgres    false    228            �           0    0    unidades_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.unidades_id_seq', 9, true);
          public          postgres    false    230            �           0    0    usuario_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuario_id_seq', 100, true);
          public          postgres    false    232            �           0    0    venda_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.venda_id_seq', 220, true);
          public          postgres    false    234            �           0    0    vendamov_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.vendamov_id_seq', 245, true);
          public          postgres    false    236            �           0    0    vendaxml_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vendaxml_id_seq', 82, true);
          public          postgres    false    238            [           2606    17714    pcmaster PCMASTER_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pcmaster
    ADD CONSTRAINT "PCMASTER_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pcmaster DROP CONSTRAINT "PCMASTER_pkey";
       public            postgres    false    202            e           2606    17716    configcaixa caixa_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.configcaixa
    ADD CONSTRAINT caixa_unique UNIQUE (caixa);
 B   ALTER TABLE ONLY public.configcaixa DROP CONSTRAINT caixa_unique;
       public            postgres    false    208            ]           2606    17718     certificadoa1 certificadoa1_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.certificadoa1
    ADD CONSTRAINT certificadoa1_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.certificadoa1 DROP CONSTRAINT certificadoa1_pkey;
       public            postgres    false    204            a           2606    17720    cliente cliente_uniq 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_uniq UNIQUE (idempresa, cnpj);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_uniq;
       public            postgres    false    206    206            �           2606    18010 $   clientecobranca clientecobranca_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.clientecobranca
    ADD CONSTRAINT clientecobranca_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.clientecobranca DROP CONSTRAINT clientecobranca_pkey;
       public            postgres    false    242            �           2606    17992 "   clientecontato clientecontato_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.clientecontato
    ADD CONSTRAINT clientecontato_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.clientecontato DROP CONSTRAINT clientecontato_pkey;
       public            postgres    false    240            m           2606    17722    empresa cnpj_uniq 
   CONSTRAINT     L   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT cnpj_uniq UNIQUE (cnpj);
 ;   ALTER TABLE ONLY public.empresa DROP CONSTRAINT cnpj_uniq;
       public            postgres    false    211            k           2606    17724    confignfce config_nfce_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.confignfce
    ADD CONSTRAINT config_nfce_pkey PRIMARY KEY (id, idempresa);
 E   ALTER TABLE ONLY public.confignfce DROP CONSTRAINT config_nfce_pkey;
       public            postgres    false    210    210            y           2606    17726    parametros parametros_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.parametros
    ADD CONSTRAINT parametros_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.parametros DROP CONSTRAINT parametros_pkey;
       public            postgres    false    220            c           2606    17728    cliente pk_cliente 
   CONSTRAINT     P   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT pk_cliente;
       public            postgres    false    206            g           2606    17730    configcaixa pk_config_caixa 
   CONSTRAINT     Y   ALTER TABLE ONLY public.configcaixa
    ADD CONSTRAINT pk_config_caixa PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.configcaixa DROP CONSTRAINT pk_config_caixa;
       public            postgres    false    208            o           2606    17732    empresa pk_empresa 
   CONSTRAINT     P   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT pk_empresa PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.empresa DROP CONSTRAINT pk_empresa;
       public            postgres    false    211            q           2606    17734    finalizadora pk_finalizadora 
   CONSTRAINT     Z   ALTER TABLE ONLY public.finalizadora
    ADD CONSTRAINT pk_finalizadora PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.finalizadora DROP CONSTRAINT pk_finalizadora;
       public            postgres    false    213            s           2606    17736    grupoprod pk_grupo_prod 
   CONSTRAINT     U   ALTER TABLE ONLY public.grupoprod
    ADD CONSTRAINT pk_grupo_prod PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.grupoprod DROP CONSTRAINT pk_grupo_prod;
       public            postgres    false    215            u           2606    17738    ibge pk_ibge 
   CONSTRAINT     J   ALTER TABLE ONLY public.ibge
    ADD CONSTRAINT pk_ibge PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ibge DROP CONSTRAINT pk_ibge;
       public            postgres    false    217            �           2606    17740    vendamov pk_movimento 
   CONSTRAINT     S   ALTER TABLE ONLY public.vendamov
    ADD CONSTRAINT pk_movimento PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.vendamov DROP CONSTRAINT pk_movimento;
       public            postgres    false    235            w           2606    17742 
   ncm pk_ncm 
   CONSTRAINT     H   ALTER TABLE ONLY public.ncm
    ADD CONSTRAINT pk_ncm PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.ncm DROP CONSTRAINT pk_ncm;
       public            postgres    false    218            {           2606    17744    planoconta pk_plano_conta 
   CONSTRAINT     W   ALTER TABLE ONLY public.planoconta
    ADD CONSTRAINT pk_plano_conta PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.planoconta DROP CONSTRAINT pk_plano_conta;
       public            postgres    false    221            }           2606    17746    produto pk_produto 
   CONSTRAINT     P   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.produto DROP CONSTRAINT pk_produto;
       public            postgres    false    223            �           2606    17748    vendarec pk_recebimento 
   CONSTRAINT     U   ALTER TABLE ONLY public.vendarec
    ADD CONSTRAINT pk_recebimento PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.vendarec DROP CONSTRAINT pk_recebimento;
       public            postgres    false    227            �           2606    17750    unidades pk_unidades 
   CONSTRAINT     R   ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT pk_unidades PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.unidades DROP CONSTRAINT pk_unidades;
       public            postgres    false    229            �           2606    17752    venda pk_venda 
   CONSTRAINT     L   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT pk_venda PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.venda DROP CONSTRAINT pk_venda;
       public            postgres    false    233            �           2606    17754    vendaxml pk_vendaxml 
   CONSTRAINT     R   ALTER TABLE ONLY public.vendaxml
    ADD CONSTRAINT pk_vendaxml PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vendaxml DROP CONSTRAINT pk_vendaxml;
       public            postgres    false    237                       2606    17756 (   produto produto_idempresa_codproduto_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_idempresa_codproduto_key UNIQUE (idempresa, codproduto);
 R   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_idempresa_codproduto_key;
       public            postgres    false    223    223            �           2606    17758    produtoimp produtoimp_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.produtoimp
    ADD CONSTRAINT produtoimp_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.produtoimp DROP CONSTRAINT produtoimp_pkey;
       public            postgres    false    225            i           2606    17760    configcaixa unique_caixa 
   CONSTRAINT     g   ALTER TABLE ONLY public.configcaixa
    ADD CONSTRAINT unique_caixa UNIQUE (idempresa, caixa, serial);
 B   ALTER TABLE ONLY public.configcaixa DROP CONSTRAINT unique_caixa;
       public            postgres    false    208    208    208            �           2606    18012 !   clientecobranca unique_idcobranca 
   CONSTRAINT     a   ALTER TABLE ONLY public.clientecobranca
    ADD CONSTRAINT unique_idcobranca UNIQUE (idcliente);
 K   ALTER TABLE ONLY public.clientecobranca DROP CONSTRAINT unique_idcobranca;
       public            postgres    false    242            _           2606    17762    certificadoa1 unique_serial 
   CONSTRAINT     X   ALTER TABLE ONLY public.certificadoa1
    ADD CONSTRAINT unique_serial UNIQUE (serial);
 E   ALTER TABLE ONLY public.certificadoa1 DROP CONSTRAINT unique_serial;
       public            postgres    false    204            �           2606    17764    venda unique_venda 
   CONSTRAINT     l   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT unique_venda UNIQUE (idempresa, documento, caixa, numccf);
 <   ALTER TABLE ONLY public.venda DROP CONSTRAINT unique_venda;
       public            postgres    false    233    233    233    233            �           2606    17766    vendaxml uniquekey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vendaxml
    ADD CONSTRAINT uniquekey UNIQUE (idvenda);
 <   ALTER TABLE ONLY public.vendaxml DROP CONSTRAINT uniquekey;
       public            postgres    false    237            �           2606    17768    usuario unq1_login 
   CONSTRAINT     N   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT unq1_login UNIQUE (login);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT unq1_login;
       public            postgres    false    231            �           2606    17770    usuario unq1_nome 
   CONSTRAINT     L   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT unq1_nome UNIQUE (nome);
 ;   ALTER TABLE ONLY public.usuario DROP CONSTRAINT unq1_nome;
       public            postgres    false    231            �           2606    17772    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    231            �           2606    17773    cliente cliente_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 H   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_idempresa_fkey;
       public          postgres    false    211    206    2927            �           2606    17778 !   cliente cliente_idusuarioalt_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_idusuarioalt_fkey FOREIGN KEY (idusuarioalt) REFERENCES public.usuario(id);
 K   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_idusuarioalt_fkey;
       public          postgres    false    231    206    2955            �           2606    17783 !   cliente cliente_idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 K   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_idusuariocad_fkey;
       public          postgres    false    206    2955    231            �           2606    18004 .   clientecobranca clientecobranca_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientecobranca
    ADD CONSTRAINT clientecobranca_idcliente_fkey FOREIGN KEY (idcliente) REFERENCES public.cliente(id);
 X   ALTER TABLE ONLY public.clientecobranca DROP CONSTRAINT clientecobranca_idcliente_fkey;
       public          postgres    false    2915    206    242            �           2606    17788 &   configcaixa configcaixa_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.configcaixa
    ADD CONSTRAINT configcaixa_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 P   ALTER TABLE ONLY public.configcaixa DROP CONSTRAINT configcaixa_idempresa_fkey;
       public          postgres    false    2927    208    211            �           2606    17793 )   configcaixa configcaixa_idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.configcaixa
    ADD CONSTRAINT configcaixa_idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 S   ALTER TABLE ONLY public.configcaixa DROP CONSTRAINT configcaixa_idusuariocad_fkey;
       public          postgres    false    2955    208    231            �           2606    17798 &   confignfce confignfce_certificado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.confignfce
    ADD CONSTRAINT confignfce_certificado_fkey FOREIGN KEY (certificado) REFERENCES public.certificadoa1(id);
 P   ALTER TABLE ONLY public.confignfce DROP CONSTRAINT confignfce_certificado_fkey;
       public          postgres    false    2909    210    204            �           2606    17803 $   confignfce confignfce_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.confignfce
    ADD CONSTRAINT confignfce_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 N   ALTER TABLE ONLY public.confignfce DROP CONSTRAINT confignfce_idempresa_fkey;
       public          postgres    false    2927    211    210            �           2606    17808 (   finalizadora finalizadora_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finalizadora
    ADD CONSTRAINT finalizadora_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 R   ALTER TABLE ONLY public.finalizadora DROP CONSTRAINT finalizadora_idempresa_fkey;
       public          postgres    false    2927    213    211            �           2606    17813 +   finalizadora finalizadora_idusuarioalt_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finalizadora
    ADD CONSTRAINT finalizadora_idusuarioalt_fkey FOREIGN KEY (idusuarioalt) REFERENCES public.usuario(id);
 U   ALTER TABLE ONLY public.finalizadora DROP CONSTRAINT finalizadora_idusuarioalt_fkey;
       public          postgres    false    213    2955    231            �           2606    17818 +   finalizadora finalizadora_idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finalizadora
    ADD CONSTRAINT finalizadora_idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 U   ALTER TABLE ONLY public.finalizadora DROP CONSTRAINT finalizadora_idusuariocad_fkey;
       public          postgres    false    2955    213    231            �           2606    17823    configcaixa fk_certificado    FK CONSTRAINT     �   ALTER TABLE ONLY public.configcaixa
    ADD CONSTRAINT fk_certificado FOREIGN KEY (certificado) REFERENCES public.certificadoa1(id);
 D   ALTER TABLE ONLY public.configcaixa DROP CONSTRAINT fk_certificado;
       public          postgres    false    2909    208    204            �           2606    17993    clientecontato fk_idcliente    FK CONSTRAINT     ~   ALTER TABLE ONLY public.clientecontato
    ADD CONSTRAINT fk_idcliente FOREIGN KEY (idcliente) REFERENCES public.cliente(id);
 E   ALTER TABLE ONLY public.clientecontato DROP CONSTRAINT fk_idcliente;
       public          postgres    false    240    2915    206            �           2606    17828 "   grupoprod grupoprod_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupoprod
    ADD CONSTRAINT grupoprod_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 L   ALTER TABLE ONLY public.grupoprod DROP CONSTRAINT grupoprod_idempresa_fkey;
       public          postgres    false    215    211    2927            �           2606    17833 %   grupoprod grupoprod_idusuarioalt_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupoprod
    ADD CONSTRAINT grupoprod_idusuarioalt_fkey FOREIGN KEY (idusuarioalt) REFERENCES public.usuario(id);
 O   ALTER TABLE ONLY public.grupoprod DROP CONSTRAINT grupoprod_idusuarioalt_fkey;
       public          postgres    false    2955    215    231            �           2606    17838 %   grupoprod grupoprod_idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupoprod
    ADD CONSTRAINT grupoprod_idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 O   ALTER TABLE ONLY public.grupoprod DROP CONSTRAINT grupoprod_idusuariocad_fkey;
       public          postgres    false    231    215    2955            �           2606    17843    pcmaster idempresa_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.pcmaster
    ADD CONSTRAINT idempresa_fk FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 ?   ALTER TABLE ONLY public.pcmaster DROP CONSTRAINT idempresa_fk;
       public          postgres    false    211    2927    202            �           2606    17848    planoconta idempresa_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.planoconta
    ADD CONSTRAINT idempresa_fk FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 A   ALTER TABLE ONLY public.planoconta DROP CONSTRAINT idempresa_fk;
       public          postgres    false    221    211    2927            �           2606    17853    pcmaster idusuarioalt_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pcmaster
    ADD CONSTRAINT idusuarioalt_fkey FOREIGN KEY (idusuarioalt) REFERENCES public.usuario(id);
 D   ALTER TABLE ONLY public.pcmaster DROP CONSTRAINT idusuarioalt_fkey;
       public          postgres    false    202    2955    231            �           2606    17858    pcmaster idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pcmaster
    ADD CONSTRAINT idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 D   ALTER TABLE ONLY public.pcmaster DROP CONSTRAINT idusuariocad_fkey;
       public          postgres    false    2955    202    231            �           2606    17863 &   planoconta plano_conta_idpcmaster_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.planoconta
    ADD CONSTRAINT plano_conta_idpcmaster_fkey FOREIGN KEY (idpcmaster) REFERENCES public.pcmaster(id);
 P   ALTER TABLE ONLY public.planoconta DROP CONSTRAINT plano_conta_idpcmaster_fkey;
       public          postgres    false    202    221    2907            �           2606    17868 '   planoconta planoconta_idusuarioalt_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.planoconta
    ADD CONSTRAINT planoconta_idusuarioalt_fkey FOREIGN KEY (idusuarioalt) REFERENCES public.usuario(id);
 Q   ALTER TABLE ONLY public.planoconta DROP CONSTRAINT planoconta_idusuarioalt_fkey;
       public          postgres    false    2955    221    231            �           2606    17873 '   planoconta planoconta_idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.planoconta
    ADD CONSTRAINT planoconta_idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 Q   ALTER TABLE ONLY public.planoconta DROP CONSTRAINT planoconta_idusuariocad_fkey;
       public          postgres    false    2955    231    221            �           2606    17878    produto produto_codgrupo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_codgrupo_fkey FOREIGN KEY (codgrupo) REFERENCES public.grupoprod(id);
 G   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_codgrupo_fkey;
       public          postgres    false    223    215    2931            �           2606    17883    produto produto_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 H   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_idempresa_fkey;
       public          postgres    false    2927    223    211            �           2606    17888 !   produto produto_idusuarioalt_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_idusuarioalt_fkey FOREIGN KEY (idusuarioalt) REFERENCES public.usuario(id);
 K   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_idusuarioalt_fkey;
       public          postgres    false    231    2955    223            �           2606    17893 !   produto produto_idusuariocad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_idusuariocad_fkey FOREIGN KEY (idusuariocad) REFERENCES public.usuario(id);
 K   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_idusuariocad_fkey;
       public          postgres    false    223    231    2955            �           2606    17898 $   produtoimp produtoimp_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtoimp
    ADD CONSTRAINT produtoimp_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 N   ALTER TABLE ONLY public.produtoimp DROP CONSTRAINT produtoimp_idempresa_fkey;
       public          postgres    false    225    211    2927            �           2606    17903 $   produtoimp produtoimp_idproduto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtoimp
    ADD CONSTRAINT produtoimp_idproduto_fkey FOREIGN KEY (idproduto) REFERENCES public.produto(id);
 N   ALTER TABLE ONLY public.produtoimp DROP CONSTRAINT produtoimp_idproduto_fkey;
       public          postgres    false    2941    225    223            �           2606    17908 (   vendarec recebimento_idfinalizadora_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendarec
    ADD CONSTRAINT recebimento_idfinalizadora_fkey FOREIGN KEY (idfinalizadora) REFERENCES public.finalizadora(id);
 R   ALTER TABLE ONLY public.vendarec DROP CONSTRAINT recebimento_idfinalizadora_fkey;
       public          postgres    false    227    2929    213            �           2606    17913 !   vendarec recebimento_idvenda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendarec
    ADD CONSTRAINT recebimento_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id);
 K   ALTER TABLE ONLY public.vendarec DROP CONSTRAINT recebimento_idvenda_fkey;
       public          postgres    false    2957    227    233            �           2606    17918    usuario usuario_idempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 H   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_idempresa_fkey;
       public          postgres    false    2927    211    231            �           2606    17923    venda venda_idcliente_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idcliente_fkey FOREIGN KEY (idcliente) REFERENCES public.cliente(id);
 D   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idcliente_fkey;
       public          postgres    false    2915    206    233            �           2606    17928    venda venda_idempresa_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idempresa_fkey FOREIGN KEY (idempresa) REFERENCES public.empresa(id);
 D   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idempresa_fkey;
       public          postgres    false    233    211    2927            �           2606    17933    venda venda_idusuarioope_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuarioope_fkey FOREIGN KEY (idusuarioope) REFERENCES public.usuario(id);
 G   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idusuarioope_fkey;
       public          postgres    false    231    233    2955            �           2606    17938    venda venda_idusuariores_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuariores_fkey FOREIGN KEY (idusuariores) REFERENCES public.usuario(id);
 G   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idusuariores_fkey;
       public          postgres    false    233    231    2955            �           2606    17943    venda venda_idusuarioven_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_idusuarioven_fkey FOREIGN KEY (idusuarioven) REFERENCES public.usuario(id);
 G   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_idusuarioven_fkey;
       public          postgres    false    233    231    2955            �           2606    17948    vendamov vendamov_idgrupo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendamov
    ADD CONSTRAINT vendamov_idgrupo_fkey FOREIGN KEY (idgrupo) REFERENCES public.grupoprod(id);
 H   ALTER TABLE ONLY public.vendamov DROP CONSTRAINT vendamov_idgrupo_fkey;
       public          postgres    false    235    215    2931            �           2606    17953     vendamov vendamov_idusuacan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendamov
    ADD CONSTRAINT vendamov_idusuacan_fkey FOREIGN KEY (idusuacan) REFERENCES public.usuario(id);
 J   ALTER TABLE ONLY public.vendamov DROP CONSTRAINT vendamov_idusuacan_fkey;
       public          postgres    false    235    2955    231            �           2606    17958    vendamov vendamov_idvenda_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.vendamov
    ADD CONSTRAINT vendamov_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id);
 H   ALTER TABLE ONLY public.vendamov DROP CONSTRAINT vendamov_idvenda_fkey;
       public          postgres    false    2957    233    235            �           2606    17963    vendaxml vendaxml_idvenda_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.vendaxml
    ADD CONSTRAINT vendaxml_idvenda_fkey FOREIGN KEY (idvenda) REFERENCES public.venda(id);
 H   ALTER TABLE ONLY public.vendaxml DROP CONSTRAINT vendaxml_idvenda_fkey;
       public          postgres    false    237    233    2957            E      x���ۮm�����X`<�b[�:2�%c�}�"�4��~�|?�����[k�9�� ��C�8�7��~W���f�s|��G#��GH!���S.���l�2F�=8��!��m�����绣�o>��ߟ
������#�s�{���>���gz�,��Ͽ-��y���w���J7��oiv[�1:ϕB���^|�V���SO�~F8�������{;��۝kn[��型պR]]ﾱ��۴3��F��Ֆ��5��}��>V,9��vr�f�fY�=�b1�`�Y�b����ܝqT�g�^�����9;��|��<��Ӄ���ZF���턾s�y�u7���<��x�����y{���
��4w�L[6>�R�����=��.9�eu�c9o���[�9i�]��vv������~r/��#V�%��g��>���n�|&ʹ�L�8�}�T}��	�Z�����uW��Wk����=&���e�T�p���gϹx���ƣ�ƌ�7��B��YZa�,��;�q#�Z���Ĵ��o�]��<f�m�����Q��a�2���֭�ZZ�q�u֢�]N�3�ʅ���` ��[��ZY��U;��Z���}ʌ��a2����>v4f��-�Җ9�|.�]O�䙵j�/+ףOO���dkH7�a�{�t��i2���rڭ����$Q)����tbyL�55�JLg�$F����]˫��,Pf�Y&=��<��I?��UZ>܀x���}��ڛ�̵u�҉؝R87�AN�7�sW�<hM�D�T*�a�ƛn#M;�>)ظ�g)�c-u񘛩^�x���'0�ԙ�n�]�ջS�y��TR�+΀ sөgf��9G%�X|�̮��z�cuR������*!r'ϕY�	�lR�G��X���_�)^Vax��X�������[v�q�ƀ�b��"׍���w�)��uR��(#�e�v�ȕ��� �A�;9v�"�ɡ��]�)9�+`�qF���Wo��j�������}�,@Iɓh���s�k+����e�0}�X�7OE��]藙�Xv�i'FZ��=�z}�v"K� �q��ϛ�) 0<��r����^�����5�Täuf�[.�+�C��KT�~=�i��"|*�_s�갈��;1ᚼ�6��3hf-O�D"�<V`� S̯ygciX�So�c+"��Y�����fD��S����qG�o����.v#	M8&�d� �~'d��v���Ze���57p1�pL_�-?_I�zI��q6H���	����D:YY�N�a��x�����2*u��ޓ�ހA�X��A|LP��_}���,`ߍ@z�;����v�\� >&12	~.^�C�������1�H�h��3(m�X;���R.Ķ
2�2���]%(�F |� ѻ�Bf�h\��:����/� �Wc�	��3*T�qUԀ7#[�e�	�\�ZN���ȅ�쀁��5ad����GD��X���8�)*	��*�ODE&� ��:{�����e1Ki�6����{�+�L�qx�v!����f��'��(9epȀ8��3� �arfn��<��[AhV�=`�{;��:�	�ߙI�:�8$�p'���F(�R+��$ ��eT�j�A�tIA:���L�%vc(�U�{f¥%�0�\V��'�/�u	����bx�ˡ��N�	��NV![�g�7�h~����R����J`�_"��!B��o����_~W�>^#�+�khDR�Q#�=�#��6JB���sg]�(
=����x�I��ÿ<E�����W?��@r������~�߯?��������T3�{���_�?_��e��>��k��w�s,=I�G`�z�f���]P�s���c����M��O S�����xW��%yKZ��ʄ0��H�yÌFǇ�ǫv��@E��A�"�'�p;�n@;J�����"C���X��Gg���Q ��KT����FDeEF��ETJp��8'���ܮ��y�ꝡ�UU!��@��H��_�8���$>���dn�,0�G$x []�-�4"+���(�rX�IF�pZ��^�7�p��� ��dRz.�8�o��O�Jd�0��_�T�l&��[#S��Q�P�s��B��$�Z.vT}�	GrѠ��d��`K�$8���\���ԡ�0V��	H/'�"c���,��KTRƛ�4b��)fZxw7O�G�*n.!ģ��xXG�P-�iL�v�^��� k�2Hށ"���uGd;&͙�W��ϭ�q��j�zmm,� �a���Aw"��=��ڱ�()8��pjCz9�AtTQ��ӒNĭ��C�|!��(8V�?�u�^D�r��D,���և�[��I�q�� Z�-/x�T����a����R�7?a���w�m!w8�5T��j�E C#"��_i��kcb50k�gY��$&��5�����֑�yE�r�c�h�
�'I�`(q�R$�ar�d�vP5Pm(o8a���o�Y�I�y&2��PO��6� � �}�у�t�E�%aJN-����#�Mh��z�r�	qs�bٲ�Ls2�8��&���0e>��Mu�y2�%s�XG�o�H ��7�s��)N�!�Iw\>p��n5�V�.�������D�d���`:���/�0���d�DPQ$y��o�_��e��,5fH�X���~��N��h�9�i�h��ƃ�lgͿ�=Z�r:�Q�JLc娈���w[B?���n�Yx��B�Y�/o�@B��!��>�ĲI���HÒ�E�^:=K��QJ@�����k����!��U��VX��հ�#p]P	D��^���x�%y���Dd%���Z�-aw� ���ro������M��jR��2a��(���KD������b����&�?!YK'�E�0� �*xUP�[6�R	�����){�=s�"��0
�޲����s�
%�C��ݵ��`E\U�t$S� R%�&����=�H�5��U�@�a:{!N \~aI���[2�<�`P�a�0�[\���y����Ł�d��4=pf�&ڵ�D�J5��ʖ��z)q:3�H$�aE�u�yB���S�kS=�Z��X�Q`�{Y+.��u��\�`��>2��H�E�af9)y��?��H��'�|�G��?k<��xSԈ!G	Oq-����z�v��u�L��74X��d¤E����7��09�ÁDj�(@o���N}�T�;R��&���:�xf�'��>0#�+�	y�:Nx�_�FPPh�#S���;2B@���n�|͸9�X	��MSN�+$�L0�Pm�Uzc�	�2S� �����(h�V�`¼�hX�c%���^��%���<���'YXp�@^rjQ���P뒯���ɐ�� ^!ʨPp�^<n�Dޝe,�f\��0"PQU�Xt�XE�=��Yx4����D�ui�p�P�������t8��_�Bp%��`Rp:�7x�FE����{�ev��란ocaP�S=.h�fG�3d"�\�u(MR6:�Ah�NHL�7��J���`<	������V��:F��2ʥ0�d0;ʱ���y�[���fލ�ȸ�B�WP����P+	%��z�:��sL ِ�R��TA��J��*x3х%�#����U�0 :,#��Ȍ�v/���}ԊF���|��le�`�P+�J �t�wt���D�!��?��H'�� ���Ž�g�k>��
��D��$�P!2Mb���'B�;3�m���M(=	\�p�x�V�$;��zA�jfKE1R|>��	"?Ih�*5&>#ɜ�ӊ�H�()[�P 
��J�R�:NB!��10�(��e`|��IK����<�p�-#�A�!Ɋd�$yR*MT_���������u���.�CQ��G��	Q�g�	��C"���$���`i�Y�P1!;Cju�z��qd��0h`��B��Ɋ!�    JYXX���m��/3��� �˄!|U�AN�|D�̞��\�)Yզ�2}��Ҟ������M��u��o�TI�L<v��	6���B���ԙ�����������U|�>s�M�&L�@^�)#����P.�k%SH�Ll9�����&� �|����_�}�=�\d^���]�a!� �KȘ���QW��vt[U=&#	D�	]�?5I���.~��r@3���M�_~b͚L�Aa�q�K��ʔ����q���E�A��e�����VR�2��e�k����*�s� �l��^�, ]T8.��@#d`^c�&��n�~!�y���1/H}��j��>6�)�̺�I����L^`��y0����4��K��§��D�s��<�}3���` ��o���u8M=�lF��D����/h!˼�Ep�Kˬ2ZƆwĤ,K���C���)H�x��D!���l��>����(d��2��g�#��g��{�U��wAG捨���I(���7ԫ>�Q`1���j*x�Y/�����0�����S����Rc��Χ���V ���NS�8
�4���g�/�ত�I*��3�h'�»ʄ�!��I�:t���ފ��G�i�'IgAw0�WL-�� �'���@p�a�7x�`����:�z���$H{�C��}p��g�@x���)Xl�G���1�?�r��(��@�3��W'���g��jg|VBc}'
�I�#x���[�ĳ����F� 3��X�%^d(�3�1m6 �&���DrJ�E�
S J'jL�	��JR�`cw00��uEkq!�E� ��J}"���p�N��z�#y�.�UJ��vvIw���F��.�~2�M��A8�~`YA��L,� �0�/�$yr#�Io�pP4Ld�E�S�7ڈ��w;�?#��Ao�X	u�Hi���C�
f%�)h���CJZQX,J���S��U���DGQO��?~��@%K����*x�ľ�V��vщ ˅����A]$j���T���D�������pSJm.�s�'� C��Y�6�Q�d�� �-H[�'8�Lo�ԡ��%x@���oO��raK�[����߮	LB��h��V�`]k���>��7S�_ۢĚf�b�c@,�	���=D�C.�I�n��Q)Sst�*>G�l��v��2����ڋ��W[m����ic�T���!T����&����ȃ-'�-������Mm�6�v4S��Yi������s��1��'����$�1ci�X0ͣ�V-�&rU��=*�ʙ��O	k���x��+��%;R�4v�g$����]2o��Be	?��*�L������W��Xhj�FDh�Ȋ,�����%d��f��9M��<�
�*w��O�#(g�n0Ze	`Bn����juD�T��M�/5!u-¼�&A6��bnA;sq6��A#�AT��W:���0��.^��7����+�u�:���H��
F�I� ê�&3��T�VT��G	Aa��A���(����Z!B�0��u�O�x�	-���r&�W�!.���(/  xO��8d��`D��dG�Lr�'17)�*��h���VO�(�EG/X1 ���Jԍ�KSQ-��?�Xy���dIRF[F�����.��*HC�FƋ|b�n t�	$��Sjst�����}ůO�D�93�A̤�x`�_߈�y�@���6%�Y���Q`a��Hb%H�J����Y)��S�`ƅт@�@�9���|�QQ���08:�1
�E��:����ĸ1�J8a�:�O�u��6$}Չw�ܦ�Ł`�v�jL[Xoc���!4��uThw<�r#ɡ���@4��4��gG��u�� 3��v1P$�Sy����^|��Z���J���jP�d/X%Yg���M�GV��t��>�-z@5ӣG�ߢ-v��C�/�
 cVr˴�Mະ,3�E�y��aY���-��$X�E,�P i}�5��_��Ec�5њۨ��ۺ4vRUP�\�$�Ă(ꛥG�w�J�͓�2&l�Um��6/2�n��Ps�K��	�KB0��X*�a�O:`I�"L�E��#��_5(��0uX�!DaAV�q_�l��c¤D��^�'�V/J�S�>���\�T�Z*�-� xUS*dI�����OեC�LB�|2<(G�3�̓
np���:;8mG��<���@��WO����0+�Ν'�;Ќ1�6v�
o�X��_���;t��Q#)�8�PN��q�P�&P9;ڸ��1��@�xE��`��#ɠ*�>ф_���T�/"�b\�U�S�����ڟ�P�AL"�#��>h�WQ8��i��" 51 �p/�1��i�M������I�j-�7	Ȝ
ޣ�_wo�a��0��R�˵�1"���D�`~S^*�80��!A	�� ��fu=i��(p
Z��!T��waʢ�*D���/@-��<�vd�R�-_�k�&	��F�і��hEsh�|�Eh�޽a��Z�b+�����-^�J"��I}�����WF��2��VV�xuAH����Be0-��0Ã��j��7�sίpƪ*EQy=_V
%��ς7��T��BЀ�^�(��ԖH@���ڗ@����j52�D`Q��&�v� j�!(��w|���� #c��K�^+)� '0��ގ�1�c���� �Z���L<�R��!�G�*u3��)�юH��1wU�q~���F�
,W����Gug�#_�cY����=0xV�U?N�e
�1�l�VC��B�"LC׀&C��9a�,�:�HydC���ES���R�2Xg3蛉��������OS�j�)5"ϵ3�,l*��ǵ�{�f��湱� V����� tT�ʐ�6|�g�"X��W5}\m&�|i=f�|P��I���q��_�ܘn�UT�JUȰ� 6�.po�8� k��'b᳀�# �����:�ۚ��P�6aqQ~Ȋ���A���Q+��D��hU;�'�9�����Z�����N.�kX2wxҫ�z�%���P��k���� ,m���$�G.�9�S�T�W�E�m#,!�t�1��:��F{ 
oJu�Hb�'@��)�U�
җW���;�T2 L
�3�2�&E=��30�A&�[U<O��<�T |��{{���17j��љ|#%�P�L��\[i������H P��DQ_UE����恔�-���9��I&��@��s�kw�Z��I��Dij�C���1�M;}�vԫ��v��=Q��Z�HF��YY @�`�)��(%����Ql��"�?�9�y�ڿ������#J2����@x�K�mD�n�r�x����RK; �0�XЫ.u���->��Q��pl����N�4�Q:`��$5�@l�~�g�i�g�MG@���AÄl;�UYT�񂾐�[ μv�A3������j��bZ��Ma��0�O8�͔�,���o��H��p_���,b�uj�A�|���攕�y��r�M�j���2��Q�}�9V�J#r��f`��Ɂ�t�oŃ,`=��P�c��+YV^����C���	L).���0@�91�sOj�V�`��>c���u���e��wu2#(���#�Ue���2s�I��qFG��'\He��(^F}�<�P�H�&��e���a��j��IH��\��U/q�&�dV�;D=�r�����!�a�*��mH\i�3e&�1�ľ�u�]gj�v%hIu��A)Õ�F���6�jQ=:��Y��,0	�y�LN�PbJ�5��9ĐBɍ,V���y��~)�Ñ$���v�ѶCS/2ܨ�:�^W�:�W[�
KD��pJ���1"{�$Y�*Z0��{�W��*m��O�Tl(��*#�����9�4<"ZH��X��*��T6 :��.Jg����D1�Q��΀�Re�ז%�Յ?�eN��U<gQ�^��zI L  bR��}�Te�q�$�Jp�*A����T�}�X>�9�H��6AY]Y�m�nMA=�$���dպw������B�xG�0	)�=�(�@�;w�
K|G	�]T�h��)q"%��d�T����eG��-��&�v�`^��u��듄��;�w��I����Nj	*piW�&�^"('4�	j��������0?��L�J͖`���N1W%��	�r(M�[g�R{��CC �(S��^�� �(�T�U��Q���$�9��_`�6��?bQ ֔�Է+ʂ��N���=∀)�me� �V��b�tD�|G���BD��X�Q5Fi{8k�q~07)n>͜;��BB���l��L��(*��7)L�[Wg������J�ϪL�5v��p���|%|a��{+�70縉+z-�h���.{��� �RAA�'W!?	X�q��3����:K��]��> �d޼�W/a��������a��ĵ�v���W>����
p��~�6$O=ՇԹ�?Xu%����ˋ���ք��"-�l�AI��Ը���hN�b�,-�_�I���ڰL��MTm+O��G�Ie\�lT��R�I�ĭ��p��,b��l���)U����u�	�gb?��E�F2�1�����aqd�,2�� �Q���M���S}2�p
P�ګ�T��P�G��8p`��`�3Qg�ҿ��Z�j�:L��ZH+/z�%�QkC)͵ަ����ND#)��Ԏ��T��"[G55�vJ��`:ԍ�d� :�r�(#j�B�V�1�ue*1NM=�d�x:��K��n�չ"\���3���SDu���'m�5���*S���ˮ��.|�fKnb���R�M҈+���譝	車A�ä3�r��7L
>�U@e���[�׆��!)���� Yމb�vё�I���o�b�W-�h��F8�̚r�+M����@	,��~P'����:ɗ�Ɨ�&P��Zu@�b?M��$��Z�$���JP��S�խ����.\uYw�Q���A�͜�Tk��9ǀ�Ʃ]7̷�n��Q�G���- {M��E%+���Z�'co�u�dx[gv��w�,��^��d(����S���EK(�'�s���1,�x��AMW�g���i����i��x@uL_K.�چ�f���+�K�q;�8�Ӳ�,:��	�5�u����,0x�� B�V�	�T1���q[��-��̠J� ��n!� �����3�y��T] �1R8E�2�a��������Nz����sC��+o����߀2��a^����Lp�^�D�(йZ�AG���q���j2I���
�v7(�o]@��yDؼ錺z��!�]e�k���uF9��P�j�ՙ�/#�1ǌ�6��gw����F��G��c�n8M��
|�C�A�S�!�.�ӡ"l��?0L��p�!�ӹ��(?��<F���IW�b�ےN��ˈ3���P�S/�ʒ�:�n�՝0����v]�mfD�J��WS1���wD���d��
$�4���1]X��r&�a�s3'}<-��ex���X�� ��,�[ʴ6U	���[�y�o��b9'�%��ǎI�j#,�K���lJ�$QEL�%�]m2�-0�^����:%�TFj1�j翨%��:>�����S�t�r*���2@Kigaut��\1�?�x{�:t��� 5&�)�1���UIU��wc1044ߙd)��'�|�\��#�W
܄����]nmv�a�j�X�m�\j�!��G��x�V�:X�c���\�M*-�=���TDe��<:���duV%�@4�x��ptfE��?��Xoաפolp٬��a�:�����9��ۺ�yR�j^�w*bC�2�8��k�ٯȓk�|��T�; �oQO��P�ko�H���[P��K��"*�eI�h}���:?��6R0r�!��FHm@(����$5�ՙ�����/��9��}G�20PG �uйA�Dx�M�?�!�.}Gh��诧�P9:.r�kw�:�Ǔ^@t��o5*6Q�B�����;@��Z��ѷ���C��C���^"��)�u:.k+��(������ʾPw���d ��'9`p`�,���c�[�ÁZ�:��R1����n��Ϻh���:jGP��HO��<:۩�}I�pѦ�%�ZO�t�ֆΖ"*}��:���*薡&��(bd��[�P�'�����HJ�D�E�z�,��ߦ�A���K2.��aɰ�xR�I��
�������d�E��\|��0J���{prL�"���AP��?�N�K�*2S��Vw�\�Y���4CY� n��������*�G2@.�ӀR���|ys֦�J��Z�:^x�z����e�\��fо�\�I��+�Z8��W�7y��E�FHm� �6N]��.d^x�QĐJl����g?j$�1���~�3T}
�����G&L~����c9ϦRR[�M�YB2�9\��Eg��4�6I UT�i��6�/�p�x�z�$k{c�j+� �H�j/����g���Pqˢ�?��J��tB�lű{$��
�r��}�ETCxmjp���dv���3nS!tA$-��PC�٦��+��d�\DS8���h�u��JL��C�H�Xsl:��C_:�	5�+�t0��	I9Aͤ�p�Hu�
	��m���%0:�츒�Z{a˚� ���A�v1�oHn�k��Lo�P쒆�A~���JH�L� ��#-�{�L[*;
]���n8�j,b9�;��E�m��*��UG4л!��}u=�[ V8�b�n�#G�4� �M���@֊
tW���2Q�p�
5���[�z��ԱWhQc��'¿�)�o�÷!��G��)�7)��7��ۯ���ӟ������������?}��w?���?�������_��ݏ���������_������?��������ڇ��׳�_��>~�����������{?�����o�'���|��O��Ǘ�^����_��������~����_����㟿��?���?|��Ǘ�_��z�˟>����������ob�l{_����_�ۯ~���wD��      G   �  x�U��N�0�ϓ��rZ$Zy�$M8u�x�(�a�Bꥫ��+�J���Ƌ1)�],ˣI��o�X�p(���T�d�8�bG�jH��y�/���Z�o�V�r���)��y���Z�ՈF���~p�N�����-��t�kj�T響���!�L	�����j��"�-�h��ߩ��w��n�J]�8����r�R�Y]�އ��FP����M %VU%�Z~v�>�Z؝�4�m��ZgUU`6��à�b��v�{�c訦0�W���Ԟ���{�X,b��j����(�/<�����.�H����K�����n��ËL�V!��t��G�g�*�gE!Jk�d�Ӳ���Hd���eG��ǖ���J���<I�w����      k      x������ � �      i   �   x����J�0���)�e�4�4Je�J��K� �m+���v�Y���e��?(�N�V���h@�F��3JL.W}.����\8Uo�T@Z>kZ�q�PVs! ��|�!�lH�w��kz�C�RI�~vs������{�'T�H�ܑ�m������<�4�<�~f�F҇��V�n��[�ˍ�|�^_�q�ˮ}x6�?}�9\<��}��%r��A�|��yY]���k'��UQ?����      I   �   x�M���0D���$m ��/��"�̨u���oqh29d��y6D��l
�8��j�T��-�@������s_��8L���0�6��y�S��W6��]]�id�y�����$�v�!��9�����Y'(����[V�rx\���o>�8i��q�8B      K   A   x����0���.2��H҅��_���5�g��r�#�^e�ή�2X��p}���4ys�y      L   �   x�=�M� �׏Sp�	?��l 3��0O�y�sn�i�-��Ёi�ܥ���]Cpo]��S��2J轒�غ���(W���Z��e�����&L!Q�)�!���6Yg"����.�����&�����-=LG}sث磔�&�      N   |   x����
�0D��w�*�V�Q�����`�EA��-t!�.��H�A0�u/'4,2��r�^��m�d�ɐW1sL��-�X��~l�~�b-����Hhh���z����C������;ց7'J�b[*_      P   �   x�m�Mn� ൹K"c����ҔT	��ʕz��؄��T#V��C�  l|�I��}�ÞA����\��Y9s�gy�1id��4vd٥�e-2�oE��63?���Wyy� ����1���w^�l�@�OQ�͏�*��u����R�*k�����4s=��@�b(2�>�,$D�m�蜨��QR��-Zl�rl���fáK�@��3�{���5Q�      R      x������ � �      S      x��KsY�.����0��eFR�"J���@ e<��`2e�AR��j�P�d��Z����k�6��^�e��*g6��?�_2�~Ή�8�+�ʬ����@  �����ύ�;�]�v����3��t��c]��1t��m���3z��3��|68����_��=�?������D����#�<2�����$,�o����>�V����n��>�̴���L;�<�|7���Ү>>�^j���|�Z^j����c����fŻ�M\>�y|Z���3���
횺���ldI���ͼ���d��(ر{�gy�����A���W�t��%9�vs��e|����0>�S�F��,�"V��v��"Т4�0�r��6������0	dN�n@\����t���6
�����2t�b�S�͋�s�?��vĦ,"xV�L�f��Tn --��	�k�?b��]�<� �T��뙎i�*�,z��Y:΂�Zd˵@�#x�Z�y����q��vD����Þ��'௓p����Q���i�g~T����YH��/g!��kz�������!���K�p����5��)�Zs9-�� �����I���?�~&�Y���� T��M�X1��)]�2\~��)��ôqz�gZ�jC��i�}�����(�����w�aTg	�HNB�n0`6\!1�V'/a��+��9�:}k��/�Z/�h�u������L��,2X�`TF~����>�&HVSQr�0�0Ⱦq� OR?qh|�am���~��)�,��t{�p�?j�Z� �q�y�P[\���z5����?���@���|~��柴�ٲc5����XQ1j�,�tĂ2NYVD������'
(�'
�I�d�x�AZe�섓��C-�+ȧl�wnz"�8ՊD0�'� ��F�kx
��9��WF��V�?������_� ��Fx��9�OX�oK}[��t�f|_
$���	߯5�;W۴z����fl�?�j��ޙ���Ө<"Ռ�iF��~C3JӸoZ�=.��_��j~(��^a���)|Z�~��1�ʂޔ���r����D5,�e�gX��[��#�\�%~*v��3��%�z}[��C5n
� 	smRF�NQa�b-�C���u�,��J%�q/#oUv�N����{��!��,,�jő������!���E���:G4���Q�͎]+�nX�4�8̙F�85{�m4/��|��i�q
Z�V�1h�A6�_J��l�����,�d�ʹ�e�cǰ���8�p����0I����2����H��nf�kl�˦Y�T.Lv��9�%F ���lv���E�t�t��N��뎉Ú�柏�9:x���t.\C��k��f�ѻcT�V��<�q��t�������[m���0e�Z��_0�ms��`	Lx	���ﵮ'{�����&����yC�����x)]$�˝�aS,��7s�r�_Km�姜�[^=����c��gsz���UN��d2�МўY���k�l
	�u�n�Q��������$�`��,z�bM~Wy�]z=�lm�u`�߾�6	*��P�2����9�G� ~X�V��W�/fW׋�%��V��wK�z��\�i~с[�9��+5��c���E[�hr8���,�"�������ME!�(�-�����������~��O��K��5N��[�9R5O�����=����@4t��EP
o2�Ā�����C�r�|�d~�*Ɍ7)�6Δ.VK܀}O�9݃��u�w^�6\2�݇!)!�A���L�Zw��>T�r9E\�.����h(��8�c��(��P�fA����d�[U��*����a��*���|�fE�~���dMjC�[E0L�Cm&$�@�,� LPw�AD�Uٍ�y��l2��كe�lSD`)h��4\�nyC ���Z>�L���W�əV0�9a�pm���ʼ�#f��L�$���S��n��S�q$k���:؂���G��6���SU�ˣ���1���3� �A�B$o��IP�vf��*~��[㗻�Y�Sȭ�a�!��tZE%�`>��J��Xf����̘��o����G���oL2x�������t�=�o�\{{��P������J{f���c'���J������P%�YF�|�#���B�nZo�Z��6�C��EV�݃)��L�S��A�A�r��ӌW`u�t�fx�i��"��Ży�_C�7uR��i8
� ��(&JŲ�C����[��#ں{+<\Dlh����EU1��}O�l�7�8�N�6��`��|#*�
΅�Qs>�|��aU���9K&i�.潤��㷵����g�Ԙ&G~�}M1�����g�ؠ��a��ZO�졮� ̧:h���8c�+��)|�^�<����l���`Z�'�sb��,?n�R��h�aX1Un���4�a
&�	���Z��:� �qrI�	)��z��<��:l=`���ƇJ���6@�Di;����"w��񂄂�e΀D���9&���n��P9�a���xu9��]/W�������Ww��!2f�M6Ԯɾ�sm��4�It��r���p
V,t�r�v� ���/z�w�J*
�(W�o�×��%,�H�vu�_�$�(xrz��Ht��#��w�p5}��{.Pu$����5-������d \�#����w[���@��x��`xx<�����^�I�6�R�Qx�v��I1!�S'�s՜�*�]>��W������~���ȆL���{=�ĒÃM�b���XX�k�3�c�l�r�3�z�AR��ꆼ�jꪒ��Y�M_�蔚�<m�}��")�պ=�O�
��Z�)E�DUťѳ��I�ؑ𙵾�69:&�IS�W�c'��<v�Hs�����'q���B_��i�+�u]�A��3L%*����A�W��Y�$Ԧ��,���~��q�ɞԛ|
z*>�̫Ii��4B��g)���-�HyӤ����$=P���i�3�9��c�O�4�d��gPV1��,��'L�m& �Ev/�t���`��Ƴd�Ir?�IbTd�9�q�p�8��d��KF���|�IE�Q�HP(x�toZ��E=��)����l�F]�lh�b
�<\�>��e^&�e�K�2@$=�s�1S��Q��r�j7�I�ߺ^�ê��mZ
b��-�WʠI�-�4��C��&�f�Od�v��7�R�'��5� '|!@K��p���B
:X�~��8eE��`%��L��#6����f0�M�D��Tkə�#����ŭz�tpyT�G��WA�c�Rቡ{���W&7I�,"�h�}���	�-r
m��M[��(S�>��WW���!���>-�g�~F�v����j�_����ٝÃ���]���SJ���#�A͇	�ge�k��L��o���0�L��f&�I���$ܵ�NPi����� 
��X{�b�O�v@zu�t��6���J]��z$��4�7��x�ޯ��3��\����O�8k����������&p�� �}��fK�7yIwp�kQ��~�d����A�xY� �0��$I��?�F�Zq���<M�,oY,o���mT����e��0��a[�2���W|�i&`�M>p�a9>�u��J���.2��9X0�T�[b��is������Xm�gs�Q�WT���5h�b�yF��FS��������|�	jr,�#t��W�yQ��ul}�"�`�υ	�׉�����ɒ)� ���oq���$���ҐMr~�3�.aG/�F���A����ށ���Î�0_5v�����fnW�vQ)�W5
��@���+?M��8���٦f�"vc�6}���8�r˵P���!:|���͟f����jVgOϺ�	�\�,*�2-	&��0|�Kg���ѱ��y���g��;��6P�FS�//��B.>ܬf�ǛO�K�P�W��ڏ��E�Ҽ�����L��2f�F�n7JL�D:��r�iv�gs��ȞS��h4�\c�sT	��͝����L��v    0G'#EJ5[l+<��t����r��j���W�������[{+�k�7�ɤ��Dw������P�j���8�$�z\͊ry�Bݩ���G5�m�󯠚�?��ƕrH�瘆�܇�8b�A(V��!����Ug��EXŻ+]N�.�Ӧ�	>���&��A��z~gOR����:�3Zz��f~F)XM�;��A���I�ٸ�/�-��}�P����hrԸ0:�Fo�Q:�b�m��X��:���wm5Sx�� ��{�8� �����*�!��(�8d�Z�5�2�[^��V��vT�4D�����;D� ������c�۸��W<�1��A]��ȉ@���M��ȔȺ)_¦�ry"� ���2�ޝ��a�	(��0/��K�$/�94�*�����#�Ś-w��s�l��-!S���Q���5��f�4�+ٸ�M�Ϫs0Q٥��0}_y<;�[GZJ��m��au��(���8`y�Aa�aT�5�B<�@�F����X;���Q �J>]D�"����*G�� [��@��m����4��y�Y�X.&��g`�|�-g���S�6x%���pt���ݏ3��z=���%hT���^�`ϱ�'�L�HbY�b$�-5..�l���q	~���)GbR���T��E��sJ	�g���߯�;��b�N�xm���r�O��D���r��Ah�#�J�.���Ch�Pq����mq5	T�DV�o�T3*��$TU����P��Gyn�VCNb��"ؐv&+�t��S�(]<��dt�1��M-����1��U%�.���m����w�;4�%k�vf3/;=}����g�wLO ��7샞�p��Ulei�൰`G YnZ4�Prm����m�A�%�ih���&�Ȗ��s²�ϼ�8JpW~���w'a�Q�q�ʝֳ�,��P��[Tkx��9
���[n̚�g�;�q���l1aX6f1;tlb���������!�̘�c��X�+{�����r�%
BtW����?D�5����#|����
�?���@����E<^���"D�4��&��0H^k'�_�"D6���iN�����t��z�x�ᡖ��F>�pv7�Q�ôl�l���0��~�*N� Bi9�&{��-���K�&tB�����>�s��eT��i2�3�:뢄�Q�Ƀ��>߄�ý����/�W/����竫��'�uq^+�/���#e\ܰh�|!��9pGE�[��1�.M���c���s,	�,���HKPR�&Tf����2�q�!�q���"Pn@��K1�חV�*�(�����[DC��(�j�7�&5��E��J��W�M��o=AS��EK�!O.���.~Ү�+ʉ������r��b��T3�X�~SB�WJ<��j�'�{��?Dy��ݳh�FN']��7��!ʉ��� ��G�B5좧bӁ/Z}�bVB��r�sb� �9�����gG@r�l��µ���
�
Fp� 	�k�����h<6�`���p���_�t�r�lR�@f�A����;��S���u�4�]��IHnx��!�扞kw��u��Ն�Ky:R���A(���e	X`qu�\\c��nq�X^J�������jvy�a�5eǥ�|�ֆ�a�m����M�*F��m[�6��C�W���n@ 64�m�*F���V�� u��}��A����M��>��A7a]A)n��&E���u��}~P�=�� jT�Q�	�x%D�RA�EZh�d� �6�m�*v9(5L�_�G���/�s�o;���9õ2��Y����di��DUS�u�O
.���L�ߌ����b��#e����6��uH��g�;Ȫ��6g���H���f�a��_5Y�.5��LK���� ���,L�"�b�C$
]�FU��(G�%o|�~t�W"�(��U��Fj��:a��<m��Y䇊��u���y�P�!Oc�o�rz�>����s���L�.~�y��i؈�|~	6�v>����R����S�̇�r�����wI0����X�s(U޴o��n�v��T��쇾kq0��{4d�:\��%��Ǒh��֛�%`�=O2�>�A8tG53*����!3�L0��yT���U��n������L[Ǵ.��ae���;�[Z�~�Q��k6T�x"�{����aY��G�w��q��ɂj0�LH�)i�JbH��W�
T��l��4ɯ9�������g��런)���aT��Ǉ2��!��4��,�y\H��ؽyQ�*�l��G�L�ߖ�T�CD�q!��6^��S�I����. ���"�����9�遘?*�?s��_�0�=J^"w4�4���?͂C�����!�O(��a�d����`X��E�"���p���,��pTZ-�����ī��'0��	�XV�����~K�^���OajR���?S"v# ��#�&~*!p���.�/���2X��F+9������3��w0��������c�g>�4G7+5���[�vv�5�G���/y������XK�(��_�|Z`��B�Ϊ@���h�}��O�����4�A��'ꬥ('�h�1�!ᦳ<MBCǆyډL��QU28��Α	��ˏT��y�:��~x�sݕ�,9aڿ*mか{�7r�n����6��j�����+���z�<b��d��g֜^n���*b��x*�LW�-�N�&���<�	셤��3\�~ �!z�؟����L�4̶@�*�~�(ܜ7�6�tO&�k��_[x�'a�%ZxɌ����g�k�FͶ\���ڲ��&�bʦ���>�NJ���g�WH�j��pd��1������i�'Ҙ쫀q�0��4�u�u.E����1�ʢ`
�dQN��>�R���sA�;0qr�Rt��8
Ny�v0��g(�(uR����u8�X�u��c��a��AC�A�z�ҟk|��P`��8#,����l=:�u����룙㽢�Q�y�+��z���[�d	�]���-��9�x�P&.�j��	�)&��42�`\ƌ dz6%Y�r�(A��� i�|��t�bG���	þ#EZ��B�l7&�e�we�),�Y��=l�xPo�x|�aga��T\�gz���@����C���l�**�<����u�<�g��6�|�q�s*��,h<�ny�܆exc �U�Q J�+��(�SiCR5xPrMeb�'tq��US)���7�<�_/� ���͎��]m�I���Ų����<}i�7S^�8�þ����9����V���&=�<�\����/�u&�����a�n���'��r��g��>�}U���;m�f�R�zIyP��T{�:LY6zсCw�$V��at�n�:�x;�8N�$�_c~4:�x.�V�
��BMx�M���@�pox8�nP���Q���ƨ������H������F�t�8�;�< T�N�3z��$cۖr�2�bmL^I�9`@�	,l�E������^[�;`jsfA�k�0�S��Ծ�L�����>Al�0��U )j^���T4"������UŌ7n�~�KA-�!(q����v!���c��MH8�{Q�w_��Ο���p[�m��t2R�K^��I�:������H�T�v[��I�ѭJϡ��\�}`�D��Q����2�t�o���N�yH�5h�&j�'��NJ�皨��j�x��W6w�6w+���"��T͕G=�[��@v`��2ʻiUZI�-B�yã�7�t!nh%���V�gǕM������*i�7uc��;Mv�w��-����G�Ox��ԑ��@BH�$u�� ��$����BE#�_��(�M[���E��q�$��i�O�7����c.M�2p�"��""�ғe=P��1���X�"���"e�|�A���{x�Vc��vuV�C!������O]zY�#�c����qD��|q��tΜNV�rT2��U�)'Ѧ�%2u��������ѻ����bvy�8G�����/���ϓ���    Nb0a����)���-3��ڨ$�'�I�F*�z*6���_�.Z�ri�g���i�M���	<J�6���+��*���	�c!zu������}�i�����Ӫ0f��)6u�L�PX���a�Ф�MX[,n��0�a)�Չ �[U�xS�Þ�~�]�_�,|֩�����[� W�H�,�1n靻�Џ��V�@Ē�G����+C�)L�෩0�\�GkMGu��W�%�g��HDI��cE�0S�XUZ�V�	Z�8��	��<�+NRŧM��BbW���n��	%����A~+t_j�ps���-?!x�y��Ft6��+�R}:-�Y�*���Y+]�C��[��"�Z*ajhd��	D�H`6t]}���b�!����INˌ�c�<�;��X�mo�3n{��g��xs2_�+�4x˓5��}X͵������fus�}�����_�\��MO�z�t���-|��Fe�!���/Jeһi�4��f;�C�fGVK�/����a#�?��uY"L�\;�����I(��LS`s�������-���C���:C�\5	)3un��پ�>���v��+�d���[�,o���������_��ʦq?B8m�Q0�e�%i�i�>\KS�xU"c���_^�e�����8@�'��x�8,,�qr�	a�-��Tx��~{�Z��7����-�+h$��]r��)OkG@�5 ��,�w�A\�FE��n�y̋�saP��t̨u-٧,�Q�t���b=����k����"��>g��4ɨ ��>E��0(��-;XGCv'O�zn��#��3dS�l#�[6��[Kk��%�8Ȳ��E�EM��f������m
��b
�xu��\���'!�Ka
#|��߇`��s��E0f[~��ߓ�1�N�m�[�,y=6�w�m����#0������(�_�@��Q)sqGU��0���`��6��r������V&ZP9t��a�3���~0Z�%	�o��IOt�?�T8��f��|�����H<6�j��#���i-G�+� n�r�
���д)�C�saD�T~7�W3M;�5_3�o&-�B؁��YH^�'�ܧʌ���MN��]��O���a�,��a̲���A�bM7&���`K���	ھ��	?`�؆C�&�w�N$ؖ�L{;ԬW�6�ꔫߵ����]��1wJVQM2<���Q����h�T*�����+\���n��I�'2*�x_�e��V�R��g�Qebr�tTlaˡ�F��A������DT<y�)�'�rY>f�:<,�3?}���&Kl�r/���ذ�y%�����!�.0�4��"��A՘��KSy�<r�ۼ9,��_
��Z��������Rn�J*ָ��j�:�;7���-*Ĵд�`��K��4�B�Y���#�]�"��XTI��k��l�Aq�Q��d�y�6I�j��k�G�}]D��CK'�C7��@받;*/�ش��dӶ,�����9�2���*���ކ��FTC`��T�7Þy9��/	~����&+ݨ��p+��D%�lRE�Nkl
�
FB���P�Q`mg�� �����f���u"�Fp`���ųϳ���#G�\�?���n�g�Ӯ��Z�S��^�Q5U!�Q��m;�a�^�ɞ�.}�Y�F/��(��S�����$��Q4�Z�����&�=XL��Ip2����J�;�l}{�%)�����c�����vvk0و2�jӳ�� �������n�:6�ޢ���@��#�:RЊ˼m��D��T<��t�M#�6J#�+����`�R�O�'�8B7@�N��I^�7o&�ƴ�#h�վ��jvUf�/>�g�ϻ�`�����ql��߾��9��6=-g[��+D�����T���{
r���Oj��"�v������ѾTνgQλ���j�w����MR�41?,4��$Ҭ�~�X���
�E�\�L�	oE���>�j�ݞm.�wG�W1����n�ٝ$Uܢ*`\}��Z���>���?�//3z�a5{�h��9���;������D��c��e�T�F``ث�L�t[�g-����i�IOũ�9����r����SSH�}����8��r�o�ѷ���C:pc>�as�Z����_�|�ϴ� (.?܀�%��<���]-�pu\e[u�%S)a~TN���;�R�������7}k�A]�U6)�6���{��x��a�OIG[=R��4Ú��ٍ�&#��8 �`���r�z��������������1U"ȋF;�_�\�V��2}}{D���D%,�rH../h,�ߘa.&������,�a5$nܝ�U�{=�yT���y���0�ɣa��%��70�GvVʆL���lŵa>c2#�P�M� �A6i��V��F��7s�@�避��?*���O��ņp�J�����@1�wDNV-��۝!�x8'��'����\>v�b�Q5t|���[�h�Fi�j���S-�@'hEU#Fs(5�;(iVTv��t7i�w$"�S[��3��ƍ��oԶ?}���Ҫq`a�m6�E���S�{��r�'Z^O��.w�V��"�ozMG&��1���8�˶�ͺ��}���`SXԡU��%�d��{G�b��� ^����C
���]�B:"
���煏.�����P]uS}msP!��?��z��V".Z0Mi�~���3�8�t�s]�����K/�s_.Tc�e4[X�[����	��)1p�'zC��9��u��)��MA�(���U���Rq�� �kq$����XG����TR �E�e'��S-нy�="�`kRA �4�|�\\b�1KιG����S��S([��"F<>L�τ�h�@�5xVN#� ���@�Α9πD�PtaQd�y,��I��Y,�ұ,o�?�x!Ճ���$�D��`�f�s�A�e ���Iz��	� ��)%�W^ỳFd�Q�S��9w�w ڪmt��m�K�"Vq[�^݃�H@��ЦQĂY�J���e@�5��j��h���5��2E����z0/��p+r0�7�-�y���%�nN�}�!��:�Z��Dkd|�q°gE���Q���E9��S��6���,<�v���\�-p���X��~�Z��B��WZ�(�H����Ғ#�⨞&�vm]˶n9F:�]5��;�}�>�O�a�Py��D7����_m�g���gl������gN��Ǒٷ%�[:�����Hߣ��+[?�gr�Kg�{1t�K�e��#�9���/䛓��&�ä?��Kg��卂�ϿRiX�WG!���Ƌ���rVY~05�̪�ᗣ���e�xN]��5��������Uq�Wzh��XC�_�096<ܧmW+�#Ynb@ɪ׳L����� m8=��r6^��ɡF.� {}�$C�A�����/��4=���x�G���Cw7^�)�]�
q@b�|�C�J��3,�\�m���k�W��,̤L�ҮOe���_O��$=ںYR��������2��)e��>�g��q�i�㒺Snd�w�`̐��N9���Օ`���v4��ݬͺ����#��� ��&}�<_->�鏫�'������jq��q���W����~h8'c�ԎQ�P�n�d�"��	1et�Xc�4�`����6�ҀU��`���x�����q�$���5*�DT<�Q��bp�F����a���[�SEE��@re��HҤ�y눫���+Wre���0u�s�j2*�<ɗC_�c��t�WMF���}�gHG��G�x�ƝG���9U��&Ո>����!�`�� ����Q��D͠O�+G�Ѝy9u�]����l��0B�.�!�Zϱ0� �R�A�'ޛ��&[zS�� ��Ob�� ��}��[ZSo�D@W��jݑ}u�� ��y0!}�}5�* �EJ�__��5��?��0���=w"��gdQ���0Hm��N�����L�vLh�b�$��1��H�j�l�W�h� F+�<���Mk��>�0    �X���kV+P�y0��y>�
PkG���3���l��rHwl�K�l��U���"�Œ�|�� �����Щa;�|���{!|�i��v�]o�x��;~U�����_*�l�hC m�R͝'Z���Y�%�v0_�8;z�<�7z�Rʫ[](��vNb"��p)�V-��(�=�������AL�#�r�|��ɛ��Z��"+U��K~ߠ�;��1��t`a��C�6	b����e Иiy��W1��Iy}����0�"1�v._���M[dT�ʨ�qq�ݹ�LJ���Jtg�pd\��zH㷯5?�{m�lΧ��w�S�٧�w\%��!5�gO�����Nz*N�.�i�8�x�1��p��~G$�| ڢ���e����S�r�����\ �e��z�|����f~y^����i$��ӈÝ�Dl�c(�' u`��������z���.qv�R�]���jBF���Z@�5�2�ɔyq`�)4ȿW�6���~�9�MPū!N"��ҳg>��	�x5弚_}��UPTqk�Ru*�h^C�2,|K��[�2ô�QQ��s��ST�
X\��ȧ����#]P�?rz�it��.�R%U�P,
���ϒt��<k��q���:���,�JT'2�y�;R��@~[#����+Ȁl�"����i�t	�"K��|}[r���U˧`=Ku���(���[�h��Sr��>ӹQ�Tq�&=��ޖ:�#ƣM/��x�o����;��Sw�u�A����*������ט?j�}��6+B 4F��T�$�am�̰����c�P��:�ε���}e�*n�����pD8���U���Ԕx��H�*�h/Yߖ��]jH`�_~X�n.�6���^ntëA��j�׆���$ce����=��d������^����`��t�,=�KrԄ%�\��g�0d�}��L���0��
��۰��+�oRR09+o���/
؄����&�˔j��lzF�V�ɨ���9���.
Ꚁ����A<�� S�d&0%��	���y]�Fq,�1��8Lɐ�#��h���ڙ�L� ���}7-�"���a���d�D�Y:D]�Bz/e������8�~�2�	�=��n��'�.�18��(`#���Hy�UVa	��8@{� �����t&T���}>��4N�����"�`�/O_ä���_;*1�ɉjx�^�� \�A|,LI��IT��e�28�6"�04|�wp���|_���ؿ��ZB9�5��	txB%�h�}*�?cѐ2]��;����T��ƛj8�� Q,y6^���&J����; S��Ԭ��?⃹�N�Ou��T�ƤbN�E��t��an���\M�8������c�\?J�Hs��4Ķ/L�F�i�O��P���]Ï�:�G�(�T�ANüĔR��ΰE'E^�deK̪&�$|s��*�y8����l�eȒ;�K\b�Pb�l���w�m�8�iCO���R�"�6�3-�$z�ya�L'�nvJ�1u���7_�k���i�4�Nʻ�?���)����0�W �?��=�dШ�������]�S��z��&�����B�
xCD�	2e@�ɩǭ�I=hl���Jˬ��5�J8��'�;�I�����ZΑr��'��q]̓������,L���{�L�����m�,�O��Zy�F��C�p�i�>��_ή����+m��V��֏�����j~���ˡ�$�m�C�o�=�8��|�"N�`ȿ矰(�`�������B�`!*^!���_f�$�*���A]�Z~ߟ�?���D�I��I�\�g�1�p�������Ep�7p��}ݯUAI��,�p&U��4x�A/{C�*ʋ�&�b
��&��he������BϪ�#ٹw���0%Ė���s��ElK��n|�'o2NF5w�8�m��o�[PJ^����S.ir�G��������jv�H���x�^�Jߌ|��x�0�9�����x�����{̇��r�	�D������o@ܶ���VD�b��50Qd��(<���Z��IE�Հ���k���B� 2���wa�����毅I���̱h�#�i^�ǌi�����|�tE9.�b�72Ū|�'m/��x�@�6��p��]:	{��cT�5))X��X�	��9X�T��^y�h��'Z��sS�#��%�@y' ��G6��PTm�2b�S�1���A��!��4*�@'%Oԗ�j4�����ǯ���-�4�d�)�DR�oS|(��PQ;667L�׽�Ǟ���1с�	er�Ia���dT�YX��Q�Gg�r�5Ɠc�oN'�T��͝j�^��өv�L��ŘF�'⊠��5=��./�@y]\����8_\i�g���b�X�0���j$n�����Y���=�|�ل73NO��׾0)�r�tlR6-�g�_`�$�ړ3ԧƄ���N�&�`��k�s�EIŝ�Iꎔ�9���LQ[���t)��)���.E#9���$¢�q~w�7�)X�p�0@��h���!��z�����p��?��Z�E)`h��q&��8}-�P~�(���v�t���L��R8n��z>+b�kz@}3L*dxt0`c6n1�\��H�!, ��Os��k2J�"^=ӭ0��$ZP"�<��O��+���t���G�SO��s�:���BTV�'^�%(a������Q�T*�$�T;A��q����6.G�zn� ߲	6 |�Ҙ�~b}��n��&��f�G͟��*r����I>����&�Y��7y(�]���C�t�������]�A�b���TL�E�.�>6:�5��R�F�mg�Fo;.Ӻ��6�Ioυ��G��]�_\�E������jvy>��bm&?��F���q����6T��P������"�+��ϗ�4'u��Պ�c����O��(�3��E��+���+S�V#��5!��?�aPgQ�Z��!��p;J�B�s����ݓ����"�����vC�lZ �?�\|Ĥ�����b���r�݋��׫�������_�V������~�I%	� �<��Aa:�Uٻ�rM:�����ё`%�tꠟ��ӺERŭţ�f3�^1X��{��zf쎰ߦ�b��}*����"u$�{Mq���n ��D�}�U�;d�[TuS��twa�j-H"�t��t� �b����}��3JdD�G�9W��Z$�
��tU����)�"��)�Q��&�=�܏�("�]�U#p�F�Jߦ�<�#��柔x2��w�^�rI�1Ct�;��|���QT��e߿e���l�U�"��Tj�1y��\*T���o�#�#D�n���nn�}�U�0z6����v�e"��c�f�Y��<�֮~��s/�\�a�z\�#n
��^^^!b���8�p3Ӯf��C����=AxÝ��qy �|���h�D�f�ěq�'{�gq���|��|^-?�3��],)iv��ǛO���5n�il�����B�K�D,�EA B�'~��Hlc�?uU��j��@�!A���jX'�_��y�a�f�­��ٗ�I�f�p1�XA�z�
|�ZͶYU�O���yB	�����YU��Ǟ�W�)Fh���vZ�P-;��U5o�7��z^�3�fU5?���v[Õ
���ՇOr2��W��"K�C���_b��C��?�p�!��y��o��p���:�Aä|� ��F�E���7;�r
�y�h^�_׼����v<Ig��k����ڻaA�LB�0���1:J/G�zMjEJ���Z����ߏjo��ow`����٘ A@5J����ث�e�m����b���ži ���u�R���tA@ŋ��EM����aI	�3x�Z\~D}M;��0;��͜�6�����=���n���?�����ZEBŘC)c�V�'JkƎ:�I뤦��~jji��S����:9�3��4��Y��x,�-ZO#���d��%��c9�MD��h� n�>}�ĺ�C
�q �F�M�P�$�K"ܲ_�eā�V��M**�<PQ�����P�9��_�����    us���+����ԍ�j"n������l��.=���'��C5�`Y���r�7���;p�6�\�����p�W;F�H���v�qvs�]��1���j�	����Ya��ջ�{0����/~RLb�e<��cIy�d������xL�	��8�3R���O���hYj�����!�����*(hQp��lC���(1����4')
��B���3��S�r� �!S8-��as�-��J�f�'6���C�e!*GT���d�@��X�\��q���@
���0��8�q�I�!�_��P��}Ǭo�(B��=l��-%*�����;�h�����ֺ2	��&�8��?��w0L�����[�{��l��R9r&Nߑ��p�}O}�)�kJ*���vP����(�)�F��*��sS��4j�JD�	��D�n����EYշ��B_�K8�C��¢��k��$�d��y}?���J�dڅ<���3��������VD럸�V_8��D���n^�
b�\�N��No I:��վj��p�<�����c �BmyjO[
�[���v3)	ʔ����a��?��Z*�z���NP�e�A���U�ȩ�4)���=���.$����@���|�G>�\�q8�� �6-��w�-�l@ӌPl����j��[�Su���3�)�d+�+��v3ܷ�g)�w��onq�78Ci0*#y�O�_�(N)1��Q�ͥ~�}�T� Ƥ\��L
�]X��{�װ��~?������c�v��l�rxE����ĩG�`/�.�8uk��Tl��31������ӱ�0Q���{刕��p�=̧
���k�k���L��:�r�'O���ԣ����	��!��fKÉ����[�#�VM�=�IpTW�i�.���q�!ڸ-����H N��w�^��Cy�3;��\{���T\zȥ��qܥb�W[���\c�l�Ê��M}�����
��U�[�T\o�3dT���`����S܍]�T\r�՜��M��*6}�S��b�g�C?x�F�&�`�W^$��`0(>c<�$�F�������Gp�)!)Mw)����r�6�ՂA���O闌yK��!�ݺO�nz*N~`)1�>B~8�n�Y�i����T��{`4Z�����)�6e�c��� ����m��@�fCtX��p(^E�TXr��TU,�|C�&�`"��ƫ�Y�d�:�
�*�=����>����u����<Q[*��*�F��e{����A�+�(
�s��GUŵ!7��{k�T�Oex���;{ocۦ���$iՊ0����vx�yW�U,	a��2`�i�������\;"$	�KT��3�̲ao�3��F �ḓi��������(f/�*�B��g�S7
���<�]�O�v��Ʃx�`�I"���\� ,0��Oe��t����"��#��^M�a0;e#�@� ��h���m�բ����%ï��P������ Ct��5��Yf{H��w`�����5n`d�F#�J1{Bc�O˷?lb��]�UC�;ʒw/��I�G��jEpW�L�}XP�g �c��D�O���8�{��+�� h�
B��V	��a���r~��kn���<�F,��~_̟���&P�V�h�6=��y���HߦX��Z�ނq�ݶ~:o�pt��MI����"�9
���x��l�<`S��h�:���q��C�|����}Fu�1��Q�;��PE�F�|��5U�=�m��M��ؼ�7{J��T����*������<iG/�2#�8-����i�/Z��4CVuűj�,y������Q�p�!ߞ[�	5�W��|�6ޏ�Q8�p��4;��;����e�|�r����X��;K�x���>��гp$�ߗG֡s4
�t:T, ��K�NxV͘C�,�!��f��p×[��_1���g�zգ�/�{?^�������-gHy��(�驯d���=^���,�]���X�'�p2��j�<1E�|�)u=I@f�,a.�)��i�F���-��M*?��0�i�5�G�Dg��g�W��3�ߡ�X�ә��@���@{��8�<�dR��XE�"�����1@�{�t��qpxk���HYAӧ��5���y�&�]y�@5�6Y�w�,9P�l�A����{-.�nb�8;L��W�a+9\x�/OqSM ������4<�C/�x�3_�I��?/�)�NPl�/��"�����+"!|��[�u�ߨ����?��r�9J.m��k���+(�b�k6&��l�a��v�D��Tjc�m�s�]�?��N�=������wT�>��[�6w�۞�`[��}Ee��VZ9Tvس���njn���������Mϱq�r(N�����Л;G���i� <S;�P�����a\�n��=pS��� �8�5϶K�E3y�ZW�^M�4�>�ʏ����w~)��\���W�B�Ӝ��t�VT������ֿr��,�QڠV�z�0`�֍M�lbV1A���T��oL!����/.f���^~���{j"�=MǷ9��l�a�.?�,x���q?������4��a�Z�|~�ٞ�}к�������ӯ�q�ŶK �r+�����Z"�t���Y��Û7�J���I�a�)���iٷ��K!��2��^P%�7iW��h�
tpe�ҠGlfT��I��]=Y��*G(����+�k��/�@G��l���~�3��P&�oY6T�~�.����C]]J�w��w\���v���v�qv�|�\�+�G%����40�%�D	4	�L\[���.�z�n��;|8�q	iE��z�5��xx���&��vG�=\��ϱ&e�3.����\�4�,%e����߂�L; ��ͦrx���Snk�����q�����_qs_����l����6��7����:�����R���}�o�;0��T1}Bx�U����T�����װ������]����>�ۿ.����YF�V��Sz](������w$bS�V���W��ک!�}�mR��Yݰ�8��d]չq�'�<u�v۰���U�m
ͧ�y.I�v���te�ԁ:�U�lÁ�W�z���^���5��9��|2q�u=�W0��ƀ��;Fůjw�=9[�/�p3�:8���<��0^�ŋ���yvq1�Z,^>ǨxP�����Ӏ���7&�6���KW�kX;�������������k\�����,ް�̱*
�/(�E4���]�0���K���ďX����z;r��v0M���'!�>a=�f �Sɱ� 
S.G�]?R�D��lm��E���z����zv��;`G!����z��,u��8*���~��2���H�ž�Ư}�ҿvk2�/���-�W�c�%�sj���*�{��$�~������l������U�pdb��W�8,�\���P���	�h���B�Z9�����އ߈����1F��>v����\Wp7��j�v�Գ��Z���l��D���fF������Rˋ9�Lj�+dy�Y�~��*$��\[p�!����"p���#�IV�<�QO���)}0;�}ĦMp��>~I*�+S��B��bn�`�&L<�N_�E�
S�ch{s7�q���\��}Z\��a5��iv>��w�Y�1�8�#6̂I�� ̣���{\��^����;0O��n�Z���+�Ȅy)k�P�>,����r�����C4n������/��K����|�!��9� 
��\�{��;�be�Ҽ�m�J�
�b�Z��~ׂ!T�J��+�X�3x���k��c:�a��������+��7]����q<��x���Î��1����ҌR���0���``���갣�X�_�T�C�Y�X8?���.��l�S���q�0fvp�6�ǐ!���M��D�W�X�+q;o=P��Cm����bym\lT��R�ՓCq�9�*��g��,m����������چ�╊��֝U�G@3K*^��ש_�m�D�Y�O˱��rq��    ?�=��L�)n4��A�q�M	�m�b�m�;&���QI����� VPT�r���k}�9��K�Ŧ���h�eJ�H��o�	�u V�͐�Wu��F�\
��ٺE����C�# T� Ҿc���?"�}VmPlߊ��UY��ؽqc9����]��"�&O!S�
��Q�ѕ,�TTS�Ҕ[���:�<�P&L�$ah ',0������Ǩ�?.c��N������O3�z�Ю��l���30�RNN9Ϟ�0�Xp��t�E�yk4�(���k`6�+�2³�&A6b��Ό�f���k�H��7��?�Ǉ�W��9�@���@�!�g�q8�gQy�U��f�߽��Z��`��a7�������j��5����+�� N�PA��}�g�i��l�mO6ɨ���#������-��(�*�qx�A�l(4�2�AYɫ�׀��-�k�'�$�GA��>��!�1B1��'�ڰ����rEj6��싛�?��0����s�5���t�3>�#��� ���՜��P}g?�G�z	��vQF��#I%�.��]���jj��Q�&���k�����c��Pm� y��sE�q �j�#�'��լ����
�(f"�g��f�B|�⩪y�-�5�Y��7wJS��}���Z)k]��T뉀������_��#c6l�O+g�P�H8H��Op��$n�z�r
6�+�|)'+��hzEqQiHsZ�H)&��EGjӠ	�KZ[���K[tT��w,ݤ�ƠJ���4�U�@r ����>���2^5��H�l�Q�,�S�k:]�����?�B07���?�l���Q�Xgdo�c?8�Q�p�r�ͭ3 ��,*s,r��9$�2"�N��=�����j�b���$U%����?�PYM��	�swo
��!����-�ޯf����������%���w7�;�f�m9��-��zՊ�����ǳ�žy6��'���ۣ���ڈo]���Y�TЃ�"�%���ׄ>��?H� �,ꘋ�N�_ı�sUWtN^N�����]w��H^xC�'��] i.�j�����
,N�B��V��݂�}ά� ]ƴ�S���1e � ���E���0�j���Ԑ���2��	]�5<_F��5��+��"���Ǯo_hŜ�j�.�]1}����D��CZNʠ�;k�f�=��[����pUL^y;�6�<-r��S�^ck
k�����V�YX���/��YY�d���� �}�r-�zmx���x���ڛ��MW��ޛѦ��$��k�Z�=!y_��mtd���t�$m��D��߃'�a�hJ�)��Iw��[�T�U�8s�KF���q�qR��3ݾE�/�Qы�Bw2f�Fw��5��C�8bm�	�&�����-S_ CV��:��o�6��j�za����� h���t�4n!NJ5�}�Ty�:��=D�ݡ6�RR�a������z�[cǯ�Z����)�!q�؞ڞ�0N���fg�Ӿ�޽g��0>���]�1N�����{W[ȧ�"nL�MJ�)�}��Ԧr�^���&�X�<R�n����D�?6��/���I�o�����&��m|��M"�m��j��CZ����:dc����E�IZ��2P��A��jG�[zb��K	l�hH�XG� ���c2�B{���t�S�?B����H�T���~P�Ʒ9P�m�`0;�}�sX��@���Y�6���ذ[� :���d��}�L��z��T�9�9L/�Bb�����OѢ0C8u�jn G.�E� 0p�p������� {�I�Y�S���C�Ɯ
��No�C�&�Z�5�����>�E���M�
��j�F�L&A�*ߧ!ږK��Y`����/��E`�E��C�Ƥ�i�w����|�P�Ӷȩt�5l
��^��(8Pr���'�a&8�����/���ل%a��!�9�.)>�B����-}'~��:t0�0��6�AGG�T�q'��kU�w������'գ�W��:��0��С4dЦ��g�y%�"��،�F�>R�)Yv�E�M�w�eU���U�2�/�T��<S@	�KE~Ñ-�DZ�=�E�z�!R�ͱ�@���(���J�CTų�3�
��,z��Y:�@m"����`���9B-�z�Uͺ��z�(�)������ �F�տ��?�	�<�&�IF�	P�������i/_�%���/�d�%J'\#IN��5��/!���ī�����]ԏ�J�����)���6�q��#8�!L*VH��,���,��t)�Vq��@���eD��+my�w��Y�,�E[�~��"O���K�f+�tZt +�7Pe��AY�=f�	�#e�P�a����Z�w̣Z��xu�\�¦��Ld�F��2�$���ߙd$����!�ĉjh^�q�-h�]<��Q#+���k8�8 �$�<��5�Xv���K�R� �`�v0�sS�F��+&�}�=�3I,�i�J�ΎO�.�Ml�gL�ؓ620z��H��I:줻���$/����j��J����@�oݢv��LC��5L��>����(/�ӐiY0d%�����7��N��W����SV����w�`MD�O��x{��9��Ȃ�1&Kw#y�6�'��g�b"�Ƚ���e�ԭ^��h@�YT�i��J���L���U�Oɡ�����=�ɱ�Ե���\\i�Տ��w����C�z���Y�'by�`����K=<f�m��R_��{��IV$�S���AJ&��<������h�<��zՊ�4��i�^�8�57ܸ�:�:�I�V��ҊЦ(�	���6����������� ����(0>{d��kC�$Vܙ��}�0}������V9��d#���%>��D3�N�הi2���E�{�oI�I�ٝ���uGp���9&{�~}4bGIzʎ����F�?�&�ܹ
Ċ�rMt�Vk��GDg���pɗp���LJR����j���:b8�0���Jg�BS�iH�0�ªt�I\�Pqd�\��|��r����f����r~Ձ�iLW<D��Ϫ��鹖a�'E�v�&� ����ai汣k���tQ_<p7�w�.�FpiK�t��ДP�ٺk�(8;FC�?֒1�'�)：���6���#�ڦy8j=B�(�ڠ��
/c�t����(��nk�\RIFŗ�JB�~R!��l�2� i�q�M�װ�/�nj���mZ����*�)��>&���짧<y�G�����bD��Ng�]�bm�I�G�&J�����H�!�?|�t���?[�T��p.鿕"ֈ�I�V{��f��όX{��wnI�=�TϢ%�����ʲ�"�R�U^u�ym��W��AH���ڛ��rh!�-����������xv��	�mύK�6��n&C5c�0�>�wt���n�ӓW-'
� b��R�6�*�����&�K�+DM��9hZ�&������"��Q�_%�lQRq��Y���H#��
�<H������d���m�WW^.q�$���a�.�b:/lC��<�(x+���#r���1Qx��*?JxxK���3?Z�&�?�������z�)������3,
s�0z���%��IH>�K}����~Pڇ��gl^?,��}�>��^��ނ���'�),�2
����D��/F�w���so�[{�$����h�c���I��TA���r�3	�\V�YP5K3?� /cA��x����$b`�0�w�)0�|�������w� ;��O�Bf�����ăr�<л��x�e�u)c�d� �i��z�,��i��a��'x�PQ_��Q�O_j��)$���Z��RK�8���E�h�'�Q���=���~;R����&`�t���˂c�)/����ޓ[���R��<AAN9w��Ӈ���d��!�A�=�a�WԢ��V��61����5�h
��W��Gq�����g��6��Ny��zF����0���+�x�-��{u
�Q��^���[������G���P6�az���[�+��T3Jj�5�O��}0�VnQ    2yp�����򪁍O���{�S>܄S>�we�������)p�䵎Ҽa�(ӧ��c�<�@�r�`�+l�����!�/�׫c��j��[~�#���.��p�]3�&�ѿ��Q��J��H����.���?���JI�Ia !��ߖ�Ɗ��d3��2/ve��������}2�s�˓n/{�}�L}Z<8��N����$���\f����?�-����ۖCh2�䶟�A_ž�ņ��,�����P��	wo�'�ו�)��5P�u�#vKϝ
���)�4�˸���a�8��GA�`�o�&�9)`���_��9S�E㧄���N�mO�EނX|�ӎ�Wsp��~}E�ݣ��O8綅n)�1[�ϝ@�� �ѫ� �$U�:���!H@L�-�1��<i�j𻓤�_�g{Kv}"��(�{�Y�445M�N�4�� ���`R�^���ے�h�����L�@zf�0t���UT	��qW�M�*������r�>j��MZ������A#��aJ΂��v��0q���ݓyK�s°.�ɍ��9�z�^ߡ��ڍ�0���y��'�U+M�|͆���BM$#�N��Z#�*X� -�7�����}��?2�M�����eRV��N9[26h�X,F��R�����i��E��T�;�P����=�2x��S�Ƣs]L��fj�W0MV�F��.��[���b�&j7�Ș��h8��ʶ�����x �,��:��'��n_�[�i|�Fn`r��Oz��P��������q/�sS^���$k�d�����jLq��@�b�
�D�b�`'�,+���E���:(�t׽H9`ߴ���<���	Tw@`�+�=4V�+��`0��t�|��pR���4[�-���(�x���LFVvįj������a�6P҂lX���R��5�<��a:�|�8�~2}y(����i���h��*��Ϫs`���somI�4.���0� %�Уi<-�������	�]h�ʝ���Y�����h��/sM��� *FĈ��q{�D�H��є�DCF8�G�$H&!H�C���>�n���Q!'��i�-|�eF��Y5��o
1�IW#Һ�`�6��K�A��u06�{�Hz�f[_�~�e�+'��Q;|���v�
�b��޼�>��}9�wJL��C��m����*�=v����x���w�M�r�A�_�,��E;ň\�G2E��+�x*�a�~�x��f�1��XA�>�V�))���,��o��0����d�yPy9̋�_���zy1z�s�X�x�T�+^�X��2۞��sob&��й�i�(�W^3DXN	�G�����X~����Z=�6�Q%sT��og�Q�i	�(ߥL>�\�r\:)�ꈕe�lLz�H��nl} ������!\�n�����]�7}���z���?W?Z�#n���p�_o�ji4���S:	b����i�2����u,�F�vMB��j�@zͱV�9�^!�daY�my�g�F)5+� Y�.n�Pp��> uj��a���в#C׌�6��.d�q!kDRɛ���>����h�2�]FF6v{EEŕ)
��ÍD����vT� ��d��:�#}�yS�j�������(�T��D$I[v��j�(眣"��s.��~f#��Yx.��f�6�1��Q����� �H8c�}�j�;�4&s���)`��g��z׮u�g���4\h�%^t�>�$JfEj���ԛ�K��۪��:'O����s�^重�K�<��ٿ��7�$%k�b�.�$��)[�8Ƽ�9�� hu�l���D�����_9�B�~A��?�'�Z��&U��ӮeU������^�P`�
}|_�k4BV�!�پ7rC�Z��LNZ��~9�n��؈��q��y-�����v����B<��j���ߚj�Z������ҔQ�O����;(�}��g���M���%[sHx!8��ކ�y%n`a�sؗN�£�����}����4Ȓ���>��h-������E���s�d�D0/�31ň����#�yaiV���i��[x,D�[����J|ݪ�U��*h_�)xR����h��L�(����[/�בoV2�3!�߸�k�e�5��X˗�����0���x3��!^{9��͌��ŕq7[�1��)n������.n>Oo��T�_U<y��H�(����h���s��-�'��2g9g.�1D�@�f������x~�y>5���C�����٭1�)�|}b�=2���������-z�wK�^-�Jh)m@%7*�4��ٙ�QO�BT�]8<�-��S�ahnq�����]/b�ԵR��sD����ϑ�p��h���OvA+|��G'���cHp���9����n��ӽY�d�tt�m	?,��3���}�%Z:��N�t\�?
~.�:QT��*!o΁t%��}4"yE����c�qHZ�^s]���yQ=�vM�0ܲY-�7��?�ʰrY�BI��-��%�T�S�ܵV��\T�j����@��fa��/�F�o���a�����@��cMT�y��f�Q�I�`@�u�NЅ�����Q<�ǧ��%LJǟ˺�����Acm��(��/�ٿ�~uD���o��l��6fd�ZF�J[�q]���a&���u���Z�ʖh�84Q��f��q���˪o𕶭ɪz~	{f<�g��_�GK�cI'/��0q����
G1�罖�<��4��r�6�p������RV@Q]���+�(��)��i�S��������h��~��Uq��꯺�#��V�!�� _�z&��!�o�0�n�'���2�do2�����l ol��j��f~�ڹo�(q���
�y^D,���������8Z���l	�|��O�'���v�En@��L�:�2-�/<1��ŏӯ�����b��֌�J:�]L��]n-�|B�B��/���G���v㵕�jJ���t����$���JD�t�g6�,<��Ȗ1pf|B|a�q:(�B�b\���n?H�3Gp�"�3q2�4u��p+#�)u3̐��Ҭ��4�М�Q��2eڹ��
oq<��+|���K>U���+Z�&��Q0���1�/����4�xNN�>��������~^�*��ŜK��^*Ŗg�jz}���i�����U?2J7�{�*�ڨ�h��2��b�S��Q�����([��r���Rk�x�V];���������x�P�qka��S�(a�x�0�?���Y��[%g������*�[�y��V��xf�6@'�i��Gǻa�U�������oH�m����J,Uj{����dg���G�.en���-�w��w�=]m�}�\�"�V�5��[�v�k�s�ᨴ��YЍGě���KCz�%aɫ������&Y������ˀK���""_�=��[�z�ۓ:e�^|h��`t.j[�|F�+�~�\�/��+7W
̆}э�DS �?(Q���_"3�b��dˣ�y7c��?jr���ZO�G7RKhQ����ZT�cQS1�� �������\���K��U�������[y���j�����B��Li��=��U��!
?dK>W��+ہ����//�T��(:�m�����������!w2����ǡaٍ��N1yS��f��6Qpӆ%���b^q#H�iE�e��LV0������K]�$V��������ۖ)���g�N}[�T�5usT��%	3��cu8:w���ÁD���Al���o3�%�f�@�B�U��h9��qD��C��t�#v*��un5G#b�QGO$��!�v�2J��PP[0��<�0�Kb��wt�!]�F =�/��~��,G�DI"�C[����'EAǍu@�H�k%H��g�D �dC�8G���$}K: x�#t��Lh����Xh�,j�D5\�-�dj�M��\:p�P!|p�k�D5I����S���N��'�`�5�T����%X�k�B;���,h�8j�MԐ����c����vm��    �7���[�R�"Qe41���0�.Z<�<���P��?Y��	#��z�d<��^�%�Aڙ#QuX 
̽GN�f���5�O;��^��tk�
�z��R��a�77��=�[Ӕ��nK*�-�܆��ܳ�bq5��qqd\O�v�/���  �1��f�e:R>$}/oz]��E;�%U<'�c�: ;�9�ɚ��k��f��.�ұg͵s-5�Oq�QR�Y��\&�c���-jqn>r����(��kД֮��� ��m���e�V$��y�4�6��Y���U������m.~i7����럳U�.7���7�\�K�t�u��HT��P��I[�ʭ��}�t>�/<%7�l7܃��0]�
w� ��Ax*7�J��
)Ė0rj��d����L����i3�N������D�Nn���!��h4�lF��)���UQ�k)��8�rͽ?,�G{�/�W3�V��~q����ȸ�] f~}qy�����pbܾ���N�n��p3��u�;��2EB�q�$�l��������9���OK���(��Z������C��D*Q�"\�)����D�cb:���-��৛�S�+2:} j�4�ۍ�η���$YU��#�Z�[0�Z�3�����qA��������=n�gz�e�yZS�h�I
{�܁+�3��T�Z�iwӲ�
}4���w�����[��� :��+��J�p�j�,��דWĭ#�c�E��-��[y,����;5�\�깣P�^eE�"��9�ͬ%�j����I���\@Z����s{H��X��dW���-������/��o�׿��q���w��[��/�!�䙟чL�)�����϶ET[����c�>n�C?A>��;ܝ��,D�������O~�>�`b��BGRǯs`w,���[_�F9N�����N���?m����e��uFy�R��ީDK�;�\Z��S=��xu܋ǌy#��үI0���1,	�τ�:�#a+��,���
���R9A�%���<�t-,�S�`����I ��X�c��"��O� �-3z�^�24<����i�8n�c��1�R�deJE!��1]��T���,�5duL�i�4;2��D%Q���A���Ё	D�RX_CXi��a�̃0�*d?��2�izl�����^i�`����d���!�����_|�P/����o��^���%���(`�	i�����g�s]h+m�l1��;��m�I�X�rM�X2~ j3��y�'ׄ��-)J3EO��7�M�BK�����|Nh��uX>���K�#J�����D�%0�ډa[��z�=���'2ES�I���5�L�?�ݦ��񇪤w�F� �j	"=u
ֲ�����1'���8����g�qxJ:��@"���#㶏��o޼�,�JV>B��V>���]˽h7��@l�&͕����^B��=��$������3���C^ �N��<g�MA?�B�bz��B�5sF,�-4UN���qr&���pĥU!��������F���e1�:O���3�Ǡr�%��f�u�g�,S�\���1�F'�}4�8�z��x^� R�hk����X������z��������#���E��n���Y	Z��{�֔f��VqS�G���^��=+��ş6�}̽>9Na���)��&���N��$�����I:v�%�t�G���f�Ԝ�lL�_�
Q�1#f�K��6�7���V�_u��L��҂3���2��	_�CaF�w'� �Kas���y'�9�gz���"�tk6x����"F1��.��#`��At��e�*A$��Ǒy�f���'�	\6K'�)k�t�AAD�T�V~؅_RQ�p#�[��ҭ�����b�1���o���O�W?���o�B}���?t�'��o
�MW�\m�
�H��i�)(�V<sl���+��J�3ϕ}֮�W�O��C;�1�.�"Kw�.�	#����d�-<J|GJ��D��6��WfL;O�S��H��G�˿x	`]��*�~T����L3���.�F˶X&�ǄꂾF����%�L�
7`��4�P	�J���ܽ=[�\��8Ӂ7������V-��E2cNB7G�l�m��2�a�hFcΚ;|#~F��SOX�vND;T-����JJ��*�D4�����V�Q^�[��q��J�Iʊs��^?�Ϲ�K��������'p�x�zY���z[C�(JZ�*�2k��H֠�1��"��+�ɼj�O�K۬�x��8�6;O�>0��3��\א�q�+Qڌ�i�<��$�c�<�X&Y�%Q+c��C?2̓��hd��5Z5l��8kC�2l1Ü��!�K��/���Q j6�ߜ]���V��^�YsE�[���e::�Ѐ��rmG��cx4��Ӫ�1�j	q�vy�$Q-�M���m�/ѐHϘ�r��$��2"Zp��FuTr���dA�sK�������[r�[mV ��Q���; ��*	
������-�L�c��M�ZQ:k��Eq$�Jк���E�WXK_I��izw)�WwM�1�p���C�׮���H�U��@����J�<���l%��ˑ,��:r3���p�}�	�I�o����G�A�7W'DR��:�u����̀�Y}�ֲ�Z!�㏄���(N}�K!�:<���K�Uj:-VL\��1r�m��Ǐ�j7W����4�����$	*�Ӊ/;��t���윮�3t����*�Lh9w��g-�c����7����M�c���I���T�����ےd$����t<��ؒ�*B4�F)x�g����Ml�)sp�<	'��R+%��#�cT՛l�>����_��_GMǥ+C��yo~}'�y/�7Ӌ��͌S��W_�[ �n������G�h��)��M����R1o����+�����4�O{��r!��C�F�B��H|�e�:x��7ʒI�:.�BPi��X�d�..��T*0�7��`���7�23�+�@Tǳ#yvA<7���;��K������f>U��D5�O�/��i-�H%+�O������ju�Bx�6��ޏ��7(�8�#���id�_�r���������b��[�J���h�L�<}���	"�z�V���1��>�HP_,���f������������L�W?(r n��;>j���Qf�&�:�]D6l~��t/>�?�}n�t
�݇�4x[J�Rh�.�k�ݓ8�H��z�\v���);��oO�����[���avyw�82�������n�_�r�1h��������޲'q+��V����2�<��N��~���5q��u#� �A�o��f�kA�(N2��@��N^7[��n�~Ѣ�Ƕ�t����?�l(��j*������n�X0��X�^������@\7��Z��?��~�%+`v7��t��?�//� �r�T9�p׆�i�A�J0ܔ%v5��q���f'�|�fv�y����$�F��y�N�^���	�����!]���I�/�H�+T�.R(&��5��5s]��<�F,j�I����H͍��9O�g_3~A�+.��%��CTK&�0H�<)�E�(��53��@���y���A�H0&��X���JU��Fl��C^@�� �txɚ�r�<c8M.ǉ�/`(,��_Hd�*嗩j��m˔�K$Ɛ���R���N�Sݟgm���@��ll�A�-��\���;�Ո��a7>�Y�&�X���
d���V�j����+�}��n|�J�4���*YN ǭ�6���J��`��0S8sn�ۧV���`3�*l/�Gh@�<n��%�2I��'��`���'=Ўh;�� �E>�Qu�F7o���>�\�hCG:0�[���P�ڸ�J������z��<����\`���h�r��쨖	�9ƛ7�h��#o8$l��mkÐ����!�*��kwm����֛�4��_�8�-|]�|��9��34���/w��Z��X�?�7f�e]^�D�^�Z��������I 8�x��Љ'�F`o�2�Uʡ<R��b�7�3�    ���	h�-��x���˟G�y`$Y��x�]���'sd�\���

JxZO�((�Z���-�v�����˞5�ܗ�k�p~��z�V��mN�-�zU�~��eB:�����y\@֌�H$�D@k`$�5w�f^=����ks%:f�n��@��a��g�T������*��-�Z!_������4Cd�Ӳ5��|���/?�'q�$.��#��9�I���{I<��� 7�(i��F�Z��),��c:���C��E�r�w�Tn�B:�ڒ7b����9�IYv��ft���j�/���|�NBM&k+_�y�J�V۔����eD􊀎
���'�V����?��h��~*��VF'��	l��-�o9>�R?��J���%�LS7	tiûÐ�g��3<�A�箎�>.!(��ƌ���c�{	��\��C4�<B���G�7�Cw,�2V�Ͼ_\����)+�����n~b��ٕ���z��fvdL�5��.�˰�҃P\2ڱxcK%��Z��d�l!��7g{ƶC� ��A��XB�G�8���Յ�j|�\ۦ���Hص���r�H�����_��-ԑ��rZt>�ީD_@���aG�&��5ߪ��+b�sHSґ7��N���-�ܥk�b�Ò;B(^Ç�!��AF�+�P�D�I���߀`�m�zA�BYL�.�?F���U��=�A�d���5�,�ko���}������h��%s$aq��^�ث�ՂӋ���'���j:�?�81����'Q�}���	X�汸5G����{m���\�����\CL�c��#jehe<� :�v+��VGQǭ{ :�-q�@?��(����pl7�k���!+/��r�O�
�M�̙b���<sy������n�,�9����������0ז�-��W��JS���.V��ۦ���YW�No�p����lZ$�ޒ�B�^L�������ڮ�}�Rj�}oK*j�.n�	�dd��$�?aV�qr���ܐ���f�VS$�y�Y� ����6�r%�F�:����C�i�q����~q�f\CY�=kRMwY7Q��Kj(�:�Y�j�hVi��<L�~I�K����s{:>�֣#y�7:��(��h
��%&d�~Iu\K[7v���JwՊ�j��~j�N/��t	�_��}>D��?<U��Tx��v��TH#[;. Ѵ8n�^�KA�?G kG�t�l9σ�؅�n�j67_�Fo��n��z��T��ܸ�E�7��&�D_7��Ig��Ȑ	,���@�\�#�N��s>
���j��i|���S�>�x��$���]/�����vۃݸУ²��P��'��$�.�e	�ǎ:�i	��7��+�@T58�WZE�_^t#D��e�\�X�(���!ب�h��)R��ɐI}J+?ff�n7��v�F3Jb��V���Pn<�Aw�If�_;I2t�@�y ����q8��A\��U������>���Jz���hՋFp#�G,�W\_�v�u��F��r艜�FoI��l<R�Կ�d�ތ�~�7�E��6ɓy�̀��o>i��g�����Ǽ�f��tD	������=�~F�;���О7�b�$T`U�"�f���6�tpex�D�������p򯸕�q��U�7Bo���X�č��~�7�
~�cM�R��{�.%2��W�v���ռg��.O�T�7���rɩ�Xo�4[�Ԡ�Z|y�o�r�#ݴ�0
x��Π[��j� E�yt��2�9h[d���a�G;����z7:1�x1B��7�ѭ_ļ˒-�.m"KMq�1�[m�mA�x��5���5�aࢲve����N��X.�a/�HI�G�����&����.�o���}���No�6�]���x����>#�)���Tt\Y��w,1�I$��Y���)O@U�9����1�Dv��2^��1y-G����+K�z���Z���/�߸\";c�.�k��X�߷�ٽ��Ȉj�T�)�8�ҍ��㝖D�p��G�� ~�:T�2)s6@�=ߏ�a�Ei\Z���w^��D4��6y���x�v��U�E�a҇��c/���3_���i�X�ɫ������iR������.�_��zL��(�@�h)�O�q�:r��}�(�F���z_�`�&C9�����,�̄���r�ӛ�������g���Q|=G�Α�K���5~Y>)Ŷ�����m��J�]�˺�9+i+��S/f�����x}�>y;`�<)�5�F-gv{fW��^��tH��fԢ��������Ţ ��<�ivs���p&�ݴ�p&��l=�)m�7Mm`�Dfz��b?@ݡ�c�Q�߅]���n�E�m�4��� �F!����	;x"��^�~�@��v#��~�>����l|l��|�)z��L_$���PpR�M�$��V�Y��b�<��ыޣ����%~?��(�i�rq���/��3ɁL��
e�-ci�ɡɉ�Vk���5����x�,��E�p&�Cx(�� mF�k����i�*(E���"��11����i�G�Hh,��XtV��`+�	�mBMhr��$�����F�7����^&c��u<�V� ��\�hnRG�T��`���x���K'��u���qJ��E[L����$T~�D}��{��ᯩȼ�=�<N��3�S����K�'���N|т�[��o~����!���O�5@�Ϫ�{�P�i�3I��1 ��v�ZP�]	6���C�`V�R�ERn�9�6$����X�8��"��;���8P^�/�G�%|���2��h���(�B�{�E)��,ah�\Yd#����s��]{s�A�$���`�t�L|Y]9���Ҋd8���.��#A	�iZ֡�7�^�69��aϛl��xV����t����)��wu���V��wr(GD�=���_s���$~W_�py0��T� �����fkT�����M������|H�����0����g;=�l�� ����2�b��W��?�:6�pJ�ˎ=�}��N\��㪻�S��K�?�[����/x�§A�6�'\�����I�G����v�'�B��t,���M������/�n��̭�MԚ���2���)aRs`b�q֣�T+lj�e�C5a�}/F@ �E��J��-���%�c�ND ��'�Z�4QE�c�`�
�	��H��P�0�=5��� �.�}h6�^S��V��/N�a�r�1n�9�R�n!��?Iu�~)���V����$v>����ڒ���E�>;��PUD��8���_o����o�:_1����\|"~8cs�
���a�7��2���@���e�2����X��@;��8�#Ѵf��ݨ"d�������t�BYeI4�Fc��h�UGc�(Z��c��Ԗ��µEbY٥���u�Bq	�E;��Q�w ��	�`��4Nӗ����XAS7^���Τ�4%�b���I�{q�?h�N�w�@bdQpf�ߍ�z��9Hsn��5���z�œ�wd�{΁�]�Y��n>��n9u
����B`�]�b'�d���0�u�C:.kc����<?J
�&�6��_f��L�PRP�ǿk��Y&,��׳˩13~�\��d� �h6���Ӆqw3�㒏[�zv����[J�Ŵ[�T��H*jGmJ�qы��8�v.�"�N�Pg#���=S)�����%���w��p�x�u�;ۊ��D/������Z���
g(gs�V�v�2_ӎ��4�^l�r����+��<�/tg��D�bf��S�K���3+�+S^?����q�p/>�~��W�W%+���0���̮��gz��S���7��|)���:�U�Y�lj��%��,8�_���˫�����P��g(���0uc�-�=s�)���<��~�'�ű����6��t�,�NpZ����7ؕ��[I����D\7��8_OO���|};����6g\7sm�(���mK|��w۾��9�X���l�D��/���z�(��Q�Q�zN�/��Yd��͌n����*tT�����o�<'����\�0����(Ź}�0��Rf%']1"$gs��    � �D�ʹ����?�$��Kݬ�D���E�,F�D�.��!Bv�e,��=&2���b�~��p�{:���x���]��<.���W�4�|��*k<?y*�NAҖ7hM�{ I�����h8i�єՓP��`2#� 2����g��(�Y����$���H}�Y:@6^�(��/�_Ǵ�s!�q���s���]��5��
I7�d��P�C�C����[E����K�A��Cn��I����%g�-�l&����s������ß�@f�Ì[���ЗF�tIDT�^�U״�	�rO����œ��a/�\����6�#�P,��U��ŝ��>�Dt�d[�*��h?�D#�d���HVq�����H!�uX��"o0�B:.5�(3T�Q �t�5 ��o���d�(�8�;�{���y9͐-�B2���[]:����R�G&Bq����������y�=���N�K��Lz�S�	�Jԍ��"y"JiL9�?.�c�D�2hi���Fjs�
�W�=��C�{����Q��S~�������d��?Zq;���ß҉@	RTv�z�<�k�
�yp�:i��y���������=�X��/X�U��4�]!{��o�y��Zc�>�r硼�j&bA#��y�?�>�O�hT�HXa���J'$U%�Df�Hً�e�H֮�ܳ�'7�$���΋aZͽ��&T�V�РՈ��A�h�"�ᵭ��vz�q���_ǉ�V�z���cَ+�T%������΋�k6���%�+k��hע�4�6����+������a=Yq�G�UV�`P��,D.Hk7��S�˾~:�{g'7���JH7�m��w�W��/���pA1�<;_7c���m��D�p"< ��䍼�+gD�q5X�
J�f�*-���,�_q��c���֑�˔4����&w�E2U��)6�]�������⒑>R�Ɓpf	���^8�?	@m0̈�g4�0���-�XkY�2�vm�������Rc�
�S�ػLFǗ%�a���ˉ�.ܭ՟�=�c��c��/g�2�v��������5��c�e����K-��b>��8�%$UFv� �l��J���B���տ�Y7aV8��n.}p������v�t�.5��=@�p�û}�^{kPY�N��&k�;��s��S|#Q)h��,����	s�(��J�����/�r�\	2*�?� _��}셧�e!/n�v�\-n��2�t%n�Mv���^�E�59g@nk#�n��ٳ�K-�ڮ�Ή����mV��)���tS���� D��(x � ��(V[*�]4�h��kS��krV�E���Ϥby!z�0���oĝ���Z�ז�,�x�G`�[�q�[W�qH���"�`S�b��8��5)�r�T=s Sb���@x\I��3�(>CwpYO�+�jY7I��ß�}���C��N �+�J#�h�
8w��z���?�����:A�?�����ץ�����/� ���'b�
X��q�ewH!��$y���+����� M�;������|��f%B��4��ձ$l��q?.vp�h��)bUNϨw�%��*>m�Sv)�U���*�Ը�E�R^���'�*�╮��P��U� Ү��\u�/�Uw����{�$%�Li�f��?��V����4U�*O�j:�4�&Ky?}Y�|��3cq9��O�/�;F<�a�{|p5��Z�Κ_�t�-�{�5.���o��G"1 R#���g`6#:`k0
��u�Go-A�gv�B�
�#$/~xe�Hs�����G�����DR%E���d��jN�W�?�*��4�u\ib���)=0t���G��K5�	y�������s��z$E	��~�5H�����ӣ\�U�^HoM�;�~�P�.�z��;�Ht��#to���&�3,AB�د#Mb	�w+y݌[j��W���P�D�!�'�Oؐn�fݍS/���nog���e�b~w3�آ���6���C�G�v�t��)_Z�\�8��|��L�8���
��e�)����<��B��Kh{жI�x�[�].we�b|r��e��^��0��>���O�z��x��h�L�U�`�B����No��W/���q�3���ŐS�P�k���'�K-ME�	a0�1�v���>��(�^2D؎kjH�����:^;p:eS�B�����u6����=�k��Z�]��l��^������F +3o��������|�=���Ȧm��/�sս�%Gw�8��$������K����?̮�X���O���ӗ�^8�>�z�ْ�e�*��:2Vg�R�꒒�]g��Q��P�"�!�n�J�K$�I6�Bʇ?�D%���GD$M/�Պ���e��[|B4��N�WG�;���X�S��I��]R	{��İ̆1�.�s`���H�B�ָ���f���bz}G��bqeL?���?U���,)��=���� i�o*�͵���^�yQ�T��ܷ�Lm�n������􆯪�����'����]���7��ՌFVq~�,�UÑ�M��%3��x�*�`
h����zrۨ���.����u|td;�> rF��O��)��:NP~��jc�L�h.p>9b���6���t'��q���5;� �F�������ga��N���tS%�ݩ��M��Y��ݫ�K&�ۧJ��b�N�;�����ŦPPȊ�������	_]<
jH+_�2;(wG�~[{9�Me�����O�s�!�D���R��J#���,��Xj�'��m����S�}������_�MЖ�x�1(w\�G�WF��g���k�2�#�XO���5��F����^� )��$�EK6��FI{�3V�~/z�唵K�}��6 '�Yޏ��4y]r�3Km�,��y�ga�S�һ���;���~��^��@[�K��꽏�i	WLSNT;Ol��p(��ƣ.���(�ON�?�Z��>��8۪;�`��&�r�A!�,
��2�?���Ѱ�iȾ�#7R2l�h@���cK 3�-sн]�E�09��J����|O�d(�.үqD�+�8���e�Z��H !���(0@G?z#;bEY�j��>&m����ЏR# ^��2�aZ>��~��`���>ɺ�s��4�M��}h%t��5���^��DDUu,�@h�|�HjE@(H�&��-j�s�V�E��%�"���P��n��_�T6 �'��U�2WM���<n��ri^g�����Gq�:ͻ_�+=�s9�G?�-vO�/䞬�nBp�e��0!&��v�,wl�3;ʝ5G>b��&~(�{l��08DTl��0v䑈�L"9�b���>F�ǼRn��]��V)��zDQ[�"�s�ӷSs;�1�F���X崵Mf�tt�P�q�%�u�����	�Z�/'W�W�iX�S�~t|*Ȫ��U � @f��vC_�)� �2p��Ǝ�vvW�<A]Ƽ{��5E��^���rV�V<�m��WyM���l��]K��^���k2N�d�kX��7�B�%�o;&�>_)�*��6m����nO�������ָ�}����3�>ό�o�׿��}^�bq���뻫�������+�\�	�9�9![�S�!�mrIK�Q�;B�8`Z���!q�}���E҂q�ڍ�#]gA����	܅�*�.T`��I�==���~oÇ�M���X�����B:�|Ĵ���}B5�hS��eB�uIr���܋�]�ՙ�uY�y��B��k�a���>ލ����@�)�+{�M��H�
���ʁ���� =IGBİ�H�%���u�x����#1Q_�WI6Q@�\�xT���?��[��͹��Ei�Б�~b8�W�2�]b��bX_ˁmt�F�����������f>5n�~=1���������:��"Ue6E^�Ðᆒ���~0D�/I�t<F�d�08�ɭg�5�C}_t=�8���,G�`*{�N(��$э`(��9�G�d�L�E�V�%9E���|�2��m	�d���:�䣉�o�:MN�Z�;%�&��Z�lbD�^�A.�A�`    "��OH2Qh1���VND��Y���د��V�d3������¦�	��M�P���:Z��zs��\�WC�BZ��O-��|}N�B�9��;^:������W��u�.�ʞ0պ�߀��N�銠h�A�V�/jJ���fo?Z��ah����(��E� Z�n`��gX��V}�y^7�=TZ��������o[�^Q��N�lH�����\�$�W��h���2{:����W���/j�^Vge{�3���b��fC^� r~Z��$��l�	��~����0�p#�:��j�n�JS1QL�7�1�@Xǹِ�,O8������`<y�y���T����ӥ����#��u�i���l�5�:?�����Ц��Q-��T%�NԵð�vp�쬁�zt�!۬O����	)^]��vk����i�"h�c�ˮ�h�-r��8M�p@lU>�ꦥ����W^<�F$F��n,hGӔ��iU4�gg=g4-^R�8�4� �%=�0�d� ���:���9�3b����3�q��`�݆�,���4l<���`�h�!>���O�L
ڃ��:v�r\�����G1�X������q����g��<��9���
]�T�b���H\ĩP�R��
�ً�O�ϐn�VٞN�A5�#uX^uAp��_2>�2��n�7������yO��t-;v�+��#Cx|B.4�g����`�qJ;G�I��W�F�6�C=�+����A"}�ˍ�ʙ ���sװ��I<L�A���Qؗ�^���ƪ�>�a�;ŉ��W���m����ϲ��8<�s?۩7��C�lk�o?/� NP���|D�,�(x��Q�U֏�e];{��ZU�^ryKF�8@�3�I��Y~�xh]��F�(:B�i�P�k.�:��Nb�4m�ɗO�F-n�5��'~PG����b��;�b$�6;[�i'~B�]�EB�Q��ޘ�y k���q�o��,�����,��WM0f��gK���G�s���-u�E/�Xa��!���q����r�P{53W
褈���6���q��������G���]��ʿ;׊?k[�a�MG&*��tXk"�S���*�Q��Kل5K��H/z�M�)�s�~��~���j�uM���G��1��#�h�.���P�{,����r
}(�$����ҫ/s(�}q��<*��rt,99fVj=(<=��am�Í�Gӛ+��HX��侪����p�Y��5��v�9�ze��!�2���e崐NG~���ɣ~��\&;��<գ	���o4?�޻:��b<�}昪�Cx�p4]� 9\dQ�������e��ڌ�=��\���ц���,�f���>�����G�������b~�L�����I�}��u���V�a�d!�PN��9�E��+x�Kp�Й��"��=$�����uK7�j�Mf2�Sq:��ΗOG�sSF���pQ=F<��>2w����-�B��[<��ې�4����O���/���8"��!�����4�J�iq�N�0��vA:8����i'aldQdp�H����4�vcX�Ѩ�j���B�j�-�O(?[���.q���D�ӂ�1��yQ	�2~�'N��2d
M|��H�6]�-�hٷH:
���N<�����0��0�$>H,�';���@ϭs����%��N�7��1�{��&�s�	E�磸���軆���Z2��[3 Uփ�����`[?�4��WgCêY��v���[�)�f~ȍ�KYh�����v�~����\������5k/���{aط���7�$�_�6�h��}p���-�F��(����g��"�$�'p*F��\h_PѲ�B7s�U7+�?*��!w�H�spV2=��@��k�S�v���lu�?-sJ�,�� ��:�.���O��T��q=�r3=2f?�o/D�#�������Ŕl�x�yZ;���i�.�&m@Kj�]���>�� fļ����-dn2#*���M�q�3QU@s�����d��O��� ���Ҹ�.m�?
�"�B0/}6�q�;4�b�aU��e�P���_XXEVԃ(0���-����l�t8@K�c�av.ګ^/	Bķ�^�_�*�,��2`�5=��hW�q?�`9�Z@X��k��G[�ć���.]��u��9�~���JIs�yq<��ޒX9���D������ł~�������Ĉ%���*�Z��8�RbZ�Ĝ^�Mo���HjBF%��'�Q7,��^"^4i^��

��I;�c���:�墕��}[:[F��9
�&�qiV�a�Ë2�PAƸ�^�O8͞F����s�`����㻜3�"�,�d�|�)��ن_��h�uՄ||�/[��޵�yi(��LJ;�����_��C�:R���[�{�V�->��������O����^�#?��.����L�Lo����[6瓺>4r��p�	�����h���a�\ ~(�]�	jR��)��ianh��F-^=���2Z�i~l�l�P7���w�
ݴq"l�uZ΅8b��D��GD���p��a�dۚ=A�3���<%:��~��t")K ���~wi�s�����N�vuT쌊I�<�7a�v�ق~A�	;�8��5�ꛎ�8������Q���N�Hpo����0���ד�=W�?<���	2����$=뻲�j�#r\��~��&
��Xjd���ɛ% I<VeB�f���q���n;��U*(�Bb��� M�G�����H��^O�PM��k�����e�y�r͆b�;:R	�o�/��9�3���Yt�*8�y���$Í�-B�m�r�C��S��c���+��� -�j�Yn˲xA�r�g�u�0AO���gQ-�aPA�R��Nn�q[.m/o�XV'�"���x�B���-��&�.��u�����u�\�����cav��i`vǄ��0��X"N�>A��M�3��l�W�-.�Jv!���'-��� @�Br��[����4������~�t�0������jE�Dr�F�1Tַ�ޜ ��cD ���1]?<K$Apf�4�o�d��WӋ:9�t��f$�.�����r�C��<]���d�&�A�}#��Z�Pm�ŗ���,#:��x� �����~�Û�﷋����j}@� ��)����,�`�p9��B�Ͳ2ڐ_�׋����饼�+����ꆱ5���Mj���z�X���ȟ���,�%-�m�i�#��x86��ȀD�_}����N���~J��]I�rd|}'� !��=Гp�v^���ڢ�רNo.I ]ji
L�/�����nߟ��1G���� ���;䱾�J��}�8��������%�(ܢ��vů �85!
�{���9�N�+�����8���(y�#�[O�Z�tS�!�'p�Ӥ�iq7�ߋ����6=:ɇc(A
\����'�IFR���Lim����aD���s~�LԜq��wi�*���A�#�G|rĞ��ǩ�d��ʫ�L� �=������$K�ìm }���(��L�t�Y���>�5˜��:��%�oB0��ȥ5���ҸhHkD�S�õ�h� Ɔ��Ģs`���7�s*6~<7�9-�a7>�v��$lN�a��;�tr���}�O�k�<���c���$�4��8ґ81��n�}R�e�TK	6,|�e��C�X��AXhJ�:��3�F�E��f�|��_�/qh�������r �Xd� v'��<�x��!	)��$�<�������x�y� I(z>����DJ���X��p��eU����� ��Jt��DȄ����/;ܾ��߯e=M�ί3\ί�EO���m^@�{6 -D(��M�t��'&�{^5g����^@7q���qD���[6z�|� �h�1/C��`����Ӟ�d�A��$/�S�&2�M�W��;���~-+D�)�z��)"�������c��(K%]=�6�i� //M0�\�.	9?y�����I0�b��{˖��r�?A*���m��H.s亣���֞?!m�Cjضc$'    =�>i�Lqs��	�.��	�X��f΍��e'o�h��:�K�+s9�������A�n�-u�#���W����d��|�/'Х�P�vX�}���'�m*�s;\%ͷ�hz�ez3�������������m���	���/�uэ��X�:L�qU�Y0c�:����!t���{���/������X��%��qTڜ��`��Y慮:AX�'7ZM��mw.pvj�vv���4�,�.W���@�b` L�%ِ�
#�O� .'��zޚJ��`��
=�2��\K��+)}�yn����t�.�	����8>>����mی��LWA_�.Y�U��\�9h6#tB����崌��l�wѨ~j�"[���g���Z9�"wqrJJRD�&}��L2U=�mfM_��}DsՌ��ѷO��ES�����<�Y���~[X� ���̿)�2��j&i�i:�C4�:t��:-S&`�%m�a<�]DD�L1n\�q��9�w���#��~ve|]T��}��\c5�o2�N��f�vy'- ר���2#�Ʋ��Ɩ�*��Ux��x��Wm�l+�p�@�IǞ1n�{#�PY���q=p���t�mM�5M1_��=���.g?������i�Ӗ��W��)��SX3�?0����<�9�%���f[�IW�@�(i�k�v�,������U_O��GĴ�acَh[U�3	�q����wҡ���P2,����R��Z-E��pc�iv��f�qX�%�49���G��2)-��A�jP�c�a�zh��W]3�����0�w�b�$\�\İ<��K��9p[R*>i8C�@���^|&l��y&>�.='�$�F������(����C��ؾo�

�/{�i)gd0�[X���9:A�{����$�P�ޡV*�vw���R�|)�x��/��u�u�*�:V~[�����h�o���Q�����r=]���k�Y^Jm��+��@8f�<[�Ln��y#�=>߱�����2i@BH�c��>nKt���譸���]I$͆0� %JI5f����e�)��6V�)|��v��5䴌�$ʼM{���	��
\}�f�����6yR��C���D;�&AZ�ɧ%�e��J�����HV:îh܁���{D�-�_����:�2����k��������O�$�|׾������oxz9"�1��i�ͩ^��r��F�Z�-�p��/�+D�,fU�n����q[�7����M��T;��֋zm����n�Zz.�5�F0�Gka�*�n��Ci��m��G��/|�7�׎��v	6�Y���Q*l`��c�w��1C�9��'�����aL;�l�b6A ��_� 4$�����6<Nv�O�xt%�t�>�Wŗ�W�JsP��	� "��54���nv��Vw���X�:�VWӻc��h#�_g7�ō15̆����{���C}�'+ޖ�� W}�
��Zj�������a*�_� �z�xH�$oWգ�R}���&�(j������ӵg��ˣu6 ��Íc�k���Y�1`8�C��Ց^��R֎dU���õ�+��vG9�$-?̓`"�h�bI0�2���l�9@�e8�5�%$-3(�'�P����ȱ��e���#����V��&��d����D�,�y�Ç���j��II.���������0"����]!MR����}�`5 Y�=�#�4��� -����h���y��ќ�>8�~������'�����A�<�1���É(,���_(	��{&�p0�����H��y�g�P�ޗf�`��=�ƾXD�,']].�:<�}Y�Mv���eU:�ʴ��T ��e#C�j�2�n�^TP"�G?t��{��MjA��g���M��4��F!x�����Ӎ4X1@]?|[���|��e��Ŗ�h��"`��D��Q�}��k>�Mՠ/5ό�4Fqx�i�,>�9Up��)�J�.?o�O$��K�,���0�母npv�.o�hǍ���܉��1�kt�ôz��k���t3��G��<�׈U��}Dv��V 7$�zt U�v 9�ޣ�����j����������ސ�w?�n�f�'������Ŕ�'���nK�H^����0�=���A���9�x�jN�~x2��^l8�_����4LS�/QA�֡>�r��$P I���S��JM�<\��w4S/�[&O�������$�5W��pw�r�N"��Y{(�s̊�庯Y�<2�)��t�e���-)v##�� �~�ℵԝ1�kR�N� �ȏ�M�-��(��E�Xi�=��C|���V�N�=�B��Lwe��za<�{� {���.�ڷ<�#�9m�:,�����?Ծ�.m~��w��*�7T��X��1կT��<g���
s66N}��	cD٭s�U��2������iFjjq]Y8����P���������S�����pÌ�No�o�>�mWONX����q'�0��D���lu����g4�����.ʓ7n6�akZn��Ĩ'���$�а��@�-����m7��h*eNY5�0��ǥ��aX$za�|��[�ϕh�9W�)da P�^60����UK&-�M��A�vg�yI
��iY���#�$+���@�s#��e�0{�M�<+#GGS˯�$�N~���/ �ă Ց꿔7����_�X���׷�z�U��dƻ�pC /�n�?1�-�͸����K:
�뗤��.���l4�>{�łB�gi�ˤ1�àW����S���C 
��wD}��?���@��-,J�aƑ���EH��X��l���Py���� ��1b��~i����/CZTf�+�#���@�n��+�\;*�㑒�Ǥ�5��U�4X����*"����^��
�x��io��c����Bֱ:��x3<H��ۜ2Q�S�v;b���hK�ve6:@�]�C��*b룷�:*�({IcG�����oP*��a�k0qV��-hG⠵X��{�)��f�G�һB��h�6ܞ�i ������ᯥ0y@��m^�O��a(�H(=�Q�g� �ݢ�[�>���4m�.T!uL�&xB��1�	y���i�[��]����Y�)y����>q�F��1�V1��hG��x�]�b#�c�CcW�!���[�_���������vj^Ͼ�x��z��}��5P���a���!��9�?���3#|�����ÍM6�NG8���K���1"i���hV���YRufU�=�s�]3W�(��~��6�����O��I�UG�^p-����(B�?:�A8L�͑� N7�F>-|+��{��<I����Җƣ#����������p���E���=�eF;B���!��2�H������v� �PV$�f����t��)<i�̠�M&{��D�����#1�a�N�!���>Y.�/C�9LiGM��m5y���zyl�0�f������g��e��Ua�c)�y$A�jHɺ�T�;Eh�����.��0��:o���#r�8y=��\h��pL�FA-D���hS�˅mRR��Ӭ�� 8tgF���ȴ�C�n3��fu�YۻFH.��@�-�<Pv�X���
8.y�`�l�%"6�<�BO�C�P�0��9D��ҍ��h�2��H�8.� |�)�Ì���RFј?,{4z�sr����%�B���g9#�P�t܍�]�yp"IG�"�)�z���h���k�o���%v6��D���tZ�� U��C$'$�H�F�Ѷ���h[��3r�a=��G���m���O�v)ắ��e��㻾H��uG���Ɯ	�L1~�$�x �eB���&Vi�4�,����@�;2��@�	��	p�w~4<I�1�=�M���m��4g@�.����=�D�Wx=�TKD�ّ�m&�΍/o_���1Z����T����� y������ ���sN=�更%�zJ�Jd�|�Mi�hJ~�O�hl��}���zZ͜�v� J��d��y�����[�g�O����7��W=o�4�����#�䂱DH�g�!PӒ�-�a{ԁ!�)K    킐�9y�M.�6�E$���:�e<�0��J������W�&�5������ɷ���%j�P���l�����f���E5�$�6�%����Q�-n�QL��0����P�[�Ag��򈔖��`�}����D|qx���]��el���������v���Xo���훊E�r�`Hw�� �²��\{���$n�ΐH��jzא�r�m�(J�H�c���q]E�:F�����n-yF�2�6�:,a|��;'n^��n�ix�Is��t���;4k��6eb<b��U���[�4���Ż/���qj\��݉q1�������>1��?5ۿR�V2������ߓJ5ۮţn���h	����!;���X.��U��~�t�
%�[h��iٴ%���f��& |�Q��_�v-5-�MѤ�Q�c��@N�(�FF��T��{d<����ضe��*���tj�)�MH��dw���[��=��fh-z��R��c��(�^&��$��i���zzZV�y�j	X}tL�[F��b�ˌ���0Hi��H�1�RSi �xя�j���f�q~�Y|�Gú7w��{�Z���~���D}{'�'�#0�R����8��jr����{�c���C�k��󹖠�YS��,_֪�77�?lV�}��c5��|�P:���F����ↆ���̯f������v��lZ{3C@ ��?��Ɵd��� �eX3���0	R?d�ً]6z�Z��`�96m�S?b�R��Eb>�UwwHL�m �e�y@�&˚��pq�Q r\M�f7s��n���ټ��Z3�Ɖ�j�`��]w>�$�l�����'�����#Ԙ�Oog<���¸�_������� x�� � )톗Cašh�O6ܛv[^��݋7]Wm����֚d����5� �Y�\G*����0s�cj �9"DD�>5���A(����Z�:�D:  8}�f>܄�,�#)������ѶO��j����Sߙ�p�{��)����"�E<^/�ɐVC��/�Y��8hAd� �)�0c��h�#3t�s�jȡ1�J��!��3�\�0�讍�W�/pjy�%�bj�F&��B�fӆ�~���?�2��"����/F�I˨��*YG����}�[��xM��HJ�^��9�Awπ�ؗ��y#�Jo�Z�h���hG�4[@5�Q��>�?��V4͓�n�i����T����g�P��1�{$ɺ�ы	�r�S����D��z��R?��4H'\�N=ݟ�`kvI�2f7n��l#��u�a��E�N���v�Wzo��s�7�>BS�	g(Wn��==�-���fG?tK��'��3�ft.H#S&�,-�p��|TDvvi?W욲�G��i��)F�Sݎ?x���`� =(D����IN<�.eN1�h�t�,��xg��7\r�B���O��!+�7į�oFq��o�o���}<�za��������u��U���&g��$w����55&�,��t/��˷��v���B����T����j��N���q9u��Ȇ J5�2�Ō�2�3tΌX1RZ�����-]@?�9Cu���(��[� ����~~=e�������v�x<ޒ����cYicCUϡs@fN��ow�n�;#|���"�/��e����	׺<��2c�����Ϣ�F��p"�Q���(�g�؏PuL�q���Ư��{h$^�05�H���!'���%o����h1ql������K�y^*��kDF?�M̪��?�4��(�h"?�S�}	8ǹ8��\<�������GR*���RG�݊��*�Gބ34,�C��G���õ�<�E&?�Ot���>�F�q8A���m���z~�Ꮡ�f/�@�O��ϊ�)��=62��>��J>�GD�Q�]tE��Kł���/�<~�y�w���x���-%}{��Doi��6LZ���vc�~#}������}�z�:���C^�n�TϪ��$�ܸ8�m�1��wb����{���#���y���D]?�g�~(��p��pu{� t8i[bR�t�v�D����=n��$�޿�Ӳ�1�0�҆|���`E�}3O�%�ѓ���dCw�{=-���U��V�-%���H��pla��v��!�v F�]7�6�d�4�ׯ񄴛N~X���OK��\̧�#xx5��2E8?,n�������b���~��>sk2����j����I����M���Jf&���[q�{�XB �~r& �e�$�H?���=x�y�E��P�U�2�_��$MPW�Mg�u���;�r��"v��'����G28md����chsà��GPZ��l�~�{��zdL�Q � |���P�ީ^Y��Qڄ��v�b8�vv�e�������I���s�Bae�AA�ջ|��0`��7�8E�?���G���D��QǄ�,EC7�ǎ�>w�D�1�F�j�	�r�z���+M,op/��ki6D[]e]�	��@�-qnM�d)ù�Uo�r�?'�e���� ��Ԗ��k�ɖ�<�-�!��0Ġ�Đ�j2Cf��wf�B%�
��a�͒m�����sZ�l����p���g��s�H��2� {�͵�\�ƭ��t8?�/}���,�`46�w��l��]j����ѐF�dB�2'��M�,�\Ga���цYlq}���a��Bjl��9F�������'��EA��A�p&�!����[[o��XH�d���fXz˵��d�װB%,�-K����0L�hg_�l���-K���j#XGF�d���]�����`�o��~N����X�=C�yOzp����� ��q�==�MR��M���L	�x��?�l^�]�ٯN�SN�d]�3�n��E�'�������ݐ̙�(A�k���g�a�Nh�1tü�7 a?0�e�"�ӕ�J>�Z4D�RN
F��d	�(�:�"�u ?�pCTu��#Ϙ ,��yE�"1��(C������'N�/�	 �4���|pN"p'�Y.�a� �>���|F�pF�]W@��F�h�@�Y�O�
��m<�������dGq��hɂd}�R���X��|�"v����&��. ��y���Vĵ�.n.��3=*%�Oa�7��%���1NP.-byɆ����M��)ct_�Pn��?!VW��F�F��F7>��
��%��59���z��x�����t!r/�~Z;X޲��j/׳�+`�VuU��YJt�^~Y|���$Z���ø�!e�m����Ez��o��b��U-oR��dN?�&7uR/�b}7���x��0J�%�I'��E����zI��I=��yE�#��۲,��&��"[Լ�����j/��OJ�/��8�T��P����r���0�.{�Y�I�a����ʴ�e!ߝ���zQ_���
��&�z�`U?��P��`�Xg��v,?�y>R�T�d�L��J�z�X�T�5�c��,U<z�S���G�J�kI#�K|1E�D4�D��d"�O������d�;�ŗ�=P��Qrį��e�-�47�Y�1�dN=@�`�TzAT?����/]0����U�A�ڋ�M�覰��M�Y���y3��>�� eH{ߠc~9�?�뢚���38J����~ƹ�_hs�ߜ�#���v�`R� Vո�k`y��+KyiK�b/�����~��a�԰�^1�5�����~�е��iS��-��Z�@K�w�Y����Nr8�[���J�"i֥�G&Ʋ ���O�!}9Ak�(6x�	�����+@|B6.�3.)i\�Gea���f��6��+	}TЈ�$#�L�>TQxԶPֲ�@��2eG�ǎY�_��B�D҉�ͳ��y�t���i���u���V6��{u����uzv����� ����h:�ᦷLSY?��]�&�o�5�\)���Wn��ֈ�J�����/8]�@���zo�o�Y�!ъ��Ɖȁ���]��'�r�aūS,<������/?�����R��yW+��p��}Zw�:����BZ�k�m���)���䴌�7�E������q�    kyC?�0�XL��E��'���Nv<]���������t���®2�m$����ЦT"��Y�It���oȥ%���U��ٙ�Bu���*9=�����XSN*�����_̧/�1��T4Y[.�Џ��X0C��f�t���X����5�����y�#c�r���z��2��3��M&Z�4��_���@���)ꎥ�n���ݳ%�R�6 "�4^��\v�fz�j=eg������ ��@�i�~-�mu��&�l�t����
���\Q�bE@�L�����µ���C��A(SL�2�B���1L�����r�YQв�НͧiL�pb��!�>���Y��5�&�-E=w�f��6:�%=���U��2���K����*聂��!��mO9�����X��M�M,�@�����M�z���\���8���ۚ���^��hg�Wj������-$l�����ѼT�S���ď��F�7FǼ�gP�f��W�3��Qz'2@����ԙ�i[�4�m�M�~�щg�ܖ4�,��`��\�����t qJ�>�Ӓ����a9��y�����<�՝����&�W��ÝA۬�w���i��f�L�n��-��l���wW ��@��J��M��*ܷ=�r�yr
ؙ�V��z�ۀ]mrO��o��<������S��tk���<wЃ�mJ��ĳ���:T�vd���4��&%zuo�Eq�,[fG;v�{N��N��B^ϟ�؟zрCt��5�6̤J&r��:i4���k�v�m
Oj���Ƕ��e��c�r����D��`h���BG��Z,d��D�P/��r����Q\��e��<��JX��Y�����.͍cY��Z��c�&��$���m�!
� ��C��;�\���GXU�r���.�۬2gQe����b�R�d�w� H��=2�*,�����y���w�q�;��"�ދ�o�4򉰅*�Q��'��ŚcK..��S�(ߓA=:���(�FN9�Ȓ�{ UU.l���U %�誴�D¶���8�)̡�����������U:��4F~�q2Qh���Ӣv𖗊�~�K��D�����,���M�zpM�\n�l���\0D\R#W?id�8��7.f�Ǉ�������!k�fg��~o(�7b�S/�m2��`���w}{h��,����C���<�o��ϋO� h�����/:���O�C����}u~ywؼ�J����\0g���w�|޸��@4q���'q�yꄔ����%�"�ò�nu-Zф�n�~�m�������X��)op��q�<��Mc��+���%�����ﻛ��O�n�r;����W?^�pq���lAG�����zA~=��8�#���w��"���,|�J(�o9����馵�I������>��1	3�y��s{��ZbI�q�kfj2��O�u8qi��a��.���;������Z0����a����<�Ǒ�|~C���A2^��ߤ@�B	W�j�8	b����S��DK�@�K�y@��f���T�>�L<��A"�*Y�o��]Gd�e�������f�ϖ��;�k�_g;��
��
�ʲ�*(�r2��u��`tMudwܗ����Ւn�e��.{=����K�gc����B�]8�cˋ����num=���S_�����f�D��Y]c�g/=��6�_'0���"����((��4!��,����춑�������]��K �ǚVM�PU���%_6GK>�wd���KH<Tڵq�I��z���>�v}9	��<��<H�� 	�oK�;���Sa�����N���r���$@;W�2z����\��r�����M��IǑ�P٘El[:.���6���B�os�</A���xR�4�lՙ�8���6P�5*#=�����Dth^i&�ؑ���'���%�����XF�OH0�/y�6R���Md0:M���ʐЯ�/f�~�
�+�㔌d��~6:I�:���I�v5�����Ki��J��H%�𳅣����zDz�/|��0�0o#b�rv���L�vIz8 ���j�*�����ujڠ[�n�;����?fmd�*�l��@�_��ZL�6��D� b�e� \�h�m���N�yΠ|R��ZRLՂ�˓b���/f�˟��=�R�9�_\_m��ydI�2{�%��]��\R�F�4��!@����r�#=j&��Y�Se���z���E��zѿ>��Q�ȌБ7���X�r'�'�t��po����!����BЀ�>��he��'�goh�k��l��yr�fQx䍼�N�?!�HB�Ћ�x����m��h�X����ڴ�t�t/��#k��C���{i��K��b��(Z�T�S����^l%�i��aIV5��,�<9GP�*l��޴���TZj�h	���p(2up��<aP��=
�t�ar]90��9��@�W�Il�\�)0XJm�D�O�u�X.��r�K�����*������2���uh//bD�cr��q��R�q��$�$��fD!pJ��7�2��D�4�B�I�0���#+5��P&@��f�2��ٽ�H59�zU���ҷ��B��hB�FrD-U�k�����a_�T鋓�{F��(b�������yd�����l>�O��J��ѠZz�~{8@~J���/+~�@P�Hp��ƚ�ȳ���8T,�a�n�PᔲX��Pb\#+2��7���VC�;��4:�{q�����_͊qC7�b���%�@t8&��֤=挒�iS��Ǣmх�7EP'�����&Bc���3�A��K"5.9Mʪ�7(��}ۢZ}�R��*�@��V%�*)�
O�f���E��i�֒:^U�u�7|����dR�ؗo��8LkY	�f�����1�x`�q �����J����?*/���j,��p��� �M[I
 e�;��(�)-'o�r��%���D�M�5Ҕ<�O�����ݭ�A��7�\K�����s+e#�����y����"{��bc���>��T�����"��=F_�֡�}�=�P����zrI��$'�o������-E �6ĵ}h���k�[U:n��!�דk)�˾Rl�5b��}�ʹ�7��*B�|,�W\�ټ�QA��t�h�/��²^�f^|,�����Oe\�j�9��rT=�=�⇪����|~�O�7��pX���p�SvWMn��=ݔ1��A3I���7^�-����/!�o萜��١���%:�I������<�=ۜ���$�	c��'1�6�6zZî��P�����s��ʴ[JK �z�-,�+5��xk��6d{8��@�t�%k5fG$�Sf��"1"̦;��G�A]��D��j\��)�4*�s2o$�����!���9f[�1�s�<:��#�,h��� �J���,P�����*%���أ������^�`�[9Z{���(>�d�rDe��d��h�x�#�d��=�rɶ3��%u�M�ӅE�m�A��s��u;��T��ɐ\�uPB�vJ�V Fy��f���Gc���I ��"���q���K�6�Ɉ�OfEDƣ�5���#��%��K�!ďٰfUY�-��+�t�xZRYw04�PM����_jM7����8�4�.{��x!s�wiR�h��,�R�z�}�؛�lC������y}���~�W^;��t��i�6���U2X�GN�'xX�������޶��f�[ �+1����f�����{$�N��6N�PVZYG	��"�
�cTD#/y1��9�a�Л��)y$��#?$���`l#	-���	�-��S�\1�cZ9+�ʑ pOB��WN&�@&����k�2�I?�})��>uv-ʂ�=;���r]G����0p�K��YHL����l� ��q�[~��w�v�oԀk}J�~����vi�V_hq1�\�M��g��u]������U��`�iJƑ����~-��~T�Yy4;�p�{��~���Q��bJp�� �/64�sLX|��i61�'�G��9��NzH�    E�u]bàZ�I�Z���٬�@�� N&��T1]�ݭy��j�FU. ����������IN��1JHC�^5��$^���iT-َJ(s�f^KwgyZ�«��2�L3��X(��Gp���d$|�ēoh�>�A�|Z��Ԉv"A;�>���ݓ��Q_C��Τj��`RD�)�^�W܂�Wq�'���(#L�V�a;(#��H��I��/!!9�ҕx��C���1���������'���P�j��\-c���,J��x�{/z���"����|��*��]��I;e�:ȅ%�k9�}�&��<H�_��U���Z�|^�թk���*IcI�o�Oi�I�}-JG�h0��L1���/D�������f���u��նTj�B�r0�%��O��<5P����rfg��3�
�Z�W�zơB�z��@1��l���9_Z��V.�C�=����cO����� ,f7+Y(yea������H��Z�	�O�G'�Q�1KP%#��:�ɷ��C�%���U�����
d���Y&k�p�8�9��,g������U2��ez��V��.�Ȑ�Adm����`CP������WӮK4��6�	�=3'шketU�,�Y�>�D�װW�|�*t��h!ĹRe�5בI���NΘ�V������ZJ�S)5��4�O^����˹,��m�دQK2Z�*b0in��i����
�d��a�TV/C_�����K�|�4}�@��M�_�5 j�@��A�7^�U�<��ג-8! %�dh�����i��#�C�l����1��x?xݼ�G���ю%ݔf�7�do[�DB�9+�n^z5�}�!���JEMy��e��
��PM��%���d��ڵ߸j���u�L^���eW��2)��h	��űhA�K�|��W�lt-캶��3r���:X���������5�TE�@i�J�,���(-&14~�Ԥ���[;�~>k-$5����{��R�Ic��!@����r�=ٯQ�Ҍ59|�D�o�j�mx�y&��#�_�pG���LN�H䒒F��a�;5z�?%������n�O�%�"�UOlo�B8@S�p"���8>����M7N5A���4j�X�j���ˍ��Id����}��d�Ƣ�Z���s�������
�oί����ټS�z�9?+�����"GsC�(�
��e��_+��C��I���z~uw;�n�$��̅L�<�%gn����SoZ����M$��9+n�� XFΩ��$y���,�Ǿ��b��u�4[�' ���	H�&y�����i� G�Sl�b'����W��:%�ɳ�{�ON�)z�d�;�"W푽i�	8�����%5ÜO�i���ev�h?}ι�Ih�L[\�P�*��$��ؿ�9d�H�M�J;.�N����;��,@f�`Z��� /�PV��OE��ȗ_�.J�JЂ�J*ޭ%�� I*=+��lh��W��ݹ�疇�':;"�=ݎ�T��dB?!U:��l���x��"f ��x-9ҁ�9~��/�Z]�UM����v]��s�:B��cfvMX���%�a��^����I⊙"�5`��;j|�S#1�~��=q9��=��'	c�k���K�ғ�V�y��t�Y��i�E��}k��`6���ٜ���K�<��-��/���?K�W�n���_C#������*(�d�|^4�i��Xz�-A����M���i��O�M⫚�i6�����8y~0҄�Z[�2^;��L���鯮<�؍�?�pS�Y�3��L]�I�����N/���������E�*��p��oڞ�et��k���VU�������]U�xm��}~���E�kz��_�e�Q���ic6+��2��0
O��%��Ik�;��v��}~wc�_�^\_|��7�?���f���������3ྣh6#:�sp%�4����~������W.��#��亿rM���8?!��Ђ����͇T�D݈Zr-�j��Vȵ������z�y~q57~����_�*~G�t�SϘ�/������1ܛ�����?-�.��9�|y��%���o���xI�'����<n�&R����N����f����D��w������Ni�7w�Z��ow�?^�5�C���po�|S � {�c_�G³�f�Gx�@r/�^7�v
C��h��+��3�^�ֳ��Sp�v�:M���������onĤ~�_\^�?�^\�?4u��D�(�!t�R�?��L���I�ƩF0�PU]D�\�e��j�(B�Ia�!��?Y���6�����CTڎL/Z�4�xv�ѳ��<��в��B�d�H蘥aRT�$��'q;�K��G��� � ��/u����`��9�l�[~������C�Fb6\����f%EE]yQr��*+5���W�;�a���d}$=ک�9���u�V�B�!�'���e�q�Q
����~,�@ T(v�ѯ��%NC4j�D�c}�P4�CCan���,~b7���_�jO�Qɉ�*�Gf�Ҟ"�ˮ�fb�t"j��s�<(Q�*�U?:u#Y����ؖ���M5�+W��D�e�es�Ev��<tx��V�<8��⸤4
�\S�}����3��Y�v��[w�4M�v�L���.2�f�M��	_�̣��wGA�!�o�5�I��G-Q'YV�~٭1C+�5�v��.�%��m�����|���=�~ȉ�C���_�	��N�qOM�LO��DY-e�$��ɭfo�\�s�|���"�"eS���Ck�p�3��	�`�����1;���|󁧺G�'v��̵pe�yPA��ӝ�DK2NM�y�9-�M�o	��T�i���z����e|p]�����=�Jh�Y��~%���tQ�1g��j��I2����Q������kme�fU�y��2x�9Kڣ�7{\� �'P�R��d*s)�Q�P8���Wa��H��I<�x����Q(��c/O֤M���ob)i��β#�i�7�=~�y�`'$H��7Ϳ�R����v���x����\�>`'@��@|�/�����X��%T4E�uqp�G{rcBw�65��K�����:����O�����i���S��˿��V/Gm}D-�"1�l�QP�٭�c��6�Y�*f�N{����rhiڹ������xF��B��"H� �F�Žu�ǉ�.{�:�	T�iA?&Qp���ˮ��(ү�+֥�<��uQ�2/;�rT��!dx�f�'"�ұ��%�oa���� ~/��X�k���ב'>��=c���ǳ��s�/|�ʩ��l�y�2/�OܸY��uX ��P^|A��rX����G���-������u�$mO~k�Ȝ�o|�u�/t���U�^�'�q^fAh�D�I26�1�"o��;3��qrh�Ǉ�`��s��IJ�K�K�o��jI
�I�%���G_p�$E�5�5j\�hI��rH�R[��P]��]��P������m6z]��S�z�[n�$�9��ꙡf"|�x%�Y�oXG���۸ͣ�_����m�� y��a�͘��V&�I�LCat�g�/R��;��a�2�޻0�_y#z���_=��^+9+�:[b�{/v4�x���Q�,�	�e���_��M�P3���ufy(S����Qd�Ji����i�F�� B�|�kX&E�~�J=�aן���H�Q���3bF㤖���K��_,�Y��]>oRD\⷏k��N��(y@��,/�w��;X_|��u�ڷ�{�u.�>�,š;��S� ���Pѧ_1᜶���E!M����s�����Р]Wq���$U,�=���r��$J�NVWi/���˼e����,@��yd�|Q���J�PR�w^L���SO�+�W*�'�-��r$@��;5~�T��[o��/k<�3Я�������i�I�q��������ү�T�/v9z$�[�߇�X�b��=VY��rd��jO>�Jt_XD���.���^��*u$�S�ʔ��)��7�k�ธ�<�\=�YB�    �bx򻜽�����fk
d��3�$��Q����0EF�C�eÞ��;�y�������>e�L��x/P�׵�BY@����ݩJ�<���{���!f(-P�������I^W���2E��,�l��j��TeF�%F�a���� ���u���o�oo�����K��8}dS0����ܸ���� n���|q��������B�E�e�Hշ#���T[]���W�Um���vU� ���۳��9�'�����I�
����
�H��Ob?IO����(��;�ѵ�&I:�ٜ���.�W�������v�������0��7ӓd_���{9C�d~�y)c_T_{��G!}����mZ�c��e^z����d�l<�����}�<�9��ē�+�p'��K����ko�[�x����O�������3N��&�|c�E�b�:^�"�L���a	M�7�dG��E'C��g+�������S�G+�ىm5�^����)�7G$����k2W/�Vd�DՋ��D�v�i6m:�|����2J
��y,�G�c=Uڵѷ^��#�w�<�ԋ̎É�1����V>�80�k���v����*��{!�8�������M�=A���K;n�Q�]�2��RY��tW�
`�g��9�%�b�eŶ��]D�a׸�����Ut�)�Q�si
K�wE��[�&�9#(��I�Â��ɷ�n�K���iԭ��d�Yf�"z;Z�si�.��|3و�U�6�}`EY�TlK���p�����u�mfU��9n� �m1Z$�g�F�����kO���8��&5���ztW��]ӝ�YX�(�-)��i�����=I�Y.Xi�+g:%=�fn�.g�]����}Bdo�U��S�`��#��3*��}�,ՅY�1+:���� �ˊ�_bO4�N�5���Oxtʑ04#�j�Eb�� #u�u�-���\k��;��t���Y�d��:���/������|��z~�yq�10!ʲ�1�1�zBY�r�n�������7��CG丶�����mp?<nRa�^�F+�z����q�.��q�@Y��5:��?�\�y�S?����K�3E�Z���j�_2�4���樓%���b�s*�u�2�Df�7H�ͳ�I^t-W(}c��| ��r��
�vy(-u1-`��[t�A�>!�⍑cbB�����	�U���� ���t1�&/�* 4*�^������E\{���"e!������M�������-C rS� $"H0��DZ>gh7I:Eo����*�Q�G:dEj����%B�H�e���C�����Z�4��K*�G+���QO�I!Ր�ʯ�n�������w]W4����zT�C[�=��a�qP%�&YR�����J�0�Ȯ�|Κ_����u)̄�DǱ�G^���,��K���^7��$���W��kړOGr^.M`ۖ�i��@�^�&��cG4da;P�K60�De/5��d/T��ʪ���w��D%XV�����q�du�*޶<Ly��*k[�gH��H%�_��>�H��R�}��Tå=��
�J���o��M���؛�/G?�//>�87ΎH��
ztuq������{o�;�w~� ��/w��|�>3(1cC`z��x[�h�"ַ��>�F�\�dY�O�.�׵#j�u������;"��q;�喯�$l�^��H[v-Qf�w�G��	�q�]J{[7���>7&�]�#*�5������������*w�hX�_�V���� i�}�Oºthg����iV����t�n�v�ʚT�qN�tMR/���@%N6\�U���K|a�5�v��=����.�􃲧��4�0����4��l��sz��+���d��ԁ�m^����6�#��N�!�%@u���'�!��q�]�53�^�<�v{eZ�ơ�ԛ0��J+�t��0�x�iK2n�7̒P׏�%]Y5�S���+�:F�Ƥ�1�̽`��K͂T�PU�e9�y�c{]���n Z��������x~v��������&K�3���>5P�-[�b��M��n~~}�: �DY��K�.j��S���gJ��W��^����@�$"�f� N��;N�����|�C��J����/m�q������\�����tkYOɮjx�ד�]	��x�lmU~{u�+��C����*no�M�׋��|}��n�����{X"�����q̆{3�B����R	���+:hG(�0���^Ҿ*��i�����]_\�o�S��g?^\.>�٨��s���"�����0J�;앥��n���Ϟ�ҥH���?]|��Wg׋ϋ� �����t!t������c��%R'Į�-� �a�2,���L��B�[W�'�vB��\���М�n:�O� �oj�^?��P�ڢꑄh''@���\���`e������� ��y��(���m�D�DCxiJJ��,붃Z/�1zʍ�DR$~uh���,=�O�F;ͲQ��7F���.��_�� �w�M�W���tZӱ�9����Y�XBe?U��S������/ͧ2����+�����B�fza��6�Vr���]
���:�_ߊ��������OP��/�o�W�t��������Z�yh\�?��/��q�⎗���;~�tٰYx
��|h�G�$OR��LC����s�]n�"������˃W�B�"4CW��`�p$[������Ut��4i�,0l�/.�݈��r��!L����k����BZ�Qwo�r>�L���%�nx�~:�b�����B�,t��K�����&�d�p���88�jV�)�2�����c�r�'��K�	�#U�������T9~�d�s�|Fυ�{D�Z��S�]�e�j@E��g£�����.��%�}�t�쥐�@Cck`�����e}�4�d�v��_#d��7�Z&Ș1�6,�dE9-g~�s
�l��]��,
�O9 eǰ�������� 1�VR<���~�� "���rw	��h��}����;VW��i8N/�_�:1��$(�v�Q$p���SEI�<���/����4TM�Y�}:����^������~��b6�
�cj��M��%ɑ$�_I=A���*��i#q��1�$�%I��CҀH�� �w����t�<�tIp+��� .n#�di�� Z� �l��%�s�['��yjY�D�,K�Ngi0�['�GK���A�Uۘi8��hZ�/;���g�(w_^��VvҌx����U�I}6�&���F��ȒQ@��6!U���ޑ�o�Ƈс7A��C{����"Kz�p�Z�pLa|�|��נv���Ғ�����#U��u�4o6h�~���%�Qai�[�)�g�"C'H_���<NK�@�UȑuP`~�����,��GsyD-�a�]��J��� ���I\]j��`<-�.��vi[��~����1J�i2K�-x�O�g����kA���N+��I7�[�Wk�hY�!��	��HIB�`=� �k̀Zb-yb͊�$��d/�$j�ȮPK���f]�\
c:�A�nf�fD-�,��{X)i1C�'�>dw��'T�j��FԒˆ�3)Ʌ��*>x��E־�Z;������Z�3S*�#/�x�2/���:��Y�%�Z�ͣz�!�Thҷd^'{���?,��˻����1>�]��w7�,�-���DY�t��Q����՜)�l����5t��Կ`��&!#��_��߈W�7�����/?Q�/^�g�V��uӠ{�P퐵��������������������_��(����"��Rc>J�lӟm��=�v����n6��C� ��`(��$z.���ŒvX-ᐤ���Jۤ���58��7�B�]�]���Ւn�o�$�z0�
@�.s������jIw$��-��_�tSO���������ːN�jI�K��-���C=�p|k��!C����}�����q`LR�}��Ʊ�S"��Zep,�Δ��w�]��pRx��f�eK~���I�b�oy4��x��xc��d4� �eC`�5��I����������6/%L��C�%e������$KRa�sz�C�MB��1�_�I�di�    �̷��*���b#�u�� �d���m���4 e$��*W7M�mஅ ��wO>4?#��+�i�䴬��i�9�d��Q��N�~L=nl����h��㲅�� ���+� g������q&�{P%p���*>���rr�_��\)�֨�Y�X����2q��K��8�VJtӣ�]�8UA��L���@`�ڍх1�x%�
�;��8�B5K��'���0�-���Zڜ�'2�)$.&
ӛ�s�Ʃz9��1Di'm)���W4i{�%��*I��HϖO���' ���7��I@M�!i�����f��~P?�ϥN�pQU�B�-����4)��	��qH�Л��)���Z%Ċ�M��,�):�KC��������ƆgE�~=��o������A�Z2��2K����>�A؝MU[�������`CL��\��*�B�x�J
���� Z��{���Z���4	�Fc�G�Z��J����žZ=$N�\��c�I15"��x���������1z��[�6s��Y��֕^�wi搣]�*�	V�/�%�2�8����5
_-�x��ǩ�/F��?À.�m��)�o�`��r-a�`*�Cs��%��a��qiZ_�����ѭ��J����%�]�f%נ�A�ɑ�8Z��`�#����H��YJ�4G���/�GKڐ/�U��t�.��i =c��� (W�*.�p��ϹY	K �d�q��i��i�f�C�X�(�h��%3�']������4��'\�s�L�Ids�����ZX߁�-5��F%E]���g��A�5P�;S�'l�Phi(-��R��o�b��(�7a8�,�P#o�1�bP�{��ݯ�%�V��҄,Az���ϦsӴ��r4-��ޠ��%��;N�D�8�x[���ͤ�G�Rԃ�8��d��j�c�����_o(��{Ea&��qRr!+�fI<f�r�<�k-{����	���RN�q���Q�>DF�2��pZB��f�6n�X�m� .Yl��i	�ك��X�gڙ������+�h����xZR]A����:�
R���I5%����@�3NN���vR�V.՚�Ē���?��Vi(�x�1ٿqyVuo�����07N�~�X�"�u,{�@�p�����3�"����h����m���G��8��4�͇��δnH-�=YK�N�JIH��¼��g���SK2ܐf�Z���H|�褭���٬WK� }Azn������C�0j����\�zi�~X-�C)��U!�'E��i�6\U���Z�]����\�;Y�J�͢z�8c��i2���p��x��%ܔ�º��vi,��bj��lXK<��a-����N0�Vv,��6t�����o];[����u^��a;�-x2�����k���Դ���I�7>�>+6�o}7`o:d���i��z2�=-B�d�h[��6�v"3:����DXF��VĹk�Q��j�Vº�'�����@����2��T�1F�ˋ���f�����-�:�v*�Cr����<GE(w8��	 i2�aŏ����](�NǒU�����>��=YX����r�6
V+�w$B;)�C��Xc��-6���J����-��[��FJ��s�6A�ҩ�!�+Å��(ƕ�(�n���K��ǒ��hoo��R;�β$��Dd{`km���~mZ�v����>�&����o�S�:t�o��B��,�2��Z�Ѱ���Ѥ�2Ǐ{�-�|G��g�L#�ʵ�C�[60��3�:|���(´�B2Zb�O�����|��0��,��?���[��D�U��ʴ�w�bPB�=��)��"�rZ+YX�b_@}x��e1�@�R2�,�e�B��hËN���vƓ0U�B�� �*��3�cݛ���6E�vYT&��=�hZN²)i1%����G��<�o�'c���I����w2�����WM[e��_�j�#��I��8ft��$������IF�h��#�����en��TRthq+��ŧ�E�8����ۅ�y~=7nί���7w�yܮ< Nc_�b�Ξ�C�k�`��ˍ�Љ=�2�6�_ ���%ˈ8�i�pb{�ڈ1����u�	kn)��_���	� H��;�R�H%F0����g��<�՘�p�,��!���3R�V>��N��� ��� v�H��'�e0
s���)��q��6�D6����qr�k�� ӿ��,c�N����P�Y�Eӹ��L�!����L�5@B�J�5K��#h�e�n�}�es4�j�vR���[k[���i�g�h���2};'M�i���V���Z�\>��M�����6NP$9N�W�������$_S&V?�ěv����{�q�z��AA��,x����*�k	T�1��4	����(e��HH~G�޼Hz��h)�8PD��K�S�3���Â��TUf:�O祭��)�<��f[�L�[�K��.�6�K�d )I�7�6�5N�-UK|+��{#�H�\���<�4���՘z"���y@+�r���`L�����$!$G�`��b����<8�$��1��{L��dj�$'ƴ��Qm�lE�b��j��h���2��'0}|����T�'�
~"��r�=�𐦣_��P���Xa.��A�|��K�+���Z�q��
/�}ʲ ������!��h�О������c KW��{�s��1n��>�N>�)�1����r�3�k34�Ŀ7��KMkg���q{3Du���8( �F�,a�IKQZ���jh����1��U��3\f%d(
k���ֶU AQ(��I;[w�������zqc��/�І��w������᭰{�O������^��
�r��C��6�}�H�!�>�K�BuB{w��g(ߞ�Ƚ���"{��"џ�@}o�;~B
�a�~�)o��M�+6��HQ|Q�N�Z�����W��wUu��q��;{�'�b�Y�@��Aڟd���i� �j��&U��"�6T��o���m�����%��2T!��>wN� �~6�B�Q����
�R�.������V�k��=�8����'t3��7��>�87~�_^��[���ۋ��--a�?J?CX�R,S\ŉ�Ȯ��f��C�Ot/���o����\��tv���l�M���W0G쁻fjsi�P�D��!g�m5��E;�t7x�V$���$�xyP�_��D�&a'�z�2妥9�H��T?�2��=���'-4�z`����6�^� :�t`貞�]̯/���}��|h(ː'm b�z�2M�-�)����Y��KciIt��l=w�d�IZ���
�ې[`���T�O��u�?�5�^hU�q� Q;8��o�})�:�{Q2�>�|�GE׌�%��(n�>�+P�0G��c1�����T�ȱl Ϊɡ�a%��J4sY�XMK�-�t�r2y,���l�2��;�9�K�i�쩮qˤ��Y��5�0�K����%VD���#���׋�7����!:�����R�����?��4���iH�gZ�RR���ڳ9�ּ��)��H�`o��������ӏB!���>[le���y*�u�8�����Im�|?I7g�4׷������5��7/KuP�<h�v���[@s5&DR6]�7�ܠf��H��$7�Ʉƌ��8j����X�F�&u����/�^�V��_\��v����ӹ��vc�c�l�Z�N�ᆒ�A�d�����G�@ZQ����!p:�Y��A8%�-]2�3��I๝J �L�n5�Xx���>Fd���^�`j�N���/�6�hSmx����Wq��$���!.c>ha�#��nC���6}{Ն[�i9�v,٠�QG�3�[����_|^�ί`�s{��j��D�Y��9��Y2Kr�:��6%�� �v��C���a��{��}�F���~nXK��.��Wp*�������ѓ��`P���U��Ku�I�x�k��-�k��&L��kj�^�d��*�I(�rְ�E�/;۷��̀�1ugj {7\�O����g�'�5��V��A�v^Ce��j���f"����    D����� g6k����ۑ
���/=�=�<��*{v���������2#8�t
C�n����.IO�� m�ҝ���<L�8#���(�?$��~h�U�Y��?����Y	V�!�g���]�)C�G�m�������'I;aKN��k��-'���L؁�۷d����8����������А0�3���~~M�<YS���W�ƏwW�O*I��$�"�Eꅇ���	�1�K{�pzh�SoC�(�=@v���PVu��֢��tQױ����ƫ��n.��H�v�h�L���t����+��8M:���E��G(�4F������BL�n�p|0uܟ�v�цg�ʪh�f�ɴjF�_^]\��݇��<��9��!�O�8��+E�<Mf�s��?�y�����ǋfa��2h��h�hz���3�\��w�&0�G�U�;�X<��ԇ�Q���`��n-a�j~�PQ�����4A��d�{i��n �������ӭ�����E�O�W��ys��g���_dn��,.�2&~k�p��4`G���
w�hk����Oq�Ӊ�ٔ������k��2�j7�0��}��hQz���Wi���(u�������KkY�[����mu��e�L�p�J�b��%#�IK��p��X͉��,
�-و���&?\Z�j$-y=I��u�����U���
��V���UTLK�`�Lj8%�{"���	���/���A6g�����W�"��I�B��X$��鿡+ΘbY-ː/�3�-vE��H�� �������'�!J��o��[/5*�vg����N�~U����Tɣ��7��O?mWR�`�I��0����e�t-G��q��M���,O��E��jZNG萅�� *�|~�O�e.ZG��g:�E�`<�H�Iqեt}��8���/��g�$�9�|y~q{�1���ׇ�����������?ޝf�w�|��qkYL�i�j�M�	C�� o��"���^u�����Ҝ_����6�}U6�~6�г-�>����&qs���f~��?�WR�Hk;�x��]�gl��?�����)�ט��z� �Ю��BO}OfZ�+B�_e*�\��P���=�b��?v�uW�T�Ɲz �8_��w*C�V��sF����i�,̓4䬆 �w)��t�|����PS�4�+���4) �M��`�2�«�(d�(���,:���3!��=�h���UJ��Jbيx�9XR&4{A��c4	�pʂ#�nE�µ���%�'
���8�"�ͺ1�$�{���B�m#��  ˦�����Y���V� ^B��+�Yڎ�T%�w����N��:�܃�"H�q=���F�c��a-�1��k������R8�fUFi0ԣ1���W�T�F����*{ȲL9�U8�Z�s�:ٺa��[�*Y�`H�c>"�H�
Ӡq4��I7��p�<���Վ��"N&Q2*"���E���6a���Ւ��8kE:����Q�<�%pE���S786��%�'r�l��B>ϯo�^{u~}y�/s�������_W�Ф _*ɛiT|���TZ:p�0�!ͤ�O��O�0��I+����m�k��Z>��QGr����J�(�����ԫRSo]�#W)eeD�6m�3p]�.��҂Ԙ��-0��$S<�}�PXw n[3�q��a��޻8��W���&��a����vK��Y�#��ܲ��)m��2�va��֔*������8?�|9GY�v�軋<D.���ظۭ�⦋�Gh{�xG��~~l�[��U������������7I�����=n�]$�>D����ա1�>��j~vN;s�q~�1~�/^�{��؛9i0�z~�&y8����h)��n�#H&!O��S�mֆ��,�w A;��Lx3˄7���E�{�R秌C�q�y�ɞmAg\�wۉ��
#�t�r�����TsH.�[�%�p�E�vZý��Ls��W����o����x��]*,z!�ɱ΀���R<����©�B��~�V�Ǌ��3!�ə�=ǒ��*n1�\�,~�<����Ao��ٙ��JD���9g/-]��/�.�h''�h���v��tU��V2gW,��I�NЖ�|4>Ag��u-������A
���G�->�K���/~����[�e�d��㣩�α��
�tKɰ�䚥�,-��$J�0U�B+K���h�NQ)*���&5�r�xP��9W2��Fn�����h'
8z$�ݺp�u>���'XP|��2�����t�E/����h�*Z�p3�e�P{�і�Zr4��8x��E�MV�Gӣ����p�^%��J�s���ry8p���I�k��;$��t�|N�9������9Y�W�g�O�d�_-n���C��fa���7�����_v����r��U����4Mr����Qd	@�
=�Ђ�Ŵ+����V��2�]#
e�bJ�H\4���}�zy,M�)[*���i��.�-�ܐPQ|0��`\�2~�����4w��Q%��K����)qāu�C�	sN'S�(�)�r���v����5D�v	LC�\y�'��U�w}%�#�i���1ђ�`-�CR~��kI������_m3^>_K
\(v���63�kf��(����'����/���O�C髭��z2�{]���/�C=����w��>�y1��9�QQ�Y��>0XsCi����5��t	9�~�H4��up:�� n�W%�t��]X�Y�b��g!��Id؝~d��xs;&���ds3���G�����z,&��5�2��GՋ��� {-��c2IB�P(^<ax�H�D��+�(��AϷ����m���<Pb,�q��������5I��}(��m���سf4�j�RF��j��w�,��Y +�ճ/FВ�������U,=��[�0�X9�񆫈���2&�k���]���y�숤�!�C2�#��v-����a��1Bzzr��������-�`/�CK���Yg9jY�[*]0M�\�j-YC�X4Ur��Y�}+�%�0���>[��kV�Y[��i�@O+ٷ���OH�<E�R�_%�����f��'!j9��Җ����ef7#+GTL[�l��}y$-m��´��ђyF��T1F>^�A�!���0M�2�ۿ @O�{�L!�#�����9�9:[|�9��I$1�0�\�Wp7�VEG�$?/Sj���R���05��Cc�4mZ �����ut&�������;L�+�5���2A2����?�I1� h7�����(���B��r��s^��@�=�q���Hs+�� +����C�*��{_>��U���D�W��f�t���Nj����E�KBW���LxZ�pܮ��4�����V�����.�_�A�V�=蘆�	��#HJ=qC�w+L��5:@�M��C�ir�l�Bݿ��!L�om$���m*I�4���:��-��ጬ��7ߨ��_HKC	��ox�O<YAF��b��������Uci� [ph� FD.8�l�mlɸ�o�|���Ֆ��b*o����-{S!�\l��,%H�9)�IIG]����m��U\�R�
��@zV�+mi��<^���CQ�kS/��%�lk�,%��	7
�͸�I:��3����F
�1p�Ί��dL���gQ1Jx1f��M��?{,���[U'���_*�2�]�j��8����eo�L�O�1XD�x�#�2d�8��%;�AY�?�W9HI�" R�:��o��a �'5�4�R�o3tn��p�[F���m���ͣ��˪'�#i��+k�4�]VT�"�N=�	�e	�V��95�
zk��'�����3���+$C;So�O��P�Jz\�~�x��z�"�p{��ְF��N��R��d-�M�|6Y�z7|�g��Ci~(��w ĕ�Ug1�B�D���#�r4-�.;�JG<'J�:H��z�7�7�(�o�eWQ&t,oR�9J�+�!l{�#%�k{d����D �(8%�/�*��VV�,�J*�Tj=�D���z~��~U��|��~Fz;��H�EO_�5�[�hm\�AT��ȤzN��    3����Ѵd��,� ��5bZ�d:�߸,�s<�1R�R���7Hz�_¬]w$����&�l�N:{@1b��Q0
y!��_�)�h����F2,m��O����X�����C�iwA��	ta�f���F�][�y����,��dqY\�
y�j�2�W�;�t�=uKgx)K�z�~���u�� _ �_����ټ��*��A�D�Yr���@��W��a�8K�#B�������0 /�B��\��D�>��kюZ��%��͗��k'1D�MR�Z���<���o��Y<];�j�,Œ�r�N���:�+{T�#9P��5��kuw_7Z>(���W��ӸSČt�U�ɥ� FI�wiKj2;����L!���^z��)��~iڭR�Ll�$�?.>_^ �k~9�n~�n&�1~<4���Š�监P����d���y#:�~�'D�1с*б���-�p���)%0���r��A�����Ҡ�b��ܣh�N�a!}��� ���8����V�(�:p|���އ0j��ò���h'�N-����r0�]à�(i@cB�4N��@�T��I�O�s�	�h�ٗ�yNWhW>�?�x&T�j��*}k����l���n�>�U���I�Nx�BO�RJ���� Ģ�����A�,@g�'��}%#{��DFH���s)�.�P����N�>9�1���Q��j��^��$b���/L�6Ў6 O$Q� �j��`4��kg�4�О4R[�`���ླྀt�@c&da�����SR�1k�N���#�Ͳ�
��;�'��Y��� U&�*����~�H��=J�p�i�r��0#�2F����1��d#=;4���&���m!����"mCR����',�[
!�,�B�=��_��au�}�CtkQ���g�%����á�L0tWRʻ�ݦe�c�"�y*��NT
���$��4Wjz�x����9H��/.��r��d:�C���?�p�w��z% ;��o���g�u�z8�e�R���ް;��rD&�V��&b-A��>�	|=�&\8��/�P"�-��5�"3��,�qN<��P�)�h �Bb�e0Y�_��M��"}�᜾�n#Y���C&^�0E_Ka���q�5?s� ��JsK�_����v��?�ﶚ�-����<d������A~�>�(c,�]�)m�����BkZk�����������@��}VW�̤�i����5����g%�!�F�-��v�\����{��s�Xp{�w[���3�;Ə��ŧ~��������!w���Y��*�	���CF���nϪ�ܸg[��c���r��I�I�:b�����Z�t��-Dk�7r|=�6��L�.-V Hu��=#�Fbw;q�)�o��a��)��p����N�w�A���D͆������Y��`����#h���=�:�q5��Yg��Z�2:m����{d7�I�BK�PV˙k<d$S�M=����i���^5�����Qfn9���U\��!	wC�Fx1H�<�N�կ�>��(��7� �����h�O��+�BR�mx��qҴMǑ�[�a�LO�4Q>e��"��p�}_Y�M�@�\+E�  �]O�̥>�ƌH���8�65�2B$7��V.�D2D�Y���߬C����F�c��L�>Kȝ"�p���/Y��ؓ0���e��ˣ �I����H�R9D����{,��cu�g`�:6%��4vk�}��aI*��D Ek����"�WMT��8�٫�|���"?��fIl��اa7}�`u��#����L�����;]
2�p$��x�V�dWo���}�g[vfy@3:���"�&e�B��汅��LX��֢�����GR�#R!�vd��w�{�g�s:[����g;�J�>���_�~���Mr�����3�wj�ĵZ��ޕ[���i�	µ�;62\�9GƵpm�U��7W��mF �]�)�B
��(
#��e^]��@��N���l0�F�s#D	��W!���?�a�Z�*�^�id�n�9H7�Y���"�$#�/%#�ݤ�S#�mj*�OK )� �3G�Of	�D�)'$ ͮ�"��a�������2�C�[�B^���<��>�r@�� ��ID&��[`��̴VL�A�}�Gדl<I0�2'R���b�Z
j��>˸���v�^���<��~[�,��1���	2�f�E-�[u���`Z"{*Q����9��o��[嵿�_/n<�^|\|����������qs~wc�x����������{�G�l���5�*/�RA��Z_��j�K����x�$ �M��T.$@��Dψ���F�^���j)�q���e��$^TЏ���.����Cj	�Y �I�59�����]K��:��Rm�V�G{q}�8��zquqc�|�|h�~�> �y�'#�O�dJ�I6��)�����u
\7_i6��͇�נ���w"U��3��Q�8DݲayS7��%��?Bb�	(�2<���Q�t�}���Z�/v�kMA�#���C���$���6�);���Jo�u��@r�\ �p2�����^���~��e��Tv�@;�>�F=�*��E�#���+�C�Ht���{:�x�0n#���>�
��2Q�g�v�g��pՊ��HD��#���+3�I�vrC	���~��J"��d=�u&�x�U��V3�$E;AWJs�q�F9�C���,m<�x�㩥G7U�H�M� R��1-�C���E<&t8BZ�%	��CfA�t�F]�6A�vL�X٫]���=;�c/J&a��|�j���)�)	P��o_�?�<�BX���� #��)CU?�{\I�G1��cn�w��C�K��1��L���kT�gS�]U1�[�T���x$�B�)$xQ=�B�
��rҷ�Ĳ��1��j�my]l�R�#�ΕW������l�*ST���Ј3^q�[й*�F��j����Uے%)[���,}�0�4�_���I���Ժ�X��d��ыp�6��.\���\�ɲ����مl�x5��q����[aN��}%�T!�y�$�K7\{�G��������͂X4�E�,��_�1"vK�[A�:�p�J�"��RF6��O��u�kD��(>܈1L7=Lvz�#������C/��ؗa�:\��D��Е��_��= �F��R��Q�ߌ�^^`�z ���O�4Jrbq-x�������t�w4��^�4-�!�
��\8l��eDWQKq������᭕��7*��RîE�� �co��3��e����{���z :3���c������
�8�sD�<�J��{��A_�O�,���O7������1��~�,D=LQ���pc6�t�a9����.�-��~SK��6E9�t�.v�1A���uߓfe��v�]VI0��� �)�=��m �0:%E��|Dw퍜�I��b"�ԓ�C�~ �Ψ�{��ą�AK�o>��ȡK�K���r!yx=�}�\`=�Ҷ޹�>�R�O���I���^Ph�;�~F��x��2J�ҝ�'���ܘz�B�W?���tS��;�`���
��oa�x�v���(G�S8�	��MߍP�%c�Y��j-Ae~)<�"�4Y��՜k�CG`i�n�'�&+���c����M�jr�}C�O���S���lPn|�Z	9����Y?�J`�4�O��W�5�$���ğ��g�Y!c-cet����-�f@0Avڔ�P���L3A6�*4�&�{3T�+�cV��؋���#���91oXR� {*�ɀ²L�b*�����D.?�@�	�
vջC�e�w�qk�=)��h���������<��ڵ����a�D�
)n �p)����}�Q�d9�DЋ�~�YP}-Y��c9��ŝ������Qe1f�lt(���P���H��Xa��e��&�����y1N��,r ���e}M�Pmzɰѭ�,r�B�� �u��=#k��������K    #iis�}��[�U��p1�#��0�3��bp�k)ФY��͇#���hI3�0�����ĝPie3VI��A�Iʸj�w
�#@����kp?z}k����Dۈٖ�S�ss�3�H�hGU�N���%�a���~����}������_[���Twxeu�I��mh���.N��{U�[�Y�v�c�
���~����g�ϝOu���{NBN���z�>� U/:V��+ciI�JP�d �`��r���K���DUo/�s�+c��K$֩���rV]�����5�O�I!�n�p��!T�\�����I�c�B����?�]T�ۋ��E���#ĉ*��D��!�����ⰼ\"iuFފ3�)�R@:"�����ﾻ�T>_|Y��H�Qא�=�A�#��sHi������\�@�������.R_Bo�;(�qpʒ��q+8[xT�Y��Ѝ�%���8�P�Q�{�IO�T:�d���8p�ɩ���Q#\��H,N���}�͝eVs���Y\͍���������M��K��,K�H���d0�f s�� ���*�=C�a��6���!o�ڱ���2��a>ߜ�}\|������-���~h$J�nq�5�]ft�	�9��L�_^Wɬ�8Hgw��h�r��:7>�G���*�y	���2É���w����(˲Q鸘&�~2y�份�s̭a�K�$���BŮ���� C�C~ug�����r{m ��&S�O��b�N����M5��� {�p^Fm �'Hc��3E��@nh+>��n];��f�0e�l�R�q@��Ϛ����/���H�v>h9�-
� 1�S�1%d�Fl�rƔ���֨��3�� ��鱡.=#Kٖ���pFfs��uG"�p�j��\5�����\_�_K�_t�H�Z�5r7�vƍF�F3/%�A�v���p,�sC.�V͗��T����K�*
��q�_m/�T9�O'I;a�(;��6as�ڄ�����[s�%���|h��r���%�2��k� m�% �ѷ�&s�!2x����i>�Rˁ\7��N}����V��a6����U��9"���MV�d��(��Ԕ�SX(�O�L�(P�PϾ&դB�hp]�2��Q:�Kc���q1������3��^���|N�.Y � ��h�����G���tD&���gg[m��f�?Uz� Ķ�S�k	�@^|��7���yÄ>@�%�����F��^���Mq�˔#vd�����0n��c����M�T1�J�<(�tB�D�N��c���r$MX�av�k���:<L2�Y��fj���/�Q`�ѓ��$�s�^���x�:����weIz�UI�*~���
3�Xc�xJ噓d�Wb ���#��]D�r-9C�}�L�n�v��6U��C���*/�&���t�Z�G�s8pS`��M�qt�����=����?y��?�OR���dj�&+h� ��B"̎���~�:1��: ?!'�4����Ӥ��tNQ�Ch	�� Xp_A�\����r���r��{P_A}U+��rѣ���<v
a|�M��ct�i��r��X�//�7�/#h�7�hʵ���jchI�$�"i�����:����_U�[}-Q,����>���"Yl��D�\��%0�M�H��C�iB�` �?o�%�90U'`�
Fk��X5��|�ċF �h3ϻ>��,�� ��0W�jn�/n� NUf|�_Ϲ���#}�m=-������q��|�A�����}��X�(_#
1�Dܳc(���,�Rx�S���˓�I�B\��s������L�6�~L&�T9 V ��e�?���J�˧�^�e�nag���ػ{s\��cO�u��%��n��6����lH�捶�D{~t��)��Y���zb�Yl-gl��6"���(�&�����#�QV�&x/3O�^x�Z�i�4�(I\���:�
�{�C_�rI=�﷞���n$��L��l�W�ɏq��nr9�~�H5���Tπ�h\����n|_&e�m�*+�q���)�F�pM��$�o����[R'L�Fl�H!�����h�����-H�������Ĩ�튑�q���=Ez�'� O�{�슱2����Rt����+:[]iԸ��Ц��%���Z�O��[uͽ�Y�^�\�����͒��o�JL�Ì$��7��y~�!f����v�����`�L{����r��_خK�j�_��:��DS"N[w��-��==F��Y�}�%f��PnPn,f+ �K��qBЊ��PW��%�F��@/���3��bL�*b��2}`l�FG�u� C�^ѣZ�Iw8���Z8w� J<� Mz����5��������R������ͱ��Or���~M�޻ݡ�|�gGa��/�WGӒٓd:f��q�LY}2�Ѵd���NW��g �%�4�\�������n@�19)��v,�'Ė�%��Z����� ~��A;L��3���8������v�\\7���!;�n�xL`��p@��[?��TW�d�)�6u�w!�lD��#")�=����`�A+�n	ȵ~H-��4yݯ��es�]KW?�v�,<#o��ʺ8�1���WO�vX-��V�%��}��z��a��;��\[$��5�qP�'I
�-a���8�e�I9<�Ѫ���%����
��Td���ũ�&iGe�c��'�si���C����OY\\B��9&�z��c���4|W�"f���B��U"W���}i��=��!���[�D���W2:�$I'�����yv�p��Z���ʵ��	`${�?��Mˢ��ѵ�H�a�LP& �Iɧ ����H��~�/�	�	�8�T��xO�zm�a��z���I�L�h�立��������T3�����&���AF��FL�EԵm4�8m����h��|�T������M���VT�[V�V��]w��>;w�C;5����H�:�ØS5��q�{�cЊ��{�k�B�ۚV��ڮ=�������˝ !�2�Β� m�3��rXzy�
N����C�y��Z��I�N�K���a��g>g�s����)�O�A,�g�V�v�[*��-��ɖWX�Ч]�>��7+F�J��L`���y\�,i�;��#8��0����N|?����K1��"a�6�T�$
�?�(��X"��7Ұ �:�6�b 6iG=�F��E�1g("!�d��;Q��|��8#�y�e�
¥f������'�f��?�i�}m��U��K�B-��J��tnuerT�X%�>��^W?]��l�ϰ���<�$rm F֒�q1��$�FyY&��6��$�Adو����;+y�\����K��O�ߒ�����m�)$r���}r�oT�G�R��'�A��d׋�$�.yB����<�.��b� �9��J���3�t�<����"�'UB�H��l�nq�(���Q�`�S�)H�J���V�e��,h�hR6
F!���/߈.hq�k$1O�7OR&�1�҇T�Ж=M�[������ȍ$����Dda3� d�O�f$%��"��*a/j�fZ�U���aޜ�{�9�m��=�0�ԩ�.s�o2�d����/h�����������ϝ��f�f?����m
�����(~��z��em�p�����~)�����@l���L�5(� �uSdۄ��M�j��WkZw�a=w�cg�`Q�j �n7�ŵ�b��/�z��d�ᇰ���S��c�
e����7]Ҥ�3��Z֭edPB:��i�%����A���N|��.��)�����;��i�r̻�NZڵE,������"��&R#�=p��������W��^G�
Tx��D��Ժ��#�aGY��/�R#~.P��Z�� T*�Z�t�+%�GG�M���n�����d��ͬ��@{��n��YB+�C\m�M�J��)���Dk�h��m��
ڶ�60�R7�]�Z}m�F�6Х�jEJe����    ���=%Ψ���u�/����v�b]t��n/x��>�7�R|�_����a|Iw��J�t���;�u�9/"�����N�*��S��>i�=y�VIĲ�S2�����FZ?q-�ԁ!NYJ�*�ܻ26[��^W�x��4�i3��؊�1Xy�k��\ϰ2S�8t�sf^�h���Cx�d^�+D��z��V8�VP��G�a����R�*���Z����tM
��G�@+SV��!)d�^q5����B]^��v���o���졯�����a�=�����؀�q(%�'�Pl!���_';p�'O���Z,$:ϗ2��r�L���f��aA��`�/��O>A���+V؞�鰿����_%����n + ��%Y�䩿�c����x&[�jݣ��ޙ�P�1�s�6���'�0h3�ōB�ZQX�p��r���k-Tt@ɺ�=ݤ��(.%Sxͣ>���x��Bw]��܌�t�M`�%eq4�z��t�@n����?��l�����۷��7Gq6����>5��Seb��6!�;�zy�LЅ=�
�׹�n�Ug�.<u-e��<�C��Ku�r��r��_��(��i]�s�LX���Pp<^�M��^@�"?���䦡m�֢*�;9d��P�w�����D�O��/G��u?����W[$���X�&��M*��y��!��Uv��~s����@��!���):�qz�VIF-�V��k�bwiƢ� : x��`���	TA�x�rË��������KOT.���D�]h:�1�+�jx��$�O�qY���s]�`jW38i�p^d<��#>������&/�cT?]��} ͫRߒf�	, ��F�F���(�.� f���2�i���?۴kƦC���D�m���X�ʃ���\�0�!γ��	hn��*��+��̝��N^0Ǆ����#q��'�uw���Q�
�E�Q�:�$u[���[�e�̻ �Q�C�cЃy��H-�&�Ve1���[�FF���C�N��˙���&G
c'ǡj��Z�y%�q�X�w�-C��T�r�$&�%:$��b��#��u��p7G�3�:��Y������B��մ���4�~������d���"�b&ѫ���Da�nDZ�x�����P�ө���O�� �������r,\��3-��7 qe$>����H�/~)j���e}+���p��������5�XT�ƛ��Q{!5"�ڒӅ�NLN��T���P\�����hD ��H��s��R�d�S8y�H��1[�D��O��>��ðG_&*���%,l���?)���)m���+n'U���*�\T�T)M	ۮ<`����pI�A�Tue-�+,��M�0?1{�nɢ����)ʵ�״�L�h�)so�c�E/Qa�S���PTN2��NG`+NX 薼@�]�����H�6��/�����%��UqO�E_Ķ앢�%0L�Tꪐ_.$i�
O�鏱�9F���Ń���A��*����Tt�l&���Jd�.f>|��U�r.�JJ���M�ZW��8k�#���b���͂ڗ[��(_
L�J"Te�zs3��.�Q�,l�.��ܖ>P�JT�R�7�4'���sx�x=�L�!;�*�Ԩӥ�Wo?������?~���w����g�?����ϝ&��\W"����նHS8t���a���1�J�=�zٱ��e��~̏�B|j,���^җ��\=$�*�z~�G�s��ᵮ>�_�Z������������%�����>���?����L���^ը����
�c�Fw�����(5<iK���0K�aX)�˱e���4�|���$��]��1��}C+4P!L~�}H$���+b��/�W�����e<GN8;yR�#��C�5�`#G֒���[m���	��T��Ύ
g�kgx��Mb���@vFXD�2�dq0Ff:3�+����dٓ�d�����j'먐��ָj1[~U�%�+Qt턼�Ú�ӓ��<��-T��ob����E �\�֤�������:� �R[Vz�)d[�46��D��a
��U�d�s����V�|v"C,�(���"���J5�V�{�	-o�;�[�8���}]�i��-ﳰ����O_X��]�cY���'GyX��>�-�F�S��Eb%m��yN�}�'J{J>�$��<ϫ�Su�%��I�	���D"0��씬~G�97Q/=��mP;�H�"`5}w�.���
�&6B;���0\���F�����FN�6�<|>���]��b�1��&��߷�T�-e��cQ�T����wi�&���@��:ͪ����W׽n��4���8����|�fXn�ztaS+Q)���Xc�k������j���Nt�����鯃>mw��]lc��بS�����y��N#����p�_� 3!=R���_W�D�����
�3���I��g�š�1;l���8E��{����N�'� �Pd[Ô�]!,([�$��D�W��9}ܓ��rfn�8�el�<ޑMz,�W��7�)��=���h��(1����B�ش��LG��}1l餍l�j��]PF���߱Ԭy>ຈ��:
����:#ÿ�3�2���;"9��+�r��o�4�Q'xL�>�ŋyO1ɖV�K�Iбy�߂׆9nF�=tI@�X�tq���d�N�
�Åe��Z���Xp��7��%)��,������x��-�+;�i���0�=[��%�/c��a{����XC'�Dz��Wy�?SՑ�u�u�n�/�q<��dۚ�_u_�R%8%�4��3��/�E��O۹�#izvbc������{�X�>�讣��	cdn7q?p�M���C�n6�֓�v:�F�./��;�X���������E�a�p(�������aN�(�	�Bm${.��g؋�<�2+z��4�ψU�����}H��#3�TT�i)�z$K�PFs��F�d��Y��RT�`�o�%rl�[ѥ�騺��ݖ�[΁|��w  � �v���d>3]H2;:� c2Y�Ȩ�m4���Hw}Pz�@E��K��`=2��P3]]�6oصx�>��П��k˒��ٔӿt������l?Y�
V�a�8���h{]W�s�N1���Oklw�O+�6�*��ĝ#�E�E���-�ӓ�e�,.�Ѕ���.����wq��R�O_��9d���eA�*Y���wu�ꪨb����':͛��!�,h�T�H��P�4R�Zj���BF��uQ��d����i�&���0�k�6�;t1��{ڽhr��g-��P��i���
e��MQ38�n�4Z؞�M�ޅ�uձL�S�#���T��rZ1eV~���o?~��������?|z����~�l}���Y�c�y�e���W�"(G����i�� <Jt=e�g��*t�����3��K��Wd:߁���\�nn���&��C��T�ϐ��!'N4�<�c��	$7ufJEo0?�B�;E�/v�����s�2��8<~��� �W��D���"SǊ,�-au*����-���؋JG�j,-��sQ�}��/*}w��s*���XĪ��E*9؛H.��e��T��j���2Pe7Itgbbǻ����-ǻ��a�O�.
�&��<Jq�찎<%Β���d��P�IÚ;�*�a{ï���Z������p������,xߟa>J���w/:�n��O�Sk,7BJ�mS���pn0!��H��R=�̅Ow�\x~����H�M�>Y��3a���F�N��2�`�� ��H�o~F�W;S$��؁C���W�.6���N,R�`��PR�l�5��`v/� �n(�:fTA>���ot��������"�"ˋj�������`���1�j��R��n������z1���J�Gߧ-�aO��y�.�-$�`�!s�>)�i��
+��Ǫx���Eԩ
��P�{�@�� E�{fǽ	������e�7�G����R�Zp`�xC�������;���,���NGl%U
;x��P�����f�Դ�/[���B	�bc��Ld�"����,��-�3�+rf)� ,��w��9�'�    �S�+��/����:e�>�t'����Q���J�b+�%Vd`x��:Q}j1Eb�t�������dޠ�KV;�c:��c���v��>7��0Y7EYHF�5��{�5�m?꼧��4�=�w�C]37�!����<͢wV�Q���Y��ͷ}앸��hboG)�/-ak�0I�q8c��f��i�`C�l���i�e~s�6"y�6rP��<�o��0�9�
aA9��;eBo�V�0��r�a�Br�$���߈��A�B��OcNf����v��[�^��*�ָ� e��=	}:�xlQ�6�����9W�'X/���k�78�4V`�i�(�ߪ*$ёȧ6~�Ρ���ۡہ�މ�+y'��(j�J@�&��;��p������h�;��0��5f$S��u�'���T,ld�+s'�}rOe_�Gn~��e�*�_*�w&�e{֫��=t@b!�jYv0;X�H?��[�Eq�����ᛷ￼�&d�qQ���Sb>2�?
�xB��iB��0����z�.j����l�r2L߼9�ve���-��k�Nڪ�GO 7���"P2�d�Z�!�_�,�^X��ൽ���k9�Z���4���M���nT#�T�X�c�#�|n�1W�I��M��M�7tW�� ���}���moZ���,��nkd�����ac��_��X�+0�C��-�&��l�"9��W_�?����ljW�M␊����1�S�{�O>��	�b����k~���x�T�Ŗ}K��:��:M�/��-c�)F�7M�.����f��x��+��`�m��Jv��C�ϐ/��Q\a]ڗV��������NUT���-��k�k������,Kq,��,�l?P� l-����sNnma���'��!��o&�����q[Z��]}H�;N0��v
�a��jrUZ��ڟG���o�L^��ye@-�mA�S�}/)����]õf���o�ا�����mWԪm�z�i�����X����M ��pb���(�쬇j�ÿ�Y7�N���rvw�1�Ϸs:��E��e<BSΚd���`�[ھ,�Ss�^	�QǓ�F�{z��Ɖd$��4���W?~���[������������w�����zy���������Oo���{���?�:!��:�����Ut�ŶX'ufɟ��3ב�W��?��-�%Śh�:p��h�;?���2&�s�||�CP7��Xy�٘��YЛQ��/��t������zcE�Iy��W����s�
	�oK�o
+�6��{jW�=�����Rs@ن�oYpr�v����,%r�1)a-�o�H.	��A�*2Pf�KH:&�Ē*U�Μ*)�N���
:��G"�b����l}/+I���jז�͏5���ld�[|�b*��B�\��Ҭ-o����fL��ٶӼ� �#	�H��H0Dd�il�}�X��sVm�]Z���P"��/cA�@Æ#Ry���&�tw\si���+lެ�G�`�e�&�d~D�V3���b�����.g�˱κgy�n��?
;4GѾ�>ҕ ��|�De�B^[U>��M^tɭ�[��@�������TtF>��HwT�q��eG v�Y'���Ե0�^������Α:���+��$�]Z<����557���Wg�F���7[�T���}���ՕLI�Du�ʖ��T�np7�U���x0v�>�C�X��M�%�.�(�:sJ���*���]�R�RT�L�h�^������&�]}��W�J�)�<B�Vm��ٶ�t{et�~���S���O�th�����|u ��;q�F��D`KW��.;��v�q�Q�2J�)�x:8vt�*oA��LiF/��w��9��.�I��6Γ���n�ɳ��@��$5��e�� d#�;��@^�h�ӻ���p�`;Le!$I�բ*PG���[��7H��xS�d'F���1�c��DGo|Π����g�8t4��Q�U�rg�����l�
��^�����HoE�cͩ�h&�\cO̫/p�R����^�X�ߞy��4�X-�����Ma�qq��)vqzGv�ڝ[�s�	�(g��j<��#ŋ�e�٘�I������ʹ �7C2N�i ]Lw���Q]%�E�#���	���Pe��9h��f #�0���2AT�~h<���u�Nܦ�}d��[t�[!,������ea������(��59����e�n؀���=��G��aׂ��{?[e�o��@��0t���p֋7��}3;�vO
��H�#Y���Ā:1��p ��r��i����>�z�6q�2������Vu�l�]�n�ң��7&/cq��Ӏ-f�7w�A_������޼{����0�����������ύi0��,MaW�X�B��&�Ԗ�W���j��NU[O�Qj+*�֊}#>�J���C�<��0<�b5H�,�|/�8�Z��N��_��:� �)�uz���r[҈�kd�7�L�l�e7�5������j�@J���qL�u�2o[��9�Ɋ��,���Ei>� O�V'�jᔥ���/G1��Jڵ�-�~�:G�S��mJ���k��dŦ�gܻp����O�� G��"����Gd� 3�:Aw���h�V����� ;{T�5_�a9���=g�U*�I�U=����^�+�������.��]��Ǹ=�P)/��}��n �,�&�u]����0�w��Ndp ���Hh�/��zχ?G���q�8���Ge�:I)�r�a�ǩ�{�F�E-ax�u�6D�����@��S{����v8�6�b���=�b��G�We��j>vLDW{�ԏϺ"b;�V�ڌ�u���<��=,vTZu��#ɼ���r������_�����]xCI^���_X����`�x���dʶ?S����?��ě�8����[tF�N�f�JJ*<-ʲx�O����]kՐa�՘�'x��nn��/g9Cr� [wo�:#�HQ��
��mU��n)��N�(�q�Mį���l���MEi�������@���MyF�xkU)y-AgW��XWϮD��c��G`���a����`ڄ��O��.~��/��XΊ[�u����A�7N����!;��y%i�)�7ƞ\bJ^�-
�&Z[n��Mq@	� 5��W�l���L3l7iM#�X����p��$%�zz���6�#�E�`�/�
R���n�J!�R�$��?6�bok�fkP�a�zl7TI�N�
��;�uҦ +z#�>���x]����a��jU��[�f=?���?�B>&��[pCM����:�ƭ��9O�:g	����B�)&�h��Y��cZo`B�N{i��D�?���{-�%�Ij��edma�K�#Kbz�`�/��m��n�H<Rk�xԄ�	�ZS]�����;8��蚧�V���jszw���K#eU=�6&�*	�������{��G��������[뻷��ỷ]R���,O�@�J�4�j[�;<��k8��|O�78q���>��/i���]:�b{�'`�
�j'��>(��l��r�1�`������O J��w�&J&�#�\W�
l���p���?Q,G��1�"����?{)���ٵ�`ڦ��LO۽��쐯c�|�0���"�G���%�
��\33	�\�0��bc ;=��k}�~@.����"�_�����B⇠�7c�M�/{�#���/��qx���P����!��ҭ�V��=wi{@6;}W��"z���B4���S�؇�O2j#�����Q��Fb�<n fd����aP��Cy����D�u4��e|եL�����dL��q����zN	�R�7�hK��v�+�n ���=�@�/�������=	7��\&_ckAx"�b[�b���'�5w�*��0 ��]�h��Qg ���&�y6����DY�,c�`�4�K��${a��<��.9;PJ�B{�-�U��Q��"�-��hr��~�p؁�r��_�@*�b"*Y����,x �t#�qe�?��Lt���# ���T����M���F�1�؊jF�����uB�D�����    �����=M5^��T�����ջ�CHI���ud[p��&6v
�3"%�8}ҧ�)%��JF�nl�Dk���ORZ��U���S ���0�Ó6o��k�f���f&�� vB�	�}0["����o^f�_�&��9��}b4;i����T$�v�&���T�q:����XVr��.���*�b������&.���s��W�;C�sO����f�}(p+��vbΛ��Q=���P��+����D��}v2Z{���p��z(al�盺�m�Ϣ�	_ҭ܊��I^%�y<�`n+�'��᭵=��D��k��O�S���4�;N�
z��D����ŵ��Pv�3w�fɲ�E��_�Ј�	�HĩdwHRc�s(�E�p|R
]Ƽ�Ġ��Iᐅ(t.	�;��3�2�8|�� Ia��c�`%�I���M ����z��du�K���R����b�*��q^��W��Z�Um),�E���Y
�>��^�bXl�86ʞ5��`�n�#6�h��v�v��S��p����b0o�~O�<8�M�a�R��=5¥�<�0sZ�=I,�pO�l����;�FHO��!�J䲓�Yl��ݶ-���aBl��\��	c:�g>|I��J����� �+k�9��b.:���t0dz��x��&�}D����S����M��9k(���y7<�R��%t���[��`����z�b��R���8e�U����V<�)���A,�q�"��hm����!�v��Iu��<e�H�&�0w��Kb�����uKSj�P��"uz�.zC�2٘~�=Q,Fw����/O��z��׈b1.�5)ÖY�J��k1ފ]"+q1r�ƛ:;އ���Ţ���X��:;Ҭ%ۗŢ\J۳;���X��)��y�Pq��P$J�n�PG�iW��CB��`��VV�J���b�R9�Μ�����DY�Ssez�y�,b�C�����"�Kd;��@FU����<.7Pl b��������;�y�_O�<������|Y{������o��gYG�2?i G����l��@._'E����6�n��d���#�L�4�k�K�f$���.��]~!�e����f����e�����!f��lUG��V�=h�����{���#ä4P�dO
+�#06ncR��4U���#�0.�rɨ`=G���[婇�b,]�?���d��ξ��$�R�N����������w����/�����#!�2���?x��.�c��cX�A�_��3��-�c`�����F�c~O� �k�8����,~�k<���r|)VX#�N���R�"���#��$ߜ$��R���6X��8!Nl�Ϲ�Sgq�;135�J�]95�g���(����;l�p�͝别t�F �f1�E�R�:���^�a�zֵ��D�
aA�����Xd���x��������,��({��&|}5Y,&���N�S��x�˪#���� *��,�YMbj��f��d��<թL��F�:��}I,6my�!�~*��~���P��|������Mr�}��q$�a�T�"�}!,.r��Y��#.NϚ�f�D��Bj���}�Xa��= �p���i�潑�
�R]w����
�n/���`j�@��`ݼ�=�6�=��=��Bs;��`�����bV�|�k�%�%Rf95��$n(���w%X�Il�)BNo����� �ߒ��E�n�&�}�6co���Xpˑ�4�W�!-�w�*Y,���H��F�"�ągߒ��b��-Ҳ�r�F3+3��!>%���χ������^|X���U(;t��*o�h���(a,B*��,��\œ;�h�����/%���6�$tT$(��&�q�	cR�B��a�T�L��u��=I,<o�L_�H&�����Hb��]��l��]�*Jc1.� )��tgvU��Ҧ&�nC3C9,�@i>[o`�O��f������I�8X��XK�L�ږ�k*����8� ��c��.�X�و8��Q����&��a�ű(���Cd�Q@?1���������-3Qig.�/��=Y,��kY�{��<�צf������6Q���7c�X����qYTc������}��� �t�S�q]S��y�ԕɌ����<gоt���/��;&�����:�09'ɶ���VD���ӝ�Q9�`>�*��	��e�e#����m��1V�Nv��8���Qy,PY�Oma�q��q�([��6�ht��8�;[b�vP]E��F��:Krs��0�b4�Sb�"���"a��@�׻����N[�R�cyz�/��J{�X�=oGZ�x�
��u�� F*�y9�/�5�Ӑ-S�[P%��J��ݲh�[9ʖ~ִoɉeQ���Q� �P	�@�jpg��n�m�zT��*���8�Y���4�Յ� I3���QCN �*��Kږ�=Y��Ǭ\��Z��x���
��~�d�&��S��Xt��Ed$%���"X42+�L�H좻zkNs��d�x�Tͧ�rf��G?�E����!$��v>Y�K,��zjϱE�����1��<�B�\�	l�{B�����Rό� Z��UV>�io��5���i!,"��� � �jc,��<�E�<1��MӯM�i�Ϣq;Y�"�+9VR�<�V�h��c�}.��:��*�&�c��`��F��C�@�
X�����Ȟ�<����Jl�mL5�XDK�+.��&�X�I�ig��t%��:)�beE2v1�}eOJ��aA���D�<0�6�GU��4u$p��0pB��Cp��;u�մ1q+!uE����wl��z��e����~�XH^�xr5ťd�Ĉ�H=,$=� �s���腑V�=I,6�T�nq����0q�����6k �E�v!��m
9^�����
aq��M��dXW�OJ��ʀ��5��X|K���yy���s�cC),28F<�ӔV�6��d���=g=),�n�H�5\���M���9sʌ�9��k4�xY�٧�
cR?0�uzeh��^�a�9�ӧ�*[�"_Ǉ�yO9�zBXhn[~��������Ԝ?�â[2�B��Y��;f=9,:�.q�J	��V�6.��H=_����Qubz��������r�b����I$.2Z�/ĝ�j��I�]��BV�Wy���O����P�s�c�7���P+��h��"_#gG��KG�8�N}�]�
t����'�]��lRF�8L4�-}�Kw��nVm����{�X�.ͤ���vdWt/Z�}�4_�"������l�ɋ��U���#�X�K8��5��zu���}��NҨ8�O�;���Ё���˩Q�,���w�Ke���H�>�A�'��J��X����}�P�1��4i�͠��e��x������J��h�d��m_��.�v��SA)�`�X�M3>3�Ĳ�%AJ������
l�|4�㻏%�ض6�eq�C���/��.M�If�/:Yf�Be[��Fp��
��ĈzP ��*�:���(o��ns!ErX6���e���	/*~)�ti�~�������K��da/�������cJ���{�=,�C��K]�Sa��b�X�Q?Z%v�5�Ώ�eч]�*����D���^[�<�Z�8�mR���\27o>XC�3��c��pE��Ŧ��v"aS)H���f?���}���C�ྔ�b����WbWd��<���G�g�,ZW}Ud���.e�g�D�hT�1TV�덱X�z8�ç��,��NZ�������P��[��O2}_��:�����"2@���6������Is��0�r/�>�:����x��!%pp���zG\�`h��$�F
������� Qy�|�6�-��JTtz���ySk�Ja1���'tuO�xZ�S+���q9Vu����J`yx�ڎ����M'�l�3U�yw�� پʶ�E45�޾ޖRXX}��4b7k5RXX�ՐY�X�he�}�N�?wa���BY�K/0�W5��۸4s%�c}I68.���
��F�����rQ��j�-K�Q�i˶/����    �HhQ��
�7p>L}I�tO��;Rf�aqu��W�ml����}Q,�NE�
3���u:�6n�@�oKV�e8��X��*m ��E�X�8�N����̌D���
_O�/�MJԸ�y�gۛr����/��v�齭�[�J���͡�ū�H��i����³�jn�\��0{���bsFT�%�A:bXlc��%Ri:bXl�l�HC:!�+�ƎU�[e�`UbXl�J͛7A��]m,3aO�m�v�Ċ�q/�����1,�`D��:Mv|�=׈b�# u�� lDq ñC��������4 Q,��cB^��7��rXt�^ �xe�尋�q�(OP��]��.�Ǣ�(R��o�W~� ߢC2$V���l:�a_�қ���f� OⒾz��M�,N��6&���y�-�:�$
X���<�rt�4W���=�@iЍQ�FP՘�	|�D��N\�E�_�8l����8�riI�'ŉAU=Vgú=*�j�)�+�C,��r)��Y�]3�f·��7/� ��#��c�?O�w�E��ݖ�d�_ՒMK����_����N8$��9�V���iwk�XU��OM%�d���Y䞺�\�����V�M��97e�ZK/�]$���}�Ă�.r���bi����}D�%��z=*���-���V�n'cCI`��Id
��=(&洟KD�
��H1k�X��_Z),&[ūAg�4*@e)��톷�#�E���V7o��T�,~�s�+�E�v�a��f���1��"[��H��.d�4[,��"���;ͱg��"��)�=�t���w�R��̊s�Vi�>�/���!��>���{�+��Xl�K���}����o_�*�0Q��}�K�%�ep��y���o���4��@ͦ6M��Cu���.3�Q,:g�ve��ۆvgo��Xtn�yC�ɋ�ֆoM璡 �s�\_��kL�ǐ����Y���Z�Ż�?a�=�U�b�/[1±��V��)�Z�؁,�G���7�G?w[T'�iu�� �R��P�/�ÇS�&'�(&���b��YPN����WE.*�?�@
�̝�|[#CnS��pr�5�g�RXdv��{�3�7ɪ4u�'����k�Td�G���1,6W����c���"7a(���Z�p�[���Ȥ!u�G��"��ӝ{E�U+in��;�'U�k�d ���W0Ԍ�"`�(�<6�xܹ�ٗ�b\vp�\�.k_���z(g�����X�ܜ,q5�Q,@j?�-�3�ȅ��6��I�0.�#�ۇ�f�cο��b���������$��	>ZW��i������_�JO���C4"�EIe��ňE���N�`���؄-�ű(#;&B��,�蝑-ӊcQz#(�ˢ����GPʜ����V�rٖ�x��R�%YՑ9�z_�/{�"�{������ڨD��y��y�k�<V)����[Y�a�T�d��"l�F$�X��і�����}���=a##��錼Z2֍�����ɢ���2��i�@KT��W��7Aƫsm	3Y�u;i��Ij�e��o����D_[w�����w�ܽ�ˠ�u=g����M��C��r�Yj���qy�f�G����WYr�1O�y^K��Z��%!��Z7t���*ˢ��*=VT`!n����ZE�ugY\Z�{3|F�V; �Žl��l�R�.٬�Tv�l	0&�ݣM^��K3�����ÒY��ЋF-WQQ��{���_�č0�tT87�P?�ொ�5�&y�I�e)*��4�GT,��n��D�!��F4�M�QH/����Q8��JボҥEd�I��?�����F'��	����\�x�T�zsׇ( �9r`ntJ,=�űh[yl�b]��Zy�ÿU�2���HC���D��_X"�uWY�f?������:����ڤ���s�Ғ.�MYgEumU�l�_���o�8M�]����߯i	�Y�����'�1������"��UJ�k��R�x��9Ͱ�
5^%k�I~��
��l=č�xS��{�]A�{�m��E��$����'�.���T��	l���k�Ᏼ�a��y̵��~^׶���}�x!.�]�<y� ��^
���F���;��
6�]��!��a�g[���|���p�R�T���C,0�O�l=�1/��J}�~�_[9xW��7��4�u� �@��C�/�:�a`�����
�`Sp�`�|��4�0�
!(�����y�<�+\�:��[ͧ����Wt�4ظ�c̞���b�����OQ�-�p\e��C�Y����N��#�r��[`S������%������k�%�Iܑ�������U�j�bU���i�,zn�!�_s�[�~@�ӥtͿ��	:M��Q(�o}������z��.��PM��8� K�=�4�����HGmRS��ȝ�qڻX�{>�x �s�Q�b8��p��1Oq�Q�Z�\[b�DI��f������#N�:�'^���HvE��7M`�����j�:Zc�ʪ�B5��w�R2�(Q��ur��_#�G3ةY�_�=�Ēa��Oi��[��k#���(8�/uHq(��?`�?l�w�k�V�����νn�\�
�4�E����
��\�+����;��,�2dOxC��/"A34.P����U��v������_)�j�ӂ�u�N�t �n�w1H�:�V8�Lm �TT�Bp�D��&(�Zy\�	L#[�-^%UU�x�d� �ڶ8qg����g��?���B�l�I�fS*ᨀ?s,MMD����~[T�6�蝂f8�5��	#=j�����,�z�ޛ-�� \�jW���?i�8A�$֊`�m�``��K��6N^�zsDe���Q��\Ǵ����k�$�r�J���W��wt`4�`_^��uegI���4���V!�PȰ`�&q??x"�<W	s*��Z�%H�#vK*�d�wc9Lx����.ohE����S�}���+k�O��0����
[�a��+������SW�)�K��~�������
�U�M�����(d�2i$�uz�Y8�@��	�3����#B�O�/�½���L�� Y�+��j4a3X6���{"XL�T-Oo�,��pb�Ya�\4�����"��� �����D��3g�/����k���r��2�v'$h8�3HI�n�}�Z���CW�����x<�����[*���"y�kA�p���a�[�šV�D��8��҄��_Xw�vd�G�V��^�����2P������2�SyX5��Nk��Jm��[��}e���E�`�[RC���$��DG?�	*X�A.8ؐp�ĩ%�)i�%�1��OH�J�_�`+X�H�����^��h���4�}�iW�d"����.*�,n�<�i�$Ŧ.����6)���OV��U�e}:"�S�
XQ��5��%ռ*��Nw���ނ�f�ὠC:�Ui�]q[R�����	��{�8x����#���,̒G��a��mR�+Äu�혈RY@[;�68:���i�.�vchm�XF�ሟ���CK��ß�+R����S�M���o��wW��&�ߍJ����P��t�FzA��ï%4Qͺ�NH~
Aо4��^���e���\��(F��b\�G�t�����l(��0�{D��C&ڐ�/V�wm+�-�+Ҏ
�,�?
q�ܪ�dr��q��0�R��k����uE-��#�I��+������Fx�T�Q�]H9dh�[`�-�����*��4�Q�U������=�8�<�699$���8-^hN�����P��8��`�Z�'򖚱]��j\"��n�{�E���Kd�:��s�#��Q�eT�����eY*	"�n�l�lD�u!5��,:�U����T�_H]�d{ x[+p���&�xBߡ���`�c-*���<{����}�~��\/�h�QKj �Ž=l[�6����a�'����Ō~O"��
iK&����]ՌeQ�r#�v�d���G����"��^����!-�{�ZW�'�c0.{L*�V��ګ�W�}��2!��<�Q�,lG��{���%"��    �I)٥T��\:����x#����a�r8g���h�`�B'���q�tڵ�w��|z����D�����M�_����=?m1>���_���Y��Tˮ��+Aq��`��B��S��!��0���=�V�~�m��K�VݨV;(�J0�ۡ������D��)!��;�5RQ3G��k8�K���>��������?[W��~�ۏ?��<��:{�ަ�T"�=�j��b���� a�ƽ��(7��'*Y���-f|�׃�_)��Kkp�De2�g�����Q��uݻ��.�T�1�vP�o�5�Yn����g�8��;%F�~a^����l�5މ][_��/$lL%I�-�|$�Z�'�N�ݏ�з�1}Io�,�>hQי6���e���#i�J���V^l�R
�|[G8��p��zO��tg>�q�
��Al����*.��E�祀��F>@3�;�F<՚i�<�so��<N�������	N�K��5��g�bv/���r�M�����	f`Ox���xG���?a]�zq��{�W�^/_m^��v��6#�L�v}<������������z����{���o>�q��޽�����}������~�޽������3�6�GVv��rMV7ݝc�U&��JQ8X�;0��"W���f?+�G4k�����:�[saոF#�nn[�$ˁ5�cvf�� ����t� M���fo52XH.jfYG��]�b�RdD�ܵ^f�?�U�H;���x�t~,�e'?�=ys������O�}xn'}�T�� �)B�7�zW��0����<;��7U�1�`$�<Fr��Y�5�H�m����'Gw�����v����5�
�>�qY(������)�Z=�)�G�6I�FB��Yqz�}�y	��B�H$��˅T�t�Jfu�W����lX~ֽs��9K�4G���=p�/hm�j[��%'���i�U�ҽJ�bs�6��"<b�H;�fh������~���s���6Ѝ���EП`��k��3["a~�H�Hy ��-�]��/����u8���������
�A���x)9����S>��b�h'Pz�X6�K$�	y�%�e���E�tG�O��?�/	>�(�;���&���y�sR��{=9B~SG�S�k[�'�G�|��O*��U�%Bq	�5e���V��T�@.�7o�#1���Mɽ���$���_,�g�O����Tv���ocˆO��?�|3�EsDw%'<Vl���C��¹�H��
��;��
��̲��c��9	A��г�c�%�K��s^;e�S��{|P�"�b��ᮣ���lE��x�y��m*�a�TF�4{�OǽaRU�ᛤ�V|��p�"v/`_w�)!���ޮ����p�������8yY�G��2�m�� ���b,��G���P��2:c�P��s�B�.*e�F�*��0��/��b��:��	�3���uOߊ%q������}����7�X����l/͒)U���q7ٿ���؎K��IUgV��Ό�Rm!%��]� e��d��8�L���m_l�9��Ux�g9N��K��\�T_���G�*�}��0�n��r��`�Y4�TZ��y��nT��?���ӄ����^+0��� =�o���.X�>F�49Ȏ0��A.�ۤ��b �0䒎�@T�^t�Ov�N��4f�i^>�TŪ�s��#.�R*�]Q�U!�Ar
�"�-����_���/�UQ��/�(��j���q6�I=� ]JTT�,�أ��A��8ΨhPF-H�������
4	,:���l����5#6E��*8J�ф����F�q@1�v�:8�
D>w��J���|�z��`F��E%�'����=��"��~���h�P��A�A{6ŪnlM�sm=�9��Ow{TT�vV*�r��.J�Tg�a$;z�n����X�=�<�]IR��k>�<�S��JD�bpq~6�XKB�VbMl��W��-�=8;H��&^�Ɵ[�I��h�~+8vw��WV+�Ky�K�qiĥ�UY'�i�.�G"�O[�2Y�D��PM����,�ux<�G&N�tD��T���A*��p�TQ�yxW�@�j~�5��]-�N�b��G�{��j�)���yx��^Η׭��#�s��\]�5�#�ڦB&f���m�GJ�mo�a��D�<O_�'{�ՈN��a���S��^��6��b8hp�29���h����71�&�q�kEqKT6=�p�X9c��[�f@��p��R�_Klp�����p�ptTe:a�r?�u���ZiA�[���ܽ�?|-�e9RJ<%ᐨ���$g��|�ʀcf��m�u��Y���nG�w����X3�D�� �_� ��:�e�ocn,d\OE��B��`���-��Te�C�a���ntj%V���ڶ��֒,]WM e�@Ug#ώ¡���`㷂(+��1�Q3n; ����6��5�6��w�}�����>�������?����ϟ?�xm��<�ď������G�&ɷ��`�j\%0�5'����� �|��%�ݶ-0��y��A�W��L������ő��ᱚ�5N�,;Xcj���)0[�4�t�Ǳ{����!�Xـ�>*5�Ĕ$���ۏA�s9莖�DB�E)�>�Z�ɹn�k�H�"y�HJ.�A���F|�d_M����`6�ͼ'
��_˪�B�|�"�M�B��L�!�/���/&��w>�u��O��m�`�;Ԡ���F1?/������O?������~z�����G���������z���#��[��lWַvw@=�\G.驩l���ܐ���)l�5�T5�i_*2�8e�,�_Q�|W�y�j�6�?|E[��l7�^�s��@^9��@`"X�<}�K)-�ή%�A�T�����N;o�펆�ϋ��OB�Q|���v%8�w�� �	�`a��q������ց&�0�HF���i���6
)rFI`�,�z2�i�>}��û�߾��Tn���~zk}~���������0�tLB����ӽ��(5XĔ�g��@�:2XHĀ��w��_����:4�F	^b���'h��؜�\��#��$kBCu��h�� �־�<����L��R��`��EZ䘌����kgnͯ�x�����kAb�	�;~���-w��넜����ŪN7u��Ĕh�ס+)���Wp���!<�e�����c:���F�c7���X�%�c3��"]�{8��y��
�3�4�����d����}�I6��W�S�����&��*�&L��}|�I�>�L��x��D3
�C����$q�,��4t�z�b!m�Iu=
�=�i��\%�ß1�f�2�����N�B�T���Mރ���`K�o��2��(_���h'���5���b���ZW�?�r�~ِ�\��부���լA����c�4}��4eZ)��D� ���|]_t(����,P�1����^}~��w��_?���>~�������������w������3�?�{f}�Gr�7�I��֎�������\)H�1C�Iy��29r��$s�^D�,��"tf��/8a;*�Y1Ɗ�C�R��q�Щ�|�<[`0���7`NY�M�Zb��>GIʟt1��d�.�RX� �"�l{8�m���
dQz�e �ն5���1/�,Xpy��弉�]�{&X*&�o��fo����sg�W�����A#���u�8�HK��hY�)�Պd��X�%�Fv����z���>=��yo��Ӈ������|��>|���gpx|��w??�����>?�����Yo߽�����8���-wB��}�gd��j2vTp:��w����d�׍�˽��L��ִ�]�E�Yr�U��d�:z^�+�lE�0��f�'��몹�;s{����`_N2�tv{RY�����M�-|i���\=�,^�BZ6a��V`��ʉ*��L9���(�:"���K�ί�Rͺ} �F$Ej ��(v%��y�U�ǲ�y�����?~z���OxV~z������o�>���    .ֻ��}�~�TLW��û����\4w
�lV[�ڶ���z�;2�~`�f7d�Q�$����MB{�7	�f�`�s.S�e�Ꮴ��H��EFI���@�B�]?*����,Y#�c1�R9���O�%�'�a�T���}�D��
�(R������h��4���a5ء�4tg����3N@����Ԑ�@CvS��:=/��W����<;HY�﵁4J�Y����|�hGk'���L�s����f�5��z�)s�	�����Vº�9�J��p�yRK�48������x0�;R)�b��+չK��%�/��dX��z��s���v��*�a�a��_�Z~2v��rT��ZOt/�Jd�u���W���6~��d�Ua�זag9�;����k����������gZ,�W5;���2�����
���p�s�Z�k�_ڊ}":vlu�:���aWg^�	�]B�s����N��Y�~k+_K<�.=��e�[����"O �*\�V	؏DLmL��y*��d�t��:�A��B���8K�HW/0��ؔ����8+��|R�M-y�:�s�d��$����^�z��d-��t�.��i�j(���������u��ҷ��,���e۔"o�N�f��2X<p:�M3���	<�D?�E��`5 uͮ��J�xK8�}�v�x�چX�/�x'�v(�����I�4h��*)�'�f�9�����u@֦�����cr]'��O���q��cs�l��������M�X���C�>'{B�QW i!�&I�AR��$%�����-��Q�tjn��d��|���>� �6���`Q-iE�NwEa�q�KJJ`Ai�Aa�6�Oi�����B���f�GX�~l���صO*v������*�ջ�',����'�Eg��u�E0���<Q,<I/e��۴�$'���1��RXd���l����V$5��$��,=�D�1���[H�a�[Ł�;ۃ�i��9��7rBbp� 5�������NI�d�*QT��I{=�;�2SER�"5�����Ȃ�Yo�;`r�m�;���Qq���)d?�L���a0��>�a�,�u�_��"{�1,6b�rZZ�ӕ�9�l(���`ӽ%��[��6E�z�c?�x�9���X�d�˶Рz�@j�bU�Er�a4�B[t&/�IP��lv������T��.7H��*����ؗâ�x�Q�fiɦu���yb4����[vTr�'�*�6�;}_�1�U�:a�A�d��U�0�#>�Y�p>�l��0dغ7��!�gj��Pb/��8��Ӹ_jX�}2��5���X�vWۤ��JKv����8�3��(u�J�[�3�Oj&������ւ��#��l؆����ŜIu@b��. N��:��$�?C���0ڲ������0��y��u4~Dr�ߔwo�kC�B����κOQ$:�Y�A�����
E�K�:.����59&�E�5��0�ES���%ƵψHm0�]C6݆��[�#R��7~d��H��y%�ڎ�";��⥺N������@��P��f���8X�,b�*�]��d�#�:���c�h^�v����lK�U��\�¿�[6&�EM�Q�͒|S�k�A�"
�� d��{��9�Qe)nU���ʘ4�RYa��U/�b6Y�I���ރ"Y�A�rA�l��'�A��zA��_�/땩R�p�kkn�RpG��5��y<������ױ��%�����k��]%$-�ńL4�,��F���K @��i, 81u;�TŮȏ�-����\a�6xZ	,��॥H/a��I1,*O�XȽ��,{��� �?�����F}����aq-g�c/�
w�&Q]n|z���	�{RXXA+���#��,��Iaa�X����j�0�0S;NS�2��G⭈a��u��Jaa٭�&�W��k���)��\=e]I,6�գD��o�L�~=,*��r���\��Wy,h�0��B�0�ޗ%39w��BX\�\�a3eu�����9{g���o��|��6�nƳFZjc��P
�l�٪2;4;!�����v&��1,6�=k#�m�<�ێL�Nɶ#xI,����a�Q��:˳x2<}%q��B3�5_ڢ:���Tx�EkO�ƛp�O"N	���H���bs��F��lb)>�Q�aѹ#2ɶT��)�0�'�Ic1.F�J����BeX���X|ވI�T�ʸ2ܳKZq,J�7s�DnM�~F������Im&Ŧ.wD�/�M��Goa�BG�D��cQ�(oS����E~<s
�q,��PiT���w%���ub��Qn��(�3(kU����Wub��f�v�X�v�	��Dϑ���331�N.Ę<�әχ�AYr��Qj(&�gtT"�ux�(��K���D�b���(��bJd�z�^QnjP�!�6�2�X�Tц�Im����/IE�k���Xl��X�ˑc]��`�R/����'���`�2���� g�	'q�P(�ُ@�R�IdH"�<�F_�\�07l�,V �֝��5�$q#D�8b�!�1�,`�l��n��mH
�ؔ��+=ǬT�3�d8 ��A�3���N;ˣ2Y�.N�� g]WϤ��ng���,����ͩ;g���|O�����6�ѵ���\��-�V,�ڣPe���_���7��JTSOQ	=Շ����1Q偋G��L�,�f�/�	�g�rt�-V�=o�S�!��Hs���w���RT�ק+����9�,����F����iOds���n�T�O6�&���X�����*�Q?���J$��>�!�	�8#��C���-���-���Ff
��BG��y��,��u��1�� �6Ό�٩6^���J��pv��Ť5�ϴ�x��@<��6�8�^	�V{i�Ue@#�E�SDF"f�����~���8�YQ��4B������Ha1���%���/L�,��-�I�{����GXW
ˣ���oZԥ��XLʛk`��ݮ�4y���n1Bf8�2�Iaa9j�B�`z�
e��f
�|��ȨE�C�bk"��0ug����F1tŰ��<�R��0q����"��Kb�y��IŁ&.��ާ��b��6O�]�
y�cM����'���lsZ� 8Q�BX\�\�vw�o�<?�d�K9,�pd[�\���� (fo����\���B�G�e����٘R�N�ʯ,$�!t~]#�E��|+��=eqB���EƮ�]ڗ�"[�U.Y�[�9��)��P�oL��t�)�3�%�$^8�)�Ԣ��Y��-�0�Rj*����$�xg�N6'��gM�"hڗ�b�;����LF�w�����[nD� ��CF-/r�5�X�c�&^�ܶ�RF\-��@�^6��\����\����6-]9}eRE�a^9�?�a��CKY��iק{�]i,F�aK�1^�R�{�TN�rXt��;گmJ@YdƖ߾ _8r�5M�/�[Y�`>��b����V�n+�%�6�Ǿ���ͅ���X|Ngv��^'�
F��ܑUx�vu]��cA.�t���E����jzZ�=hJ�F��0���bO��5r��;�+nj1�Kb��?�ײ�*-~�9��I���<�r?�h��f$�x�M#l�W;�y�ЏC#�+����u6ԅ"߭8h8W��CsB�MUm��b1ڌ�m�jG3�'��q,��`'0���DE��/@ldѺm���e��%��`n^KX�ܳ:�3.���Y�Xũ�n����@ �c,t5��ܩ�Hc��ԥy>C�n��KH���i�2Vt���j��q6#x��D,�pn�X����p��FSUSȽ�����D/��x�,���p����8 ���� ���N�_���,����Kf��d�R#�S~;=������	Cd$:ԙ(%�E㶅6�8�$u�)��2X<�����⍰\C/I?�E��tmڗu��ߜ03�9���,s1<�`���5�@#�ED=-\T3��"�&�p��Y���ǳp��qK��e��D:��'�E��G/ٞi\�\�a�-�=��!�;T n  Q�f�z���!��g���3�@��b��E6�(7"�:���Ű�mU��F�d&fϪ�ڒ�Xl��p�Id�hk�MJb��_�a�Jq��~��A�XHˁ���l:����j���bZz��r[�ӧ1s������Ŷ&8�z�B��P9�:��V�:<����C}u%������]q?Ǚ���XHN�܎����.j"�ۓ���q�~D�D���^!,�ž
[���OMX��aJ�(
:��d�uפ����B��8Z�H��h��Zz��`�>��`g��Y��V{ U��k�|�C),�έr3�b+c��C),�p�!Cb>քj�զq���Zy�6-�Ef�#ۖIV0��Ȝ}dt×��H��;Xj�����&��K�#�GOK*=+��cT�7Ǝ��Pq`r�q�E��:m��6��D�a���ԕ���%v���FJl�V� ��N�`������Wg�T^_�5�X�Co �t/�8=��$���"9D��B�H�"Z����rYlaγz'V�^G��y���E�T��ۇ}9,:�%X�M�`O��2��ijࢡQ&}9,:w8Ĳ����<o���D�f��3"���*�=DE��;�ܭn��+����?�$>2Pe�LQ�.7Q��1���X�tjx���}U�4�#&��-9wG� ),�a_ʾ�m�P1�W�vޜ�YQY����-����e�c ��m#�E�5�M���6�'2��ɡ��r}:��Y�%V�@��.�X���F���������t�N(��E�3	���
e��T۸s����I>"�Żj3�w�zEdK���UPO��X�,po/^C\��NgR��%�����BY�HCk�ĔE#O�U��&rO\Y�d[X��#
�ze}ir�͎a���a�U)��=W�[��O����`��0=-�M�; ;��xch!���:z4�!l�\���g ���jJ��Hc�'e���j��M��b�%yn�ER�F�1�+��P�qR�&i�ͼ3Giɮ��i��;�|��xZ\���u��8�)>����B���ބ}F>�`¤ �׶�W_8��rd��0}_N�kR��K����7bW�i9��
f�n�C�d'gOG`}������)r����ur0���B��X���Kp�O�ڞ`�)I6P�m�a�kobM�vr��Xt����hvbs=�ӧN�b�����D�7c�E]J����/�E׹,�H?la���>��$3~(��hS�$�6_)��M�
b�y�dw�U�F*��+�����kd��:�oHʇ��VUD�'Wc(�E�ܳ�"���*.w�0�Za,�`渤�a�bF+&�G"�+�0�T'������G��"�O�<�v�q���y�ag�4�ڰ���a��x�!I2�{�E
������=9,�NG�2��):P�W`���A,>w�"����]�Xo:5�S��]�RXp��*�Di\��D���=q,J�� S�h�'��Ib��1kC����"�MI��c�X����m�k�G�����Q���"���L҂������ҙ�C�M8&���q�G783���Fh����/�"Š*����o��1�,R^n$��Hv��~3�
H54*����	#6���qJa,N�b������m�-7eE�w�I=�D��=c$Ǻ��ua�}��F32Y�ޞ?���~����f.}���P��g�K��m���0P�C0dH�"����eE��;�UY������a���CrY��ΒQ|[&���7������~��|���6� �d���n�
־���X2��hBM/����M�.:���P����^�׶��65�o�=(����K��n�������A�,r�Y����F�	r�yvd};�4�{_,��e�߲��Dqr�*�âY�f�oT��S'�����,��[��.^�E�	�X�Č�9iq�Y����f!J2�Z G����o`ɨ�Q��8�G����2V:;�m��p=������{��q��U��Fl`n$)��`�=;��|<b<�u��� vL��1�s|���5*w��;.��������y����u;.����9����y��b�v ;2��o��*x�;�&����v��|��'��,
��w���Yd��9[���,�Ht�๕�H��YF���Q-���7��ެ��)�j����9ם��`�6����'6���t;�Wb%��|j�xw尸�v5W5�vy�L�obo8���rX\�`������b�d��+�&ȝ�����i~=A,��pu]�O|_�m�����2US������K��z���&H���Kb�-g�0��vE��*����e�����Xci`m�JOW4�Xla۸��z+�O�>L�z�*�p�$Bw�ˢ����@��Yd+a���@��i��w��uԃ��I7�9,4��X�o_�AS#M���u ��h��Ȼ4jeDkt:�D�輶�a�D�NDl��4�]L�ھY'dG�ٌ�*K�V ���FQP��;��#�ŷ��~_`�b ��D����J��{�)��{�X�a��!FS�p���ۢC�Sř�WM)/&���P��C�S݉WT���ɟ�m(����i��w�*r�x���	��v��Xx.^bȺ��Xa��
o�N*"9�綣]��0!�ڻs9���&����h��b�0�;$�D�V�15����a���Ο��~+*�o&�.��ޮ�7m�>�_��JS'H��G&d�DK�M�^��i�*�_�ߵ?6_;���)�y�ZΩ�}?|�&������gW~��k������������5})R�u��]��bIe���xS�׿�"X��:5�*�j�$e����Ϳ�9��e.Kǹ�t��Vv�W�����<���Ä�˖��m<��<Ǻ�:V�&�j�K_�:�m���D��"�����o		NPE��jB 	�N��v�g-s�1�X�r[� ���n�r��{��h��A���Wɦ�IA��I�	�&&��b�2���RĖ�L�0�i[�+TJ���<���R r�X[v�8��{�1���-�g@DHW�A�,�W\�;����s+�� Q!gO� �l����H��EQd0�[��V��!!ᱹ�T�(�Z6�&i��5�����ԡ��n޲�B�?������-R��B�Ӛf�=S��Y"���RT|��H�_�5�r%B_�2�������j�K��wp}�t�Z�$�r�ә��j�I��0DwJ�"`��B/�������>}ri@���WZ|���ʊ�"�A�B;�A�҅�_\�9u �߽��_�h�񐋧;��r�4��V�i'�2�Edc)�}��G��p����@.W����;����Y�ͲĀ�j�s��� ��_���:�3�+0[�vl�����kf�X��m��ņd��`�`�獗/鶧�7q ;aO�Q�)�M-��~��������,^��~y{9٢z�vɁ�<�=�̿J�g"�u/$P���=6���oEp���'�s��`TYӲ��Nz=�c?Ոҫ��])�/,ls���i��:��;��� )�K-��H�+���˭��J Hg�����ڪ�^ר��1a 5_ꡌi��8�\��IH%��Ԟ(���k����`0����      U      x�3�45������ /Q      C   [   x�3�v�tqV�prt���s���4�420��50"+0��!.cNW�� G�>�������h6�Y������{I�2F��� �s3�      V   h  x��Z[��6�Ɯ������A$�ƌD�|��_ƻ�ވ���t��)���OeDUee��i*6�Mc���5��z�M
�����2M6����{��/2���h�1Iۍf���q�Fzp���æx�S���;}������V�@K�}&d.��0νqg��(y���1��w�U.��N������R|��76�V�u�w�������`���3b����H���W�H7K���s���V�(g��ݚ�l��'[r4}�[��%�>]8�0�����V��w%��9TD�P�DZ��ARD�PA�J2�MDN�H9�s��Vg��t����g�����ޅ������0N�>����Hy.�vL��l��N���-Qo�{�����+�������(E$SDݕ]9��=Т�L�Jy�2�x��:.o�����M8sY� ~�|7cr�'s��E~�����u�0~��`Q����2�i��E)��]��:���mD���+�@]����$�tܝ��Wod��t1����+@����P�j^�vX�k���+V���d��̂5���O'Ă�#���蒃��Øҷ��Lܐ�z�N���i��Y�|^��e�_��Ī� ��戃q	��F�Ԍ�h��=E��`8N6b_)Ly�;�EXg�����I3�'��s�� ���S׷�6-�$�>\�@�E��ĝ�R0�� ��0���l�L���-������˟��ET7����UL�[�L,���AoQ�a��O���3i"�Q��1Yrև(r��P�9`:�=��5VG$���>�v���4g�^��ճ�C�GJ��c�z�<�խ�����ݖ��b�g7P_GD�LͰ��E��+�h���lH�&=Lu�!�d6��vs"5��"j!c˅���)��Z��m�3%��T9=>��V����5���>8KE�yx�@ A&à�&��2
J��IՆ{�.��+2��"��� �n���CD�Ac��V����*A
����o	��y��?�<�D����w�Nf���tp����ن�%�3�ܬ���42�lߦ?3�^��2�{����	�l"�4�r_�vs6���q yJx��&�)����qsB�(����-F)o�1B��0�';��-�W�o��$�\��Dc�rH����XRΓ�Ql�7�6�kBs45G� ��i�lG;F�9kV��v�~@���˰I7�6M���G�1���R�B	/ɯ.Z&�~� ��b0����U�O#x�\!D7X~���AbN�q��s)=H���	��O}����x��eDqp5��Oи����э����wg���Av^�'W�,��yE��cF�G+B)�0�~���t��=U��mћL{BO+o�e�᠍����
	5`!�PW	�G{�@d0�v���`�0�)�${�pd, ��ô�./>������[���_=��_N�[�5��@Q�K1{� ʢ佋���v㯺Ǫɓ�[��W�c��[>���S^����eK0�jH^]����<l؍��~4=��?��i-s$�W�+�lz�̀��ƹLb��2�B����c��0E�K��-�;${|7�`���L�2�h7���s�xQ�Y����8Ɔ7�nJ���:�ϛ��ck"znY�0r�]��y�	�j�os�����/�.��b�c�!�
�5�G��J�����
�.�!+El$U)�Ѽ�1l�/�S86�9�1�a��"�_�QQ�����K^�.���Kl�Cnd�V}H1خE���O�w��xU�VP'æ��M+���A���R9�~C$��>��0T*߽~q)o��5�A��:��wǒ��D��O�<_W���O@�O��܇9F�/�_Z�ڹ��B��z;A��N�(_^�6K�r��ǃ~*�y�Ԃ��8%��8{��o�(m�� H2�V���!E=��Ub���f��'Â,���.��Xtg�tF-�ʮX��D�Z���;�CKEaKb��na\�8����Į��g�&B�Hԣ�����7���\���J��5o�^S���%�x�5���F)�n�{�t��O���M>��	$���=W*>W�w�t��w�t��=2�{������v��-k�4����^1=�D����˗�S2�      X   g  x���ے�8���O�h2�qri�	�Nb&vv���z�`߿V�@s R��gY��?�(lU�X�Z겶b�#��K6�Ї�s����7�	q��F,Q�c�zX?$R�"\Q%H|��C�x)�q/oC��ܺ�w.��Ե��Ao�����]��D���e*�&HapL�2�) ���g�����}v��ҙm*E��$�b�M�l��}��f��qn�q^�ԥ��Mn����1�� x'�c��,�c����KI��P��4s �{l�]��bZf^-2Z��JRH�a�y]
��&��{lY���3WR/l�EL�H���o\���kp\H���?��EBҔh5r:Ě� �������3�0�KWiՋl*���H���]ƒ�f�˲�$�U�xU�c|���%�R��?T.�Ϲ��Է-K�A�.,>D�G��ۑ���'��N��иU���dy���Oz`*��hw0v��6�h��n�"��Ѝ0KZ��~��y��;�Ķ�Ky
߸�x�L�������F�?���"1��8L���cٮ�p&<H�6�Ⱥ��`��#+�^d��$�:��D#k�Κ�C.[�X���<y}�W��g���S����˓0rŪ*�%K��[��4�ɍl�<?�F������19���C��{��[~}ɯLI���'L�.����[�Q�C�wGg��W��gZZ��j�T����3�36�l�o-�];���|YH󐯖��$�N�vl,!�wh>�2�鵄g�^ө�e��U��ʸyD��c��<m�4t�}�![<]�#��M��<�����m��gU��.�ۆ1�R71�5JyƳ��K�a'Vǣ��!ɶ�|\��O�4�ߕW^Z�aq$/^^^�*M��      Z   �  x���Mn�@���)8����,�`�*��n"q�/�/	�ڴYLF�����v%&�$I�s��9��+�Ǒ�I�+	^	�'z?��v/���H���� ��WD��K� �/ �h�V�3�s@�L�gBr�m<♰�z:q��$~j`��,Xs^٩��:+���?�g:��X}J (i2$��ٜ�|����A¹�0!�9SKH�;�Z����%���/,ؔ���
Xmf���4���`����l����H+�&�1
u*�߲�^�R�J4t�m�e
�,�����Y�H-&�s�"�5��͍(c_�`��Y+��#_kZA�|.I.��n}�)�UWP���%���mD�Ǩ'�.0�*4��<QH��0�/}�yS�		���"��ux�*EU�(��: ��3�AN9�	w9Q\�U~�Z�d����'>�5��Y�BoJ�̗�w���>�S+G      ^   W   x��;
�0�����m�����Q6`��ϡ�S���6��(v)[$C
;,7'�c�aeVX=Vwy�l�j��g��|*�/�U�      `      x��ˮ��ue�7�B_ ��/�'v#K���NA��0Ұ���.���cG^��p�\@�*�#�܏��k��c��|�������}��/��_����������_��_^���y^_���/o���oJ.�������~��[����ˏϿ���ʯ������c���ݯ���O?�?������l�/�����mY˯��O������߽�u�r�����Go�{,��\}�_Ko�����h�n�ݶ1�R�:r����O+����|�����V�Z�^�����h���_^�k�ZnQ���u����hϝ��ӕN?[������-�y>-_�ye[��/����s�ϫ��3�����j/�fʣ�����eԹ�w�����w��2��׫�1X��e�Y�~�Z2���W�ۖ����u�m-��Y���9z�9���n���Gvse�وW��:��Y�=�t�W+Y�k��d�.����ݎ���e��g���~G;�Wd��߫�<��g.��[�%�(-ז~�ޖ��$N��3Ē��<v;���g��v��oYև�f��ᕅ�Y�y�+�;s뱹llV#+�]�Y���Y�z��tƺ��KY�zl���V��5Wg>[���[Ys�3��}剹C,��c�Z��82���:�Y�'+�����z�مXI�n��k��-���ϼ+�o���,Yۥ����Ԭ#�_��:�Z�>�{V��7�\Y���n���٭�~����ɨçq���)�e�Wedk?F��kz��������c�;���SY���Nedg�{e�6�/el�P�e��Y�vf2�<+��ޙq��k��ȳb�W��qf&{��Z���Gٛ�qٶ�7��V�u�,��K�'n3�Җ��bi��<t��KV=��X8�«Yό�;�;O�J��8X
�Y�Xɥ�`�wf���&ϸXFR�Wv�$�Į�8�?�U.;��N��F6>ޙk�����wxd[�?���*�都y��@�]�E��Ķ���SJV<Ϧ����:s��+gt�kbC�=�μ[�i��ƿ�%>�x��f�Tb-w�e����[V#c?s�3>��g�[��&WfZZ,#7=����c!��bٓxff��fw�le�C�Χg��`��S�_���8{�1=�+VQ���;^wfGcW�n�)��YY��}p7�o-�%�,s��|��y?�2���~�Y|��{��K�"�l{����Vv�����3�=��߉D��n���|'ʶ���<Ӹ�f<�s�Oϫ��t�WV&�?\cK���aK���c��{�Ug�Z�Y߬t�;�w��!
|�:�N���4<�/�o֤��|�����o�w�������ۗ�'|���_��=1+��Y���Or�c�h�g�f3sn�����|���,���>��w���������a�Cc�i���kZ��o�B�=3�ݱ1>�����/���[�X�\��"�q|��&Zk� ��aǼ����>�%�$��ɉ��w�r�����&
$_�:�=��K/��ؿ�k���c|��x��p^�����
ǋG'g��#�c��Q�|����u���5;��_>���M��n���-��Y���f$�b1��ZzV=�$�Q��v�%��%g�Ms�c���W��w��tM���D��_Ó-j�&��m�����5kԓ#�X�W��z�=��ĩ䊮Enĕ��;W$f	n�W"l�@��\�X���Y���O����"b�+ٺ�b��A����<�� i����<��;�:y`u2�ĭκ�s������
L�!9d�];���H��(@�y@V� �_F�1���̕,�l���[������Y��*��܁����T�Ƭ���o�>�μw$d6�%�6�Q�0��3#i`�d�d���й��d����Z���р����$�+��&Ͻ�x\�5��A=�>f���d�y�guF#ep�Xɍk'q�`QmT��{�YF�'���x/x��%c�=�"��-��5��bYA�y�7��<���s�rGv�e�-�y�l�Y���xW��&�Ռh{1�z����c�ܑU��!�Y�~�&�A��eF�?��uރjkf�����2�����|�ď2�d���\Ep��d�������XS��M�H++�͚Y��K;hx��:�k���ޖ���c��9QG�xj����y���u%���w+j��d�E���7w0S}�$nz_�U����[�H����_��x���zdX��St�����]��$�c��k�\<ķ`�Ӭj�.8tö�g�P�t2���k��g�3Kv<��R�	���N��:T*`��Z�BsO|-~�1�|r͊��c��(�x���7vo3�a�D�#Pp�.2�X},.��V�N^z�?C��?_�5����ȳ�?�Lr2�lg�Gu��ʎ�[i�zg��c��c��g�zY�T�Y��/f:k�uF���2�����?xC�#������f�M���55l
l�q�_��)��;F���qP�E5��Κu���ՆW"�f�������g����=�л���x�7�����&�*�e72����z�]�X��}͝�L1��_V�C`T
�	+�)��T�1�;1��2$�%�m���Ƙ
�+��=������]�U�Q��S�س>)���2�F���RS��%��D���e�k�&�XD6���:ٌ���
6��e��R񔼏�x�Q(8yP5�a4c΍r��6�vd_bz2���AT���F�f��ي�i��!�Ђ��U�C���+��n�>fŘ�K�od�%����r��s?y��\�|X��h�����1�ou\G�
b&*g��B��t�j<qI�|G,Ƭ!#��%2��0dB8�Ś8q,�	���4�ΝڕW���[2T�p�dƓ<Vx��Z`;�nļ�I�=d`�j��]ƨ�ބ��i�A(�+�`>�Dɛ����a���!��Z��*��#"��R����Q�eAo� �©`�Q�o3��7�8; �e𡝧�M*)�1`v�w�%�^���8����×�2�V�*�Đ烕¢����g�.Y����K�k�8�����9T�~�E�"��k�u7;��7̠�:t�XB@�e6�d;ذ����)A�`����k���C94�����IvO��o��9�	��u�ǹ1O�Zv4;�^�u��f^�L	q$q���#*�,��k�v��by�c;�����#2�䋉;qv����_���ް�� ��n��2���zj���F��'W0POV�XmaY���Vć���Z�T�}�S����Y��8iby�u2�V<7{��~� ��W��?^� ��w"ؒ�Pd�2��p���1��V̫0s��K�q��̍�z]�A���t�/���I�?���1Ȏ�_�/;	�.B�u71Wf�ufߓc�5d�l�73}�}�l�&V�f��۷!x�[R��Q]�!ߌ�գ$�Ó��q��Q�7��H���Q�xvf�{�^Vb5v�l{#&��A�1pEۓ�� ���%��*UN��8q"�U�L���Rԉ�c�~����F��J��}`;��V�c~�v��������^�/�@x٠6b��<��l�O5Bg#��RW���ݜu'+U�¾�����,+�>�٧�B�֦d��kbe7���zb��M"Ku�9����*Q�5;�p��G<J�ltZd��L�Jvk�v{�%��cf=����_٣��@��u�|�7ه���������J���*}ꚬ;�f���k��%��^�:�X���_'�[�z�]�ѱ�5�Q�#aw�<0֠g�\ր*�E���0X�#FoDޜ>��Q���i1Ç~\�Bz��͈�	1;]3�����uzP<Up�fr5�~��-�c�?����>��N�
�{�i+�sǥ��Oc ����A09�C��V�x���CU��H�����k���z1B�;$ǃ�ٟz��F�[��T��vX�i*I�*2s��^�-����^D���S��ďͯ��jI�Ѕ���t���p�F����*_�w�?��P7u��t����� ��K������7"�5H��j���    7�R��d��|�^R�Ҩ �t{v�����l�c0�A��|[�5d/`D�_e/�[��x"TL濱� ڬ.U��U��TgtQΌc!�QA��v]?��E��0�&Y����/��=�,����q��Y�;�����!�5��F$fFwg��X`�&
�Kw��'�h��o�������[�H�� 1*����&>�5or��uk�
� \O�`�2~�|�Fn!א��:�[����Fq�@��x��|���P�HW��)l~-v�2�Fi%�PWu�\�+�����x��N�Hd�
�-0I�C�J��S�>"�Q< &����;�S'�^�D<1��r]���2O�����D�q�*��g��E8h7WB.�;V�hC�lN���G6eW`}�;��:�'�3����f��O������fG�Z�[7��{����Ke���G��@������A�K�d��{aG2�͟�D<%/� c���a���cȪ�9x	��[t��)�0���CŧB��#×�FE��ZP�pGލ�<�@��j��������z���+/ơ�SCm`W8\3�j��T��a˂�峇\�O�׬"5�y���jWk�B���a��AP9���c#����;�;�G���W澽e�e�,v���o������H{��k?��'>�\`=C���6]e���@̔��|}�j/#��Yi�Y�v���d�!��c�����"G��9)g������2�X	��>�i�Wyf�vB��}$�R�3�}Z*v2��o���N�|��lϽ��_�G�j�gֵ��c��UPb��c��3����ࠬ�f��l���Þ�}�B���F�g/�x�}gωk��	��o��w�Հ���oCg��؆Lʑ;L�g%��<�p��w3&��}2�"v�]u�܋FHD.���;�
�'���m����ܯ�Q�=�����n�}췰�T�z"�'����F�+tY��S��&����d+��BE5R1�Ğ&���������D�>�."�X�:�g�adU�@m� �D��qQ_Sg���ݢ�gFY�����W:�Z*��.ut�ڠ�bN'�o��x��. <�_�M���8{�`�^R�̜��9D��|�N/��N���ҰG�:ҁ#��zTԏ�/vN�+Կt��\ �9��P����}�pQ�^ �߀�+�F咨�u5dt}/�E�҉TTj�q�oOU�R�b���$�5��ƣ��=�}���'��U<��肑�*�S}4z^�pY��W����dex��ڽA��39�'�Te�n7�m�t�]_�B������ʛ���lX	��f~��� �N|�� z�}��h]dj�݉h0�_3k��&�x��Jy�lP}t��7�%Xa�u�����~�=�����P�r%��j�itMf1�^1VPm_"�PMx�ȏ������u�j��8�]��@	""��j��۞Y��QeB�'�@3!��C�XVÎIF�'��^�[��C/�oc����4��;�=V��.��F0�bE|�Aе��ZY������(/'w4T;v;Π�ͷ�Uk+��/�V�ge}~X�{�t��Ax�o�܎�A�ngPt1(�*N�U���RT:v�^������ˈ����8TP&�Ëct�A����y��0�Y���@p��TuQ7tw��ҩƔJ�Q�7�Jv����?pO�w#{e�T�KF^��O���'����L�ኋ.*�?�X�R�
X�a�d"s*��"w�_(2�s��C�*q0��ޠ��[�-����BD�q�`@�=Hz��?�]MG5j�)�]�M�Y�_!])����~KEC���xfA�d�|�3Rr����l���M#��'_��U��c�Mb
w�(_r�;58KB�^B�<s�ۯ���n0��"U�K�\�tR�7w�M�0�{	A(K�6��k2�(8�߳ko�����gM^�솻��'�yNle�Z��Q�1�b>�-�	M��L@?��ӽ� �Dov�'�>��x��
�J�Ӓ��&`�V�,����k�h��Hg������v��Q�/�g�E�����W�*���^���O�RO}N�F� 8�����k����%_ĺɔUU���KQ�ѩ���p��ZQ�T*[t	��n��NǒP,�f����;1��F�
wz�X�#*Sq�v%���-6���V���G���ȸ�UF̴}���skn�ltu*:{��M�D}�b@�Jc3玏NEk�V$oS������:��UN��j�ݺ��P�Qɢ���'��c*�{���&N��BNA>ƱU>�S	�:0t6hR
��䂛'#P�Lm���+5Y�
4&Y7Q#�:З᥷�2�V�FK-�!�;�+�'X�	�F��B��Q�vDv�.�b�怽�gڑ���,�H�Ϲ:���b�,�"� `��V�t�a�������������i_��`�V����Ptu��v�nQ�*�Wb��~��?�`��$�~X2��� e	��H�b����"7qʲ���T��j�-��.ȉ���`��Q[m�O�Q*�\,�ɞ�'�4��W���h��F7gg\Uz��� N�F����8�D�#P���XK�ߠ���?���K�E�_�.�V/ ԇ�]ˮ6^�&5]m���%�ˮ$H���9��WrH�g��D�[I����oU��%r�����f�]5�!�8���|9rD�{�nϤ4y[X�J�������	xT������!|+g��z�lZI*gO����m�O;<#4T���;�����oP-��#���rJ|��j��Ѯj,@wc�NA���b8�&���A�vȊZN������3gt��T<���.U����N���jP�xu��IB�b������ ��R��h�*rS�!�/�%T��2m��[<�Cۅ�ZD�o��8?�B=Ng6�3Oa�G�ˈaA�A�Q�4l�AD�خ�@���?����щ)��z���L;c����9�� ��Y�ʆ���>��v�>�Nג�G�h���r)X
��j�<_���=���۞�P!8''9�u�W�]C�qW��N�T;�kS�5���-�އ9�hKl���"ޢ�@砎��wp��ɣOY�)�(
F��V��
��Ne$y�۵�윈�Uq=������j]c�.OV��w���O�U���N�6��P}&-r��ZF\�t�Ѧ>h2�P�Ó�����F�sj�դ?b����ǥ-����Xۘ�	��E�s�$��gr��d_��E��s;T�̣��磝J4�l�1�щ.���j�`��8g0x�f���|����	�A�Ź�Cn�]T/���s_��脤�N������ƫ�|I'f��t�ͮ!���1%��j�j�΅�Iؑ��a����Q&�8aM/f��K��v0�B�����
u�=%�Ү�8B����H:�(�z�V���gW����H���(=t0��v{E<�%y�Y��?�/�U���\8��/0�: ����	ё��9�Hn�v>Tm�=W1��J��Sc��I����<Ut�1�j�U���[��6���)�	O_&[�&|�V� yh'������Nd�i������n�x��z�L�R=�����*
�׳079���n�%���|�:zX�'��ңR��!+����m2I0ج��%�C��s�pAK�y1��vgQ1��n��R�(���V�L�Ǭ^��&bhs�Tjcr�v�\�b�{��4���ɓ�?'��{�J�n�u"�m�V����� ��2���ǱZo��P�?;R�����+�XurW�}�k��ʬ���ӊzU�D�N�d��=���<qYk�s?�W@�u��(v�]����*u�麏8|�y��Rɡu��<�#?B4=�����$�/N���|6��#cW��h����2�VN�a�, *��.�=%Wڏ��M�z��[��Z�t����-+��)r7<3�|�B4���n��*�vy�Ch⧓��,O���M]���/"�sj)�Gc׻�N�V�<�*��)=;<��   gU;�{˫mW߃�����D}�����5�D#�
RE��Z	1�1P�x!l/O�p��D[%0a-�;^DF�p��\��� OD�zO���Y+��_�_��ϰ�/;���1;zZ��o�A�㦚��E=�)�!/_N�|	ٛ�nc�%D)tA�؅�s��٭)<vU�j�y�e�n*�O��{N/�ck�b'E-���H�H������tf��˼�S"G��ɂ�QGxڜB�'�O[mj�l΢�P�b���1snV0t}4B����f�0L�����]-�)�����YfOGU<\sE��ysN���%��%�2����K}M�F���x���,�λs��3h��5�ِS���<3������Q�u\����Փ�V���D⛪PP��0��*���W�w)�e�\U)2�*���p. 6 Զ�lQ�5�[�G^?:."� ��jt��7�9���e�g�.�e��c�J�����EEn�e��pk�*����&�iA0J2��1��f'��1���>z}Y��݆��\�R&Z�n�,?��Pd���ԥ����}V�o�Ʈ|���}^>}�噮�g��Y��wٗyf�X�l��*��ѮbT����ڴ����=8���uX}�7�:N���Ŷ����_OL�F�r��O�tO��֨2l���9�u8W07'��af	�1��22	9��U/Z >�D����9౜��܂���o\/;���EbW��ܧ��ij��hv�_�E��ergӎaUɈ�3��s=�h�A��p��|�.�AS� /W�k��gō�t0Nl6T6�C�,�#�=��Me�&�e���e���$��bd�Qʇ�1��� 't���<Ar��nM}�a�
��f���:V�E��ݲ7�go2U��)�Y�?�gb��ˬm�X ��>u��'�t�
��^|�B�\*^,Of�x����rLF����'=1�kq�S�*cf['rG�>�T��M�v�{Wy�� ;�t�QI8�nt؇�;�Ϯ�ʳE7��Z����ûz
4Lo���5>�v�d��~M�*x�syz��2F.����ʉ�4:N�K�1�=�vx��~5�%v�g����V5Z����[�o?��VU�E��/���0�ȋ������28�v��|�ޣ.�0i�F�f�$�P��"�Z٪S�zڃ�ThеZ;v��U������֯�9!��،���6&3D}d�E?���j��k!b� L~FƩ!>%G�}�G��k��i�V�Ex�� o��e��ޞ��ya�86��2����~�����C����*m�F�	��(�����C�-�����S	�tXF�<=?p|��&�F1�d��Yj���s������'N��c��U��-�m���Vd��>��S1I���n-��%ta���\?�?>�hv��I�,6�(ۃ}�`�)�ژ:�d�ĵ�uY�?����o���w��˟�?�C������������ߟ���:��>��ן���?���!��c�~���?���!���c����o���� �a}      b   x  x���Kn�0E�~�x�AR?J��
2�
�TM�Iu�-^�
�=���� � ���KXp�����%!���� �5/����%�c\�����7�����9�=r���dy�� 鍡5�	t
�{�O��]�|��ǖB�|��������J~u�1H~�������O�����!EP	�G�8�U���Oe�ѓ�b����+��� (�k���?Q	����A��C9f ��O=����@]Ȧ�����Dު�&���p�W�i���Å�E�۠��u�]Æ?Ԇl�p<Z��F��A1l�	�A�6d׆w	� P�i�m�Z's�J�aÑObV�iï�����Na2M��\a0Y�Vtr�7b��"�Na6]�� �+��[����7�;.*�m���d��M��dYv�X;����S��^x��C�Ǥ� ��l~&��O.�:�y>t
��Я��L����"xc�� eI[Av�Y�5�d�/�a�������@{Avm������ɺ0F�����I�A~��%�<v�FB�<�H��Y2�QEa}G��Ϯ�o�A1��&�;���>��b�A��XrUT׉y�����ax#4��$_mP}#�'�d�,�~x�)$�)�O��r �>���੷e>�ðu�~+P�c
6#�Z:��<�I�]HBp�Ay���d%�}�V�n�g�>TyW#�o�1����X�mH��ɲ�}$ioHY	�#�Ւ�l#�ύ@�擗��|D����m� ���)6	�Ř� *At	�54�W�:��Bp�azh*\	r]�$���B@� ��#�X�"�����U	�#�Վj����ܐ�-�g򣕿��8�������
�      d   �  x�ݜ�n�8����l���;�V]%����.��u�`�;���E��^H���S����a
��>~� ����0�H\�QŶ������}*^�/9��<`K��^�x]�W^(I��\�BJ����?�D.��~~? f¾shZZ�~���"wD�i��xb��;7����l_u��'2����6�8�a���|%�8��څ��z K@.�5$(�m{�\7�mۧ�#$V��]�T1E`]�|�O�`P���`o�%��p�8�`�������r(�z���v[�M����q?�"K0t��$��w:n@�\��B��Q0?�|�Kc�P6]uܶ����!?�	]j��qC�B���:�qʢ)��k���ې1�y��N�4J^�R�xs��℮I���2�a)��gѯD@�j�M"�A�)�S�(��w
��� ��H�����¢ G�{�nk������=�t-��>��s�~m��q&�!�!�0�Wo4�*�Ibeg��uQn\(��8V����o�jS�mW�S��MW�N���T�#�@��H�@�z3�Q	��8�LHL�脎��R ��¢�ũ:�ع}f���lن��+��}��VMu�R5J���G�t��D'Jy���4�E��&P�@��Թs��)��C��Hp��\�=#Oܶ)I J�y`������t㯤� �) �G���6cGQU��D����Rs��9�"�f��x'֝�&�N%m�iP@TX��2��I{��@��9,%H�S)�,�y���Є�#����0C
�>2o�x�"��S�՞�3՘㗊(�B�	�!��v���#u�iTX�D��>b�@.j�TR�W���*�)hؖ����*4	��){h��.I���]��졏#�=�Z�i~N�X�?�uWW�� <�"�
ko��Ia�bM�wlV��Q0�2uo�r��E���d��W���)��9�ٝ�H	|�n�a��4��$�Xb4�N�Y#Ab#��|"�[?�DzFL�g�
�	�Ugf��(6�^}�̍���(s��-���+p|@6� ���@pB�
�B���>��V��O:*Z����O{ �]wm��)Wbl��t�NO��5:PԆ@�(�v(�D��r�Sux�(������cݞ��������^������R?c��ﴟf���~�-��2�8�3EbV?w:�zIQ1{:*]��Z#���I�1�����'yDy���hJ"f<��@�|D,d��ᢉ���L�cE�1˙�G�(b�3-�re�0����H��2��I%0���gI���,"�[��.>d���I	0uʂ�������a��]J��Q�!��׫}N�F�Mn�f� ����ά��Lͭ��akGtj�t�OT��N�q8l�P>
 ���c��c($:{�;�� :7�f�n(W��B�������fдY%�ф�����;�
Ct��twrAKtrH7�N?M�3W8BQ)��:�W�i[vA�٭r�n9����V�q���j��`�e(�Y%/
�>J}����Q+�.��8
��wV�H�eg5PȴY泳HT���Y@:4�� g���qg5`٫Xs�Y(.Y�洳�Qp(d�.;��j�H*��������j`�(���OG=^����fo�Q��߂ׯ����'�êC}ܵ́鐧�æJXM��z��J�/ޜ�!�ң7�:jP��fo5�#P'�6C���(WQ�����b(b!�����:X̝�D�Bq�"d�\
�D�����X:ItbH��B��N��2����U��U��T�E'�o�VQfl{3D�����cq�P޵�{�j!�	rCtnH������Z���=�{��s}.U���<z&��FG��q���0nZ�Rj0P.�x���Y�B:f�%����p����P� E�z<_V���j����p      \   �	  x��Y[s�8~N�
g�f��]5l��mK2����bs� ����Hv�л�]�]q�a}::��t��z�P���&��p�����?���EUE�-�EA������/
����uYґ�E!�7,�D!���T:�+��-NDW�
ʱ[�ܡ�XX��˥+q�xn^�R�M]TVI�N�N�3�lV]�_5��tjp|�<����O� Ky`I4]R�������:���UN͂�JW̊�.jG�х]`�M��u��ל�UO�¤�L=�\���"��+V�7J�z>b%1�*�Qs��X9�f�~5S�)V�Q)�fd�fʙA'&P%Y��r����rVt	v�Y2̩��e]�eD�檊cyb��D��jJ�eAg�,�,K����-�k5WT��Y��$E>����\Q}���\Qq��7�y�+ä�+����5 �Y�}ŭ�]�v6G�'<�\Tf�<�iP�İ��lЄ�g�!1�UT�.���|�k���:�D��Ԁ-��#�J�HGR�����Z�VK��y�-��@"���:|	�p�b�3JD�y�A�|�f$H0<��� ɉ+Y"��(d��
��>D!;�$`E���%x?;�$�R�u�Wp������
�=k?(lDf�a�ai�4w@�=}���g'ʾ���^"DTɕM:���a�U�&�5Qp+*o܉BZ�`�x�׊����n+�l�D1[��!{6V~$B4j�WnhU/�ݸQ#��������.�<
����wE�=��Z��UL_�ƃ�9���R�fm�5��������t1����9����#��)��{�7X���8��M���u:K}��5r8xk��7�E#�����f�Fì|!��M���[����'w��w� xn�%[ {JG9T	�o3yGD�ס�uc�t����׏�i��1�Q7&�c�Yl�O�[�W���нRm��k��hC���}�wk�Ğw�-�u2���M�0����y_N|�B�*K˹�y������tz�0����)��ڞk�~�7 vM;ۘ��������_?��&��8���&����r8xk���Κ�wm�����y��#Έ�ߞT1��:u�8���w'2�罶m�{s��4~H؋@�9�.�O9��#ԯ�Q׫V͗p��ō����|��,�JK �L(�K��?�A]-j�� }�����G?�X�X��5�b%�����J���*�U��V�x�o�j%���_��e�z	(钐�3O�g	��� �K@�d�_�\r�Y~T	��� x���S�tq�t�K��w���B	���
r�(�H���Zٟ"��~P?T~Ŭy�PX�(��+��f�b������W���4����;��in����p2Z�Ͻ��7�-���*����s2�}>�4���,�^�xf���ƥ~�h4����}��#o����f2�H/Q��"������_�Z�k���e�	��j����pv)�����b������_C ��6q/�*����x�籜^�qz��4z>��S3���v5��,R��a�b_AKg�Q�e��X�	!�A�v��a��,B��V]���@1��iH�ئ��7LD���n�;����Cd�æ#�s���@�k�K���8����FɚИ描܉7���!���f�I?R>n��H[:��v�Ej^�gt�Mo`¡�N,��ꊨދ�N�4]I��U5M��?(X�s�D��t  �!k������>PL���&|�>5,���ۡЧ&�u��(�>l�]��)[�~��`�r}zS<�9���0B��6��瘺S;B{�\�ϱOW.��ND��L�Sl6C�G'��������|C��4l�|�����oxާ���d|��/���������|�M�7�	��ލ5����{����V����0r��$]��@m�r<�m��ZQ�Or�Ⱦ��FT/�(4dv�y<�В�����E_�.���\���A|����O2���wnH�&Mؿ1"���o Q��7U���z�Դ��7Z���Cq����&�=W�m���ު��eG���pꁰ]�G�����̃�����՛���È��ܺ�����{����!�2���U�U�M��ى����L�W4ٿv�G3�#2�I���@��>����~����a����,��^�5>
&�<4в�0�
��|����^�ϱOu��!�I(��~$��I�|L-�\�~$������|�|?}q��t�&�rG���1ϗ$��I�>�.���O�pf�|Y_�������6�/�ސ�����,�^i��X؜�B��S�ޙ�oD}��������z��k�ғ;�@���K�.�J/�w_o���g��M�w����3�۞3�,?��?�~�M.�Oͼ�~�fx�z*~����      f      x��˒�J�e7���-b T@�8�_��L��!�"~=u�} ��7"#�/�*3��������\��5M�W{j��ִ������NͿ��W[��i�v�C��4���ө;����<��<v��Ws:��������_���7]�ǿ�ǿ����?�u������m�����7�R��.�6�}_���5�~,]זK_J[��T�t�]��>���������/yJ}�\�S��r��ۦ>]r�W��>u�>��r�9i���z���S��Ss��X�?����{�{�i(C_�/�]��;�.M�VRr[��V�n�ϙ�N�I�2���ܕ9�e��곝�>i��^������������t=o}���5�/M�\�y����:�4'��5u��}���x��S�+!q�~H�2�\���R��R�pJ�O��~��ߜ�<���u�w��}S�_ͳƁ��y�׫�i�u.�T�~��,��s{�s�:���Ek&�}�N<�I��ש�+}פ[�s��T�WkD�R�S�8u>r7��ޥ���������\���^�뱎o#�3vM|��s]�׭��x_������v���z�x�_��z��s�w�eݷ�O\o�x�yI����#~�%Uǹ�Y�qN���3���{�n?tzϼ�c��xn��������u�Ou���C<���aּ�g�b<�����.�.��u�uR��a=�;�秎w]����y<��sz~��sm~�<�~�맮Y����]jS��U�3������P��:Ҙl�W0e�岎�i�]�g��6�ײ�������:��Qrt�o����L�ʋ9x}�=��!�h����~�[��k]2���r67���>��X���N���U�k�Y�J>���.^^gZ�w��/��.�4Ⱥ���������߫�ڧ�N�����b�y������w���}����W�_雖h�bݣY�{�?��j�x�}R�*ի��}�}u�Տ�Or�6߯����	��׫�]�r�_��|��x�����s�|�;���,�rF��>m������u�~�z��ʄz�*�V9���u���\b��+��"�����:=_]���{�0�WU�N����p��:\�߲ߑk:o��r����i����V� �U�C�mc]������{�Y��0���>�(��*������Я밮�T�Y�U�h�\Y���Ϝ$�S�Gu�˰�CȻ������U�n\�ӹ�_�:�#V��<wy�����r�̈́|�\�|���N샼�!�SA�H�����\���i}�:м\9O&���x�7�^�X�����\v� ��m�-��?������u����j�w�s��+�<a���I�K��a�%!�$/b^�������_�N��F��>����E�Y�Q��g|�),9S<2țv�\^��m��{?y=/�Z����؝$es�u�OZ�U�����z�����W�:>?ϺO={��׾�%1�;�G�.����t'�!{���ĺ���o��:DN�Ӳn�� ����w����>nB��kW9+y~B��������?/�Ӳo�Ou|e��X�Ul]�����p���l��?w������><?^o�nc� ?B���ޯ��|�B�贏������}ͪG��~}���<���V�3Ǿ�J̡������_�{)��{���i��������x�=�F��-��N���X�׮z�V��q���`;�1�!��u�ֳ��g�a/�~�����c|&�Yȿ��/���H�~X����w��s��.�i9_�w���9�6�,�g�F�6O����G.��&ɑ:�z�u�ǒ+�)������c�������K[}P�<�:W��z\�^�,�R����ы��%��vTݼ����_�流6u�^����?���e]>�O�>�Cw�݀��r�~���~���������b���"�B㾼���<<}~�w_����\<G���#�|J��^��H���Fq�뱏�p+7�ϻ?�<>��{���#�P:�v���,����Ȓee^�;���ן����U�0�]��:����]����;����V�����:���.�ԭ��ȁ���ɟ��� '^��ݾ����g����_ܯꝚ?��������������a�+���ؾ���ѿ��Na��֫�nx���_ �z���T���|@���T%x]W���'[���v��������~֧���l���`��a����y�����+�t�˻�w��E>Ī���;��7�}ح�N�OY�UFu�/��z1~%=�Yv�>��m��?*��佤���Ś�	���N�u��s���7z�n�9�zG��e����d�t�s���=����ߚ�k�ϸ�'�����^a������!;-����{�>�C���������A/���:Z��95������'��r�+w�����~�j��x����~cjX������r���y}X
��+������ذ�����x�.[�j��wz���޷ǆ/{��?���o��d�l�u����,q��~xe�ȏ";OO�H��L�������#��s�^g���?�]q���:n��%O���v��S϶U���u]�1-�9W�)�s��'ɣ:c�ϫg�v�@�4����G���gl�����-��}���z瘷�S���F]7R�~�u�_��b���9GY��\����`���9��o�]*��~�Q�#�t�w���]�1.�ׯ~�}Czm�?���~��x�<i�o�35uޥ�,���}Cߵ�����_���w�g1�k �T��>��~<�{^��α��>��A�����u�o�ȥn�������A�a�m�G��Ͽ���O�?a�9�%oq������a=�f���;/����k���i4O����Q���u.;I�e];]��5���'<�m��i�y�5�;���^K؇i�y~�H~���ߣ��l��㏊��n�uP��{�ϩ�Ѩ�!�9ǐ�����빎����o��qB�#�+��5�3-q�w�^��v}̏�����[#^��<-������r�l��?�>�o����>u�a^{Je����{��sR�q���qr�����7zw��G�2�w@�����lc=��g���'[�F��������XV�NvF#9���ڡ�g��M�o�T�]�y������,�t�h~�K��swx�����������k
�K�ճ[�A~��=��3�k�k7ٱus����{O��B������}|���#zOճ��f��E���>�|]�]zdՃ��H6�Ľgş��,���ɋϡ���V�>��E�J��>��uQ���>C��uT׉�)�z�I ��9˖�ǩ�ZS]ן�S:�s?��9r+z���J�+ꨱ^���D}��u�?�?<ƗS�}����UQ �)�Z�C�e'Uٖ����+��Ӭ�럸��lb�#��^ĕ���4O}�3Hï�G|�������t#��A����I1�Yߗ,P\S��VW��sk����լ�"�@.��z}��+�g��:M}�k�UV��5_�m��JW�4�j��g����?��Η<�o�}XO?�w�ϼ���Kn�w�'�0���`�k>�>�C�~Y���i"�ұ�[�g�j�a�|kb=��I�N/�g�_��Mq���S}�:/}��Mg��#�x�*f?6��.3E�s�r�S��!|D�C4�ػ�d�g˿B�W�/����V���{�n�sIQ����u^5�+K'n]�:ǉ�ߺ>d��Z*���/yb���y�f��h����B�@��S�Z���z���*������ؿ��2[.��|~q�3A��=�������q.���V/�;��ya��4r����g|&ŵ5�Z]Z���Y�(f�pEC�%O%ƹE^8�[/\w�֓�l�2&�A}����*���o\8'e��<��/�y�x�z0�3�;���zi���3�i[b7Ң�䤎�l�¾�f�(cc���"���߯u]4�Jq��Q��t�:+�u�+�S��i>HB^Uͮ����(�%7�,�����8��x;yI�w?~���f�{%Oz����i^��>�����.)IŁ����y�.[G�>l�G�(cA��3�č�7-q}Mn"�����*�tt�Iu����0��~�a~�׫�IǷ�^�����{���D��X�L�T!���'�v,#P�/-|����o�B�b�    �*�����]��W��x�_��(�*{�9���Ny�gVF�G2������+#F�_u�FǗ��`����H�7A��+�;������X���JC6�����Z�'��(y��o�����s��G�g�OZ�u�ߤ��U��<�|�yX��y�sS�����vi�N^�x���N^�����`��S��R�O>�2y'ı�Uy���y��3�/�'�'뼔�X��<v|\��֕�[��[|O:�2�=�>>-З&��)���z����7���ݲ�Xgu<3�{�.�ϒ�!�:�_)�-���H�x���@����*=qNh��Z����_�|��Z���3S���߄�29_��o�ߓ�kg�_���2y���K�����'�=���,{�R�=��Ez�|i:��/��qv��Oz�^T��$B�g䗭WH>�3�O���g����
Թ��V�'{��i����yZE��N�������t�Ko�|���o�\%���<���_���[�!��k_"'��"{�������U�����[�ì}E��S&�����Bb)�Ŏ�֫���Y�u+;��/��aX���	���kG^��T�֯<���)k�^��4��S��>����K�U��Ag�]�s�� �>��K��>�"y��u�f�&���Bڒ�|�j��ط�s(��瑟G�#����k�)F��R�^�BrU�B���z�b���뾓'Y�<�{�s���Y.�=�)����(��L��zQ�}.=P�Sr^���W����<ɫ$]So-����=~��$���i	��_���x�է��_ް�t	?G�|J_��]���7����o��sW'��V�ى��g�����4��}?��T,����
�1/���z楷=:}���ې?gͷV����x߫�C�ǆ����9��~Vw��3��	����_B�:�i����/1^:F�4�u}�8�߷>+mxFRIbHRU;����m����_�_��Y��'���u)�S����GW�䏨����y�~���я�����F>%[���y�����_�i�@��?q|�s;o�k=�O����[�W٩��Sz���zr��L�E��n�� Ɇ?�!F�|ݾ��a��¹ξ�=����C΃E?�ON>�����C=��0���>B/H�����D#lv�I�R>��3_�/��Tf�"�l�_��I��y!�U��;����/ɹ����`���O�I����g���OgB]��?�c@g�Dާ��	��y}��MA������>�Ϗ�yE��do��e�n\ַ����G�����~��N�ު,@���4����L�Q�9<�n{��e���.HOR���>d�.�㗑c��Jn"_�Я�~��������s\��N�Qo[����gH+6;����͏��J�|a�'�gx����'o�䍞oB�O�_��*/��{��Y���9W�[�Ѿ2�������g�_�B�j7����]��=r��s�G�i��a���|�n���� �o0�����3�>b}��K�Š�͞�¾��|�)���X��_��g�ٴc8�di���^_̿�F�?O�}�l���x�~9���<��3�?g�O�����쬑�~^�j�WQ�����Ԇ��?�ߌ~��:r�؏�X�QB�����%�w��g����>�Ǟ��D�P��RՓ�g�ҹ��Ol_Ᏼ����7؂TL��_w�z=�E��h���ǈAχ�e���g~���y,�S��ҏ�g���̒~���v��:�~¾B�b�1~�o</�5�B�k���ͽv���t�k�?��E0�:���_s��|���3��}0��c��(��]�I����O~����ʱ��ޚ�����OΖ��+{��ɭ6�����
�s(�+��&ۇ��߳קd�FC|m���^��'}��i����˖��8v_���*0��Co����]䧯r��2�Z�z������MZI>����֪qt��~��w�>Tu�������m}� *֗���	,�ZZ����{�'�gdO���S� $�V������P'���[ٙ��=��Q]C�G��F��*���d�]{��OR<��O�O[\6K?���� �Q{�d
�"?�oʵ�ѳ'�-�����DҋɫXW������Μ�
��-q+�b����ο���H�s��)_�~�#~U���	�ڌ�D�M��2%�o �բ�N��c�J���cRx��{qM����S�7q'�d6�>�^��6��o����Y�4�!�j�Y����u�u�ۯ}v�Q>�}�5R�[o���	��ZB_e�'r���I‖��B�y���Ѹ�߱�����g∖[�ϭ�~����f��|`��ӌ<_�Ϡx��%��7:�:S��ܴ�t��!�<Se���ۺ`���֕�伞z�&�őd���/yr<�~�������$� ���*K~M��u-������
���rSxNb_�eJ���A_'�uf}i-���k�:o1�ғ׭�w�v����/q����V�K!~�||�W$]
Åy�5c�7���l��:W%;��G�g�|:GV��9��O��B>}$��Yrͭ��y4�:��
o�l�~2�L�S�F���y�5�%r	��8S��y��,�}����֜^��ޭ��L��>��\U�k]R�&9����D���w����+�?�b7S���>9����d�~y{�m��Ҵ�N���j��T~����^��!�.�����:����K�"/C1b田����E���$�}��iC�ƈN���%�m�?�>ު��^ψ�˫��^睭׍�ּ��������g��ǵ�{=�%��bS�38/��Z���ݯ�w���0u�_ԕ��Ř7���'Z�U����u�}}��������!���I�k�ԋ�o��;.�P'C����]G>�6�%���:?���׺q����|�K�[ݶu#�W岮��i�Ƿy?b-��fY�:��u�����{j"�^g=;�y��ܼ�D>���ӒGO�5�P�,u<��d�O�|2��}��W��}�Ϻ�����������J���\�ң�iS�ҭ㘷|�5o\э�U~�u實��w���m?���K��*�� ��������R�,G����9bI��q��7���YA����!o� '���C������ ����s ~�d�Oo��%,��W?\��	pb�����s�e�d~V���3�P� q0���xg�y�q�f<���CA|n��s��\�.��3��������� �������>�7 �7�����l��y�6@�����z�y�[��~=���A+�?�U?\�����`�;���Z�=��~��c����~bѼK��I`\ ��u@�u�z����^�i4�󺎞�4z�W���{zmA@���Gwy�B��K�����������}��@t	E⮀N�
R��D���UƯ�[8�2��� ՞�vn}|�o�[���B���b��i�K�� �9��K� ��d��#���]�ٍ��}���^r=k\���<�^v�ٯ@�٢����d{>��f�sc{�����|ۃ��@���`�C9�tn= ���c���1��K��w����-��<~���|����<Y��gP\<��>}#���g?��D[�ۺnv��#(�nG�Ai��)@dr��@C{@�r1�w��d��ݝ֋����s{��p5n��p~�}^����[��ùC��sy^������ݿw?^��ޜ?_����?�C׭��ppf�@�ϝ��z)h�-���I.���9�V�K˩q�?}o�߈R��K�ٜO�C����(!�vK$�r�0n�(~Va~��@�Α�s����c���9�5���^��-���������9�f��?�ι.�}ہu�~���Ι�<;�@��s�w{)�^]��~��0����>�O��o}v_���>Paf}�e�p�qt�v K�p��J|\���7 �A���O �_�P�86~�O轏v�~<�s`�|w�?ȿ���Ps�������!Ƌ��������=��r����d�����r� �$�$���$�d
�z�N�k�|��    i_5{=j�OK����Kr��/���~��t���><���͐��[No
�Y�(�ӧ4��J�i�'ϙ�\�����"�#߃����!�K��[����~���!9E����}澞j]����m���d:�����i��ׄ��b��w�����O��X�.�ϼ��Or����ɏ�.�5��Ҙ�	��~��~�������ߤ\�
�%��@��G��{�����E>ȟ�䗽��[������b��Wo�����{��9���B� ��/���Ho����7�\ߧ7���,����]��gݬ~y�=��Ov��<ŭ�|p�i��G�J �6qa�7�(�����s��?N�ﾬ�;�F<��*��������m��������yE��`�A�O��z������?�� _U���>7Ƨx�Wύ����tn���ǜ��������o9���q��oZ�o���)n����8�s�zw�
4�!�kz݀�m�/7���V�׍���^����)�����r�m����s��^|~i$V�~oӐ����h��Z^N��y_�s���Knh6���Ÿ,���AX�ۻ�Uۿ�%��}C�\Λ�i!��ـ���SC����`}:|mxv��^<�NN �xڷ/��J�ύ�^�O�kE���Pgz���^�x#v������Ҩ�yj����������w_���
k������.q��m���vu\��s���so�����Y~����Qc�{#�͹\�}d<�U�?C�LUc�S�#w� 7 �zк�Q�1D��`�ϠTUxO]�������#c��� +ԣO����Lכ��_<�j����z�{��0G����X��_�z	�s���VL��3qb���c�x��?�/���{���8G����3���ܨ��9gb�S�4��Ɂ\���׍�Naϸބ����2`�X�HBO��QG*ܝK��z�{}���]�~��z�qD�w��/z����\o��h��v�|���������뙧�GuR�
���A4���F$4L�FA� �3O<����x'��4D1F㵎��B΍y9g����~M�.�xZxT��^3Q����ّ_���V�b�4�8 l #u�y��@m�$^��t�����3�ђw5 ,|���:��x�<�n����}wv�ۆr�"o�����'7�Y�
7�3u�"�h���D�@Xv'7�����K9�)���6������Q]��Q�S#"�>&s|�z���^��z9��'�7��+�%�+h���Ѡ_�?=�\�`��:�z��a������6��Ƣ4T�<pc�FG����������~۽W�#y�HYs+���>h{�f��<'�a܀��F�vN��K�}ʖ#�P��o���r����\{x��[��qU'����O����s�u0Ds�A@�Y�}^��D�[��߾���y����v��w�!�������W�$0`�FY/�G����q^��� B�۰�4@�|��y��+���:�kq�P��@c(�z���sC��(�����
4�k�� ^y!x�ɮ1,M4��]�$���B�[W��z���m ��}HD�f�΀�i{P�J#�`�^�Sv,8�	����᪀��\ � �@`�=��y�����]4V��Ac�b$`�gh�K �Z@��|�	��+u�鯲%�b��,\���߃F�N�Q囑Nz�Gã>(���]��P�ErQz^}/���u,��@�Xf3-�@R�^Y�::OR�G�j?P_�l ��ִ�5���? =����9��;��osn�-����W5 �:��T�Y�x�aG2������M�w��=S��x? ٮ�� COrB��o���,/"���c�M���.L�O�r�]���L���d0yZ�p��ug"��������V l0�c_���\���B������n�����BVh�*]Y54fҖ�a���3Y̏�<�� Z��Q�#���h_��� ����� 4,X�� ihd ~Yг �i�!;�Dä3� ���@|�7@|�t�\ �I����hξ4 �$��@��C����d���z7�
�-i8f��L&:�3��v�N �o �s��46
=�z�Q5K�/�ܻ�_}������|��}Ç4E����%�ջaŜB-��3?O�[���־���pM.i�y�`t�_�:"Z����`Ih��t�����E�6���Ώ��:�&������[��o@lV�|�Z�2��	^���<;7���|�yj� H�^6�X ��r4�H�{��hÕ�6���?�w���h�:�]=˭�J��yf˫��wC���|���R5B1�&ǅ�@nk0[�%~��ʥa���:�xn7�ʞ���ѽ�4������ӎ$�͊����y���H���]~^���%ig�'9X~Hެ��ݚ`�e��9�M�<�T7$I@k��QeiV�/��� ��C���޲�G�b5F��1��&�z���O�ę-��l�� �ٍ_�|Y�Y��~ч�GC�l8�+ �>˸���Ѭ�-�2 l��,w��~�Ui�I�q�]~�p����'�B�����Fb4����i����:��]5D�� �ޤ��$��>��W�`��,V,!���h�uC��� �+�;�՚�����x�^~H���k�nH	`~���[��@�'�Eg��L4Q�*5Ψ#��M�1%yh�K�.�M ���M+�D ˭O�O�x�JE5��'���蹯�Ӂ�|��F'I�u�3tM��}o?�h�8E{C�r5�=Y?�4���xy=��4�{��������Գ�O)�)E�f�q��G���N�{d8��PhPb�z��h(�:��!^�~�ٷ�[�i���,=s~�����sN4Ѱ���4��:^5��C�ϱ��?&2�� ��h�І����*q��~�?��;���ߡZ�h]�Qs���~_����u,��Fq�h����8��� �5�(���Tߍ�e~f|i����6t�a������>߰`8Yt��4���Y6�탆g\�BC�w�&�G�l@�?m|�[��]����F'2��f	�^v�hh�~;�>��7�O��L]F4.,4���f$b��"h��Lz�D�e���c�0����>O�hȕvI|]�Ҹ��� ���&�GѰ4�R,����I�P�/��e��?a�SR������<n4��FW�^S�ݷѰfFg{Z��x��{�>O��ѻm���|�O{4x�w��}�i���k�&��|��p�s:76%B�2�4ȍ:�Wi��ѐmr�'��h@C����*;�����~L�h#�W��o���j؋<���}1��ϴ�[V��p,Zi_1�ȧ��w��V����p?�aU�\��ύ`���E㖎�\vY^þ�|������>������.�4z��~�1�����l�q��G5la|�/�?��F/�7��pB��q���]��p?a����}�s���cC���PV>5���5�h�;���ݏ#�2jv7$�nX��_��<=��Ѱ���G~^�*�T��H԰���>�|��S�UoK��8�y��Ѩ	�H��i��_���L����y٤��h��}���n�+����a�ɔ�d{�&Dn����:����Y�'�֤��[7����o��!��,��h��`J�(��	_|�!Q��vEg}!'��, ������:��s���|}xM�?�h����i_����a���`e���'E7D�;-;0�XMg�?�s���j7�ϥEb�����#�����<E�+v�Lî!����bF�����!������D'yǞ��dW�n4�<��5��4�hi�ңQ^�*��p��6�����H����H�N�5����ʌ���d�3y�Y���z���4r� ���(e�e�8���B/'�Ϲ���m5-q3a�7�a��0��K胴ې~ً$��	�i�Ը!s��M�{�)�Q�a@%����b϶轴    �F���d�W;7��S��S;ѬVr��zcۓ���9h������c?zKS�\Z�#�%?�ӥ�K)bc>w�uؓ������nX��,n����Q�<����k���[i7��앩��w�5�V�O��h}N>��������A��^��"���D^XC��,�L�)��4qةA��j��?��Lz>���,s����'�%݈{�s��tr{L�O]^���C�ل���*}�B�97��>��H?���5~ɞSr��������yU$7d���2�dә�[��h�4y��|w�nE0�~
���~��э���كNܑ�m��QI����Ƈ�N�~�{T#t�ӜE�>_���CP7F�h�F���H�N�O�1��k~�)������|6�T ')j�����\�y24vk����J��i�=�|�DþjG�j{�����i�C��$v���ߏz�Q�x����@=�)s2ɟ
��^��v��l�y,s��ܠ�󙊝�,ѳ�g��Eժc��_ۺa�]Ѷ��ϝ�#�����L#{���`�����.;_KQ_�;ȝM�4�z�n@����ǿo�8?h(��WG=ϛ���ﻆQk��i�����<�;o?���;�U7�76����xh���8GN��ɴ�c2�|�k2_����<�������ǆY�"�u��'��;&/b���:ɒw�iXֱr�E+�>�ĳ��������<�7ק�!�I�{���m��j^Lf������k��'��#6}N��O�������h앗������^ �ɰ��P� y�42��4��W.��x,�12ui�_6��]ûWd�Ho�������C�kw�����i�]��ߩ�w�>n�U�������h�u4��yK"p� 2ׄ��5��V ^t^\�(�w��}�N��+Bu��=x��x]7`�������h�u4�:x����]:�>o?������x٩*�ܽ0&�Q�x��������Lc��%ዀ����� �v#'~O`ϗ��� ��.��^����`ed=�/@3G��
��(���_w{��W�A~l�v����ܘm7�� �� ����='y����,�P������}�,��$G����h���0ы� �|����{��g�ynڃ�䲂�^�KK��
V�d�꽶_�T����z(�<��;�����E�M`��( O+X���vrbxz��^�
KG���yq�0Q|o�3��~�=���<{���'��jiD���w?��h�~V9��(_���g*�z�kw�{�/���͇�SX�^w\������{ ی�]/�7Z��b't�NT,J�S�O'�
���#!�gu�a���t��q�'R����� ��I�C�N'�� ��0��:��tC��T+��P�hi8xfz�a=�ѕ�.�D�K�����~0�k0��=*rY�Bι��@��N��_@�r��&8�~71�����	�q�15�s���!���S3!��.��}mW��?.����?���=���I�e�MO��~ xQ���|?��$&$'&�i��!-�C7/����:����^� �
@B�����C��z|�Q`������Gݸ_��#�'-~����uiH��_��᧘�_� e
�����
Q�JG��H��M|�v�pAM�g���S0�BQ����-����ʶw�$�%:u�r�@jpA��N$��έ4�v��w�HP.���E��"�_��5 ���E�C�}� gz
�.Ȧ_0�,��a��9��q�r�`g �:�ɠ����-p$@:K�ߛ%Ϊx������0�h yW��;�S��� !c�؂�(P� 0���
���~�%�����G�# :�gZ�0����O�#~��<��A�����?�>�'��4�&(*GKz`F�������Q/A]����Q�	VJ8��j={Q��3����"��JD��@�X��O������z�JT���=p�]"[	�tN+0��U�������5a0�֋@l'��3�wp"�1�<e�;n�G,~(�p�Da��U�xQ`��A�8zhq"����i�
�� ���L"uv�|�?��9�#����������`�܇�w�qb-����0A���JOk��
Ǳ����m��/v��zq������.4׉J��
�(�)J�d�����A7�(�3݅Z�ˀd�H,-.p"�^��@#�W
�Y�iH
=��&y�%{�q�"(������Z��.�
�[0"�����B
.5��G%]Q�`�B����x
�c`7��ٟ�a_�'��P��ON�VZ��)x�{�$-k�QF��-���n
w��-�Wz�Հ-��:@>��>������E�d{�P"yǺY4�`4
��Bf�YBod�)�:y}�}�x��ցB���H�#�����3�<T@z���OK�y~�������Y����%�P�'���$p��R0D���2��S)QX��th�*@�+��Ұi-����s�}�! ����@���W��r�?� �$d1���g�o)
�(P=�t�e	�O
 ���Q@EAQ�K�|��p��W�.@�\�`�}B��7����`̑ ��J��~9
 1*@"�ە�On B.p{��R�������
Fhq�̀$�����B.�U��d���^�Z'�\x����؝�d�K&% �ۤ[���$� W3�&��=e�׬�Z /+�&�s3p���q	�מ#��]u�]��ݺdM=�9 ?Y�0呂8Sv�0rM ��(�-��K����T� "�ٛ(�(��4oX_z;�c� Vb� l��}U����
q)ا�<�h�O� �r2���M;8%ˈ����/
9���㾛�@�Ď��=" ?x�̸rpqAp�0�iW��^@yl�Z4���^�?�#����g}���x  ��n�i�e �pT�g����)�c7��]�z��^�b��c$����X A�� 2MO�%��� �_\��}|��C�*�#˞�z�R|] 2 �(0����O�@���>X��CӾF�Q����"� z��i���W���a��{f���� ��.�R�w�?Qi�?�BI�Q��׵/����T�l�B�zfravj���)�5X��.@j�!摀0��YW�J��\���GÖ�'��2���|��3Кr���u�h��K3����6�T�B�^��z�\\�ߍ� ��(�Ʌ���z�3��.�\ �#8A�N��
|�}�(
�[�]���� �T0E�@���!�*o��uC��C�{��# v���,���x
K)�P���ЬG�gC�Ћ��s0Q�o��\�G�k8�+��K5PH8*l�z $����_�j �l���;� �K�9�S�v��A�u��W�0���Kz�EM��?�G�op �/�����	@' � tB�����|��~��b�@���<���� h0`�x�@��N��ൗ?������g��3@�«��ޢ�*��  ��,F���F���"��% �t>	��5�W��z��]��~n�Qėf�����S
މ �0Q�E�,z�b���H}��6@À>��(dP��}YWq���'�G �W�ǫ����a~
��م�H���0"�5`_� �R|��g��� 7 �X����n�İ�)��� �b��<��*���ň�=, :���׻�����ft�s_ه���>��ӟ(. 4 L�_�?��~���G��@H�O��!_����Y P��x�|�S�Byi�.���VYx���[��4yW��o �8z��b_��;��� =Z  �6ƿ����'醌 ^ :������;�_*��f�oi���	�,9�' j�k�4�=���8�di���^_�x
�WY�� ,��x�~9�(����g6�M��v��';k }�\mB�>�CL��g[��_�( �+X�<���,�Iik�q�c�5 �:�a1�O��a_H�C?�}�ڶ��{���~��    `0�# 	 0��h� х���f~�����~&��O�2`�j�##�ı���-�ud��}�|��,ߦ�:�B�k��p��'Y׿P��Y�?_ ��{
��l}0��c��@g�]�� ���>�e�p��bo�l�0~g �ɶ�@�8d@��O�+� x�F<���"���E@o��ү����=��`_�ޏ��������G⽒A�4f�{�E���<)��/����9<v�#�*�S!~��@g��wc�f�St#6 �֗����ZZ����{�'�gdO���D�U�n��d�J_����3~����.�ڗ}� p	+��U%{��,�f����$���uj����i����->����г'�g���Z�����U爁�*.fr5&b� I�O�������"+�r ;y��ˌ�  �8�X�$fAoꝗ)!Hc:j���`M��c����gdE��x�����G#�$�$��e���*K���� �N䅪1D��Z7�7h��8��צ>U�*ץ��f�u�� v�K��P�G�K :r�u�0 y�/�������X�W��/ d˭��V\�4 Һ(�KSC����K3���/�V�{��[�&s�"�)C�y���Z�3���A�����G�ƛ�g��	���'�x�{}�{�l��C���SG��)G���%�t�'~�� kg�Ȁm�� ����A��_r��s�KOq�|�nǟ���7�N�|n�,�||�W$]`���o���A��Y��Yқu�Ҕ�*Nğ��t��4~�����`�Q���f�5��B��8]�*�&�F�'��)_��e���ȓɬ�B��%�B�L�g��ĳ`G�vf�h�!�Uv$X�D<�f�0�����|O ���*�+�O$iid�^y��	��:�@'�X w�'�`�F��Ҵ�N����Ɗ���_kP�@@��$���zP���#B�Y��~�[@T�F蓮���O��R�3�������[�����\vyu��܁E[���:��D���C��k��z�]< T�޿�<	nĆ���u��Nn��_"�q��O�<i�,����w�� #���K���_��z]�W� $�h�']hZ�#�O���y���oq�ݖz�ȷ�m��]���]�<���;0 r�F�0����K~�O�{j��FK��,yg��O��`��%���k�ahN�Oԝ,�d�� ����u=s����3�h���=m�,K��ּq����V~�u�_M{z ���]�8�W�<�ƾ��8t �~Z�\>ט`�M����G ��ܖ�!A�Ou?8�^)6<�C��:�Cp� ��?8Da�=�ǡ�2p������C)�<�ɳph�=����CW?%�`Տ1NC�u�o��8��h�պ�)�!��E���}����`<�5ā���Я}B��� p��:�'�^��84���nI��9����C;}� ��8���+~��x����q� ����(������U4�� g�����N��NX��h{؅sJ�:�Cp� ������-���́C���\��X�4'
AHȩ�R��D�+�R�	ͣ�2���8DJz���*����t��\:Q�����t۠�R8	�$FS6ے����`P��)�s����hu�$Q��pK�KK�bo��uv��� ��� 
��0�V[ǵJ"E�9�p�N3�'���R�[Q�!E�$D9���ح����Ζ*�"��k\P5�����1-����d8����P��`� .��Mi�("!�V O�Pl��RM��] }�#f��������(��L!?u����I���{�PzR!��� �BG̑D,���3	ʜ�$����Sק�|P�	}Y����\x@��R�a7��l(��>�X��hS(�W�n�0��ѬN�م�$�V��@�Z��s<�#�¤����p�#%&K[� �L���9�
]�Ȼ(�I��#������&���8���$������w�BV�1i�t�<\ 
�*q.��G<�Cp� ��8t ���:�Cp� ��8t ���:�Cp� ��8t ���:�Cp� ��8t ���O�]�?8�R� ��~8�������m��C��844C:)�|�p� ���]�ȺN�d�� ���ʠu�l��8�~8pȅ�p�#�М��p� ��8t ��H��7�A(�ϛ��>��?8�쵠��[ �����_y�Q�h9�{��8�ph�y�n~
p�B��n����
8��:x
�01�8�+�C���p� z��������� ]K}:�U�3��I�!���8�:�Cp� }:���J�z���ÿT^ �>Q�� }��I�K�w�D�d�c�n^���?�wό�S���ަč8t ��П�D�� ���8��S��YhQ@B��C�ȧ�R�  At�y�y�~��C�+�s�3��f�T@���{q"U�B!�����j�����$���%b�視[� C�D��/�@u��nl(��%���,$�� /�y���;e`c��B�;
����q.�� 8�N�Z�(�!��`�H��"I8S�4��\�Uϯ���푂���u�������J��@�^+��)=�DS%hv�cB?�5uU4{[�S�����A?H��H:��.��9�M1��q�:lBA;H�x��O��*� 5Fq���LO\�����E���B���%JH��h �r&A$ND����1�
��.4s<6�������*ܛ�N�Q �8֏�;БP�J�V"v1h(��-��\!gL�H�^+�E�
�w�t��sr�5/ϼ�;
�(��}'~�L�ݝ�����?ȡ�o�\KNL���ǰ�K!�:�Cp� ��8t ���:�Cp� ��8t ���:�Cp� ��8t ���:�Cp� ��8t �~N�k���!v�84~	8�c����C��WӶw������w*�����8t �~R�n�t���G"�u�|7p��`NQ0����~p�
:�t!�~ �>�n
���:�Cp� �Y��ޅ�qߏ�B�+Q�,���9����@��&��.<�G���Tx	���r!�1	-$�B� Y !���P8-��!�2�l��
G?�k݋�٬���iuHؤՠ��ԅ���p�����p�(t������� {�Kqn?������  ��@�( ��'_�p@`����v��y���L߿���8��|n]=�}�@��x={�@� L��{ "�Q�1�.�� əG�Ѫ���*w}�,��o���/�.�#P����+��(h��(�\�
 ����H�p�aB�<��q0�~ݭ��;h�Ky�	�������^g�_��h��,=�~r!��g�ez��}1^wP��{�l�D���U�ۀB�|��ߏ��	0�&Y�H�0���Y�b��R���u�D��:�C��[�7����ߟ)���|�������� �W`���('��>�<Gy��G�Ћ�� �|��h(�s#�_�ۣ����//L{��ϕ; ��L+�lpqZv@��{��� ����zx�i�Λu�:��~�f�-�����.[9��jݽ�'��4`'얧�x�{������-���m~<Ϟ�c��R�����#h*?��@T��x�@=!�ڰ#V�������z����{�/6�������$�.?��`�����g=i������oA���\H�
�ߝ��ɰ��8;���&@�!=���뼀'���CsxT��q��t#��������,���s���s�o�I�߿,��<�G������i��+��C����Q���W�ȭ��>�K����t[���sbV�����?�%q���K��a���~��B�@B    ��{�n��6vo�8���7ڟd?�;;9���~5�Iɻ>��6����7����Ɵ������)2��Q��"~`��S@�@8�h�q�\5�妟ٔAt�2n;�6�7�������|�ސG�=�J�;ȑ�~ M����V�B�\}�?����_�Ģ4	$���
�SHR���R����^d�@������8��A�D�HpK$Rr���+�`�X�T�?|݌���S��P`���"�_��5�
�V��o �'��w�4k\�# ECbB��) c��LJ�q@�u|���+w��L��ד����*�3 ���7���+@6H���w�8A$Jh�=�[ RGʡ�W'�k�>����8�������Ŀ�|��<�����/�>�F�(�X�Go�~�u '�yNP�VN��tz����}~`���m�S�(S� cX_�U��%p��y ;��$�Db��drv�:�TJPT�HI ��� ��|t?�}���	gS���!o@h���q�����牂���h���/�<P�] ��9
��zl��#=k��O���
2�ܝ�TD'49�'�[��؛���q�*�����\��I�����\
�'�>Z�:�/4*d
����H�R��5�㥰p����{d��B]E�\p^�������e��P=8�JJ�V�i�9xr-F�9��
�9J �Iv�'/	����x�@$�3�'���p��Һ��NevP��P�
 z�����+��q�VQcyG�PuNHЦpo�P��DAW��^����6�;}�5��� ��=�8M�S=�}���o���+��Z7��{�i��O���6
��� d,�`���� É4׎B ��#"z��5�Jҧ`��D��@b&����H�'����_H�^�VA` ?����d�{]����
�v���$ Lq�7���y?�[I!�z }���E�͠�o�$
�(<R��֑̊��3y��>��s�`����� ʠ 
i)�i�K�h3�ez �L�(]Yz���THm��Z�F��mD��`K�z������B��}�"TSǵ'�|p!/�n���#�
��N� 	��G����S��/��i {�Нxu��n��0
�;
'�|^	�-E��GILߎI7��'��	�b� ��d�����������4��1ۆ�b�/j2h�\���J��� Q%��_<�o�ze����-�Wb�E	���c]6���ȋ�u
 ������)'u�6��� �lPT�B6�7�^v)�מ��
��k��o�s�S�P��v�OIn�ɳ�AD��@���~�S����}��׷+�*Ȋ�]'���M��.dq!z�� euR*/
�;��}��\�G��P���8���_��<_��\\�{���(��G^=�?*I�-0Qʔ)� �\�7Q�x����3@#)�I�P�8�.�3!!H��Q��j�Dݖ���Y_�ǜ9
]� #� 
[
�)`IC�`�>믍8[�p�Tf��Ѿ��� B^�G��/26��2�	��Z+�z��w:ltqM&�H~�^�E� H��1Z�R���0`&�S�Y���5:g�D��~Ջ�0�M��}N�2E�|/�  ��<k�}��X
 3�5�~rjA1�B!���!>��i;��0yN{>�:aw���ޤ�1Ymrh���Um�¶�ٰW�ʎT�r��_-=��S��Q���yT����<Y9.�<��i�?���Y";�}*??�P?O���x3�p
m��;7.X�L�QלwɅ��R�4�����u�55�@�u�~�U6��~y��>�� ��ܸj#TPI��ش���29OSv 10�1�ð� u����� �^$���fD����)��R҂��C�� ���
`�X�M#`�	��x�q��O7F�.��D~k>5/�co8� �@�i6"u5�5��7�WX��g�q $��M�¢ \���hP 0`���� ��� �2Ȃ�w��SvN��E(Р�&PX�!��~�zt�x�̐���ƧyA�0�|��#��J�G�O�Ź>;����ȋO5�`���nQ^'�]���GND��/��܂jh��������a���W.�����`"��h�=��%p�@@S`�)�T��75y~��/@���G�J Ɍ��� �,���r����5TP��� �O�j8?Y��s��铠�7 ���>O�~�I����/:�G��o	Ykr�P���w�`L1��)��G�0Q����?��(���V�=7�D>K�0
� @/5�r�4H�Hj��I��A&3����Q2,p �Xt�_�Ӌ,�I��A<�i�R��� +�����b_LHN�����Wf|<���g��b� ��9�e}	��$��[�z�~1���f
�*�O�g��H���4Ja5�S	;F��7�k����O�}���z@�����J�?��O5BA�^v��?!-��v���?��^��	��i�w B�5�[�'�;�l$nj��-�>� �w��ž����ؾ�i�P��u����,�	y�;��Ă�:�_��[��H>u�I"_-�w�3�E��(v�������o{����f�V����H��Dg���7�i�0� H !�|�A>;/�^����
z��� �p� ����?03�.� ߧ�;`]��:�{k��A���I�J��e7������>3�joLQ��F=��h�v�"hp~�\���r ��j�����a�,�O�0ĩ������l �)K �U�|�?�7 i�nL�JN��َ��z7-t�bv}@�C8B�
|�ڀ�9/ �'�ɯV��M�4F��������#9F���`��S��N�VL1�^ �dP"���s�� HDެ��(�7��3�X � �s3�i]��o��D�`��]��ޅ^�y5�e�V$_�������ߑ�v����Mn�	PF�it�9ؽ��$|�-��72�]���-����v^g@-�8Ӵ�M.F�9�<��i�:.��q�=�E��S4��O���zr~,~��M�������-�_��͓bH��g��kG�E #�Y������I����`,h�`�䁨�z#P3�g�����/r������0s#�	yiı������`���2t%r���L����E?��e�*_�@;jc�zf���'�^I4r3�Hq��%��!����14U���z�~E���t
@�H�RWs��QD��49�2S'ze����L�뀖�Hg�7�����-�_�|
��=�l�+-qNj����ك.��׷��+!7���L�M'�M�<�Y�}Z�G�:�J��'U��M4����D�9�S�[���J�X����EV����G�� Z �������8։xt�-Y�޳�g��$K��ö���o��n�zd�݇G
�~�s�Z�胮C:E� �2,�����/��=��|.:���vAh���#)g��$ �A$�֍�%�/��� fl7;�q"Z�x"�A�79.^|Fu�ϊ�@kpC����l⧆���'�4-�o����m��� �?��.���b�z�]]�3�����!�yB�B��!ѹ"@ߚo��9�.�ҹ.�b���罿QO
Hj}�_�����@F+7��9�����#��~ċ����\/�����o�<u���z��8�>��G�=� Q/�E�Y���%_����̉�	�;I��֒O��<8��z�Z�	$#�n=��^�� &z�K� ��u��w�T��l�:����R�W�v+@�9���}:�����f����: B? �-H(�����? ��r`��$������_AP�Q�zX�� 4�"u ���: B@��)1k-4B4��y�G`�/\' 2�>��	0�	
�s$�����5����"�����N��Y��f�RO@��"�����@a�^a\���ϳ��H���Z
,)��~ V���2oAB��    �18�0�B{w`�3	�A����k��;`�L����{�,��ـ
 EK��vݰ���7F"Sڃwp�����,l�Zr�.'^~߅�{p����<��=��-��	l��=����@z=�/[Pˆ���+�S��k!�#(�PgX
+�G8.6 "��@eq�l 7 D�bP�������^�� �X���@:�Z��[�"���pO��-�c7>;0F�kϿ��-hi}4/�k^��}��g<}�"���y =�C�z���� /�V�p����2�H!=���Q��"�e��O��^^�(�D�{,��<ZAO��ʙ�K��6(�4��\�Dj�%ƭ����d�����O������5�.o�C� g�����s(��ןC&���S������ $�8&�tw�s������`��<�9Or��ُ[y<��v����=��n����c9�=����r���`�W�q�U������?���X��e||�o��iwj ���!��aڱ7ty	��.I˸�\^���}��� ��'��k�1���F�6�q����r}��� t}#W�}�:~�# ��Y%o:�|�.��3�u�?�.���'εD�P:3l����s}����s����O�J�6wJ��?�y|v�ߝ#;��������Wy��Ϗ���v«�㥝�����~����/�8�#���*��3$H�_Kk�u�=Ʌf�߅<X�y�_�����O|���/]gkGO�;�Vz#�h�����R�-���o��H p� {�^���v^_�g�����t��[��=ojrB��^OaO��>o>�.~������yù�}��ݏ����!���n�,��HD�w�c�*�$�?�η�uciM��m�g�_��}Y
{�Sr;�<�b��r���\�8���0�2:�!�&G����	���f����7������ ���z>�?�w7 _�b��4��~;�G������x���x��:�'7x�/~���O������]:�߿����ww48��^x5�|=�n��x �0�9�"-��p�Lk����� .b�U6Q���5?��pޫ1A���G�?��@v��-Y�,���|48����(N#��D]� ��� ��q���Adj�]�y+pD�F�ߵ� 6� ����S5�����u_W�c�L	Z��lP�ty@[�pg���ɽ�T>ߑς�H?p�e�g�}�d��Ѝ ��Ckl�4��B�U|�|�Ʊ ���ye�5���+͗����e<�
�|��� �+��'��n0��� ���� � *"�5����V����I� <>ٺ��Q7#@��&<��\�I&���ig�_�<�ҹY�~������$TԼ� 2N :�<�.�O�6��J#ڰ�6:�ț����U�ГG��5Z�B��{�/5l'�� ��~���S��/K/�J1(``�>'�� ��h��[�.�4����Z��Բ.�<�&@���xO���BG��l�/~}i��-��H�Iɩ�cO��Ӂ#7�V� ��r48���G�t48���Gっ���x�h<p48���Gっ���x�h<p4����h<p48���Gっ���x�h<���ץ~�o6xϝ.�On<<����T���t4���_M���5��O�����UĴJ�o�����x��5� QLg���@�)�q�^
K~���z��i<0�8�B�ǿ�< ��n<�����Gっ���x�h<p48��oGみ:���x�z�ϟE�E���}���'����m���!?″�����@jx ��_�U?�#@v_/���D�} �π�'��潏s�k����� ��[`���"X�d>� D��@٧�����m�?�ĭ����W;�;ic�l�홯��? ��#�������^��y�y�?�9����Z����� �/4����;� 6��&�qg/|����oCn����A�*�,�z����l�f!�4�Z{y���o�!����������@�ߘ߽�fg�Uy{��G��O���Ó�ݍۓ�{��;����K9z����]���~!g���sc��o��o����_�I���u��ˏ`�����.q�H��~��b�����G�g~�_�G��5?����
�V|Ώ��u>j`i��t-qI�[Lnt����l��wo?��r�x[�x�a�J�>��~p����w�+�����\Y��O9W_��se~}�������\��r�o6Α��o4~y����e� I�"���秡�A�d\8oE)�M$@��϶�>#��&�s��qI�������}�����%�k(<G^~����y�?���� ?����ǹ��(��؟�u������̬�m�?���u��OJ���0���M��h�'�	c�:�Q2E��L�fvV�����h�g5Hf���G4H�"~���u���6�?����_���'��ߣa%�u��A�/�����i���I���军{y0:�������O4���:_m���$��@9�̌+9��8�g�
B��Y2z���9R��޳>��K?��l�G\��������9���~��A�]_��_jo��@��r���R���c�R����V;�[~����_�����o��Z�4w=Yr��O\�x�=S神! �m�F��3!�%�ϥ_����/���B��o�Z 
y�8����:������w�44�3��]�ޏ���u�w#N� ~�/�m�}Կ�Y~�M�#��~�|��f���B�����os��o�E���	���I�:�6��o��S7�Z��o��W�_�k�8/�.�e�����+���VV\y���y�������?9���޾y�?Fo�����G\����3�<����N>���|��B�
Ƶ���w��N�O�����˙������r�]~������Ѝݱ]����*���s~գ���^_�A�����'9�V;j���<XN���P|�x�#_���=�^���+ɶ>%��Q��� ���[����<�^���=�����������ː;[ ����q�>xWO�o ����_���v\�u�}��v_�p���z�~��������u�u�|���{���>����v�Ώ��%�6�}�jݽ�'����=���OpW�\�.���� ��s�������p���m��U�/����� �������G<Gxn�y}*K\5�X����y��y���>7m>�f_l>������~�s��hxr^�����:7Sڞ���W����H=;�Ŏ:!x�����3�����l��Os�{��PS��|bq�����X�<&zw�4�lh�i^#���Ѽ�L#�[���=.�� ���A���� UO;�D�?�sݸȽ�����{�x��9�ɿ�?9/�k�i4>�s����9"��"c��� ��=���m�ۇ�����5��#�/^�r���K���>��j5����^�˕���_7������PWJ|�zX�G� � ���Z��L�z���Ծ�����}�i���g?�~#�:R4�TT�g>����>,���~��-��ń�����UH���ㆾy�'5b����s���?�X@|Q�����yt�i��1����^�Z�u�速:��=��?��V�uK�kp*3-@ft�.����.V�';�Y�|~��NR;�vq
	�<柆
4~����������y*��iH�Fj��E���ﴱkV8 �r�@����M���\�a=���H��+Rh�DN��4'�6=>O4��5��,�\F�,2h��`}��Y�]~�'�-�4~H�FC�%O�F���j�Pe[7���_�2���a���a�׸���Ԓy?�6�X�m=g/�a]���~���N)ou��>��hz��Ϝǲw�#~.d(|�L��o��!�9����_�߱�5q����'�î��m,r��S�    �[^�.yE����ȁF�i̫w���#�_rA�j�Xa]up��c/|�77�Ui�%~�~�~!��K�?~
�]/yx�~���y��m�^�(�Ze/���ћ�'Bm[?�|��^�~��׹]�z��ϛ�yn��z ʹcX_4�hZ�/:�n��V�2�դ���y�]�s+�*^P�}���{Y]}_�w��c�yrM�!��mҘ���F���|����Z4�Í�unXJ#65���T�D�<�1\_i/ڥ��(�����f��Fk�ObvM�S�uv�;����<��{c��q���dk{4�M2�3�1��T7F#���AP�hP��T-�u��K7߽H夁��ˇA����7kc��Y�Ii�v=�:Εz�z?���}fr�M�ӓ\���@#35�=ہ!��`G�L{�Q�з�������ٻqoӻѝf|ֹ?Dd��g�g��ϼn�=7\\�E�������9g�����P5��w�!������&��t���&��tv=�M��hO�V�oپX���ͭ43��'5�+W�L��ωu~�iRH�jT����G.+?�¹Q���0=|��u�V��@p�+�'eX�^�4�WC9�L�n��K롎ͽ��h�J�L]t�cA#8��O�TF�4�+4t:�S����O���H\[�5Z'Z�!W�S� �1�n��&m��%Kh�v��L=��'�10�u�L�Eϳ�<<e��$j8�@�>j�Z�w*��,'��/䅴5D�a-��ۆeC^RG�z,�[}w����O�Iֱ2�9Y~7�O}vZ��95&E��\9=�g�a���78�|�l�VE.�i� ^q���͚����a��X�C���;�ާU#:�A��5���� <K��@Wu����wO>D�6�4�v���)2�}�
�jjt�!�/��h��;�ߢ��x�FύE�����4�n$J�h�>rN��pܠ[W]}��s�4iк?���3��zI�_���)UC�:�|�z�������dK]Tm���f��J�)��F�#��ki���{48��7�ϙV��?7Q�
�����vO�[�^Y'g��{�X4� ����0{ލ��q6�12��{z��׃�^i�ͨ�m�7v�`u�]��hB��$ƍ-K�=��J�
��w
r-�Y�+7�}� ����������߁��U��7n@.�C�k�_�7����J�4p����q+�[��{Q�����'70u�f�;��2]�G�(���)�_ġi�������o�x��;����>'}�v�Wˈh(~���F2z�-��y�`�s���	��SP���d4X?�$�1hk.��g��O5�Ɖn���i�?������-���t��<�V�2D���'�|��G�l�m���E�F���F�M�SC����b����4�yyr��������O�l������}����;�w���[��D��IsB����B�+G8}d�7쥟pZI��ky�:��3�OG�n�<��N�ٳ���yS�5�>)4H�|�����\ئY�'����I���F�U/��H}�4�^v�ƿ��Kϐ�C�a�K�LC_�i0}Q[�u�7�A��c�@®�^��Ɉ\��3~+rc�k���\�#�?��tߋ�����o��yJ#Y�ÙƊ��c���J�D�_�����R~����uU���\��&��LW�,�}�}*?.��ԕfridHgX�7�菺�o�>#�s��A�k�o����s4`�5����(T��b͌�c?^���}*;��:չq������d�L�bڇ�y$/�{ppU���^������4i>9GF�G��s�^$ˈ>2D����)�%̖��[+Ѱ�Kn�[uؾï�� |i�`��������������'�ō�5/��{��窧��P4����Oz�)�b�����[9��g3��&�O�-�������^�s��qCou�������#��j]'���ŏ��~·=�}�Ip�J��ó�[�/�g#�L����h8�3ޣ�3쇫�K��6��)��|�������NA�x��"�V���?�k��FԅF����|�>�6���Μ'�'��b�x/B�jƼ�I�eA����7Nԝd�/|�4~���;�ɕ,�����~�'if$k�������hT��}���>F'����q3�/ݕ������y��Ƈ���]�k=G��~���a�N�]���w�Z��[;�XN�V��I�?v��w(�L�x����k�k$���ȓ��t�{ӛ�Z��cü�ï�����{�������>r!���P�O�2��^m�<�kp]�����<Yoؿ9~�����t�����%��L�sOe)|P�����BsK�s��c������CIh�׎����:Oɇ�b_�jo���Y8���[�V8x���/��y�>���t��ؿ ����?����Q%�R�Ó�?��;[�DDvj%�5>����\�=z��yU���Y4�U�:� l��c�}Y�'�o#�<�~S�����yj�ɛ�ǟ�#c_t^_zp}�a�_�g���|u�-��ߠy 4����o�?�]?�'|z~��z���h�������| �W�ʳ2>����}J1~������נ�B|�����|<��v�Ϸ?�|?b��#Z���+��?�p�i)�(���}�����\_u1���!����?�.�c}v�o˦�6��L>!��!~�8�'�d����{u�I��R��ϑ>�����|�~;.��k�Wo>�ٸ��Fꦶ�}vn�}KkoZ������+�(}>�_����R�t�����Dr~�{�'��r^F��#߉}�����h���Q�H�+�g5������[쫮'G|�|s��}�z�ȏ4��O�O:�V5yi�����׉�[�W�����%?��9Qq0��^���'�#_�%�-��.?��yvi���M�����5���ڊ���I1���� ����ä�ߣ3P�_�)�cudB��a��&ޘ�g"�p���������������w�����{i| ����,�Oz�����' J��q���1N�i=|��|�����<�@]��xTa;v~"�B�H^|~��j���sA/��n��t����w�O���c�V�uR�W��ʯ3��c�[�ʋ���~j�ߩ�!�)���\�\�)\���Z����z�����{T,������+P�D�߳Ϗ�{��b�t�+����bx��\�U�F~�bE���ij�hvd'�S�~�9?�������CW2�!ߟ�S����*���Ə{=s�o����Z�&��8����f������忢.����O�Q�
� ���^�A�z�>�<�T�{(�$//C��>E^{��'�VU'�ιO�������3�x�?�_���a/;�c�S�m�<Ԗ>X����{�7�Y5�}�Û�����Iz1f���ti�C3���M�y��i�=/���FZ���<�>��C��k)�a������z�hz���+�sÈg�̞/�%9?d�7���ݑ��A�y:ǻ\�&u��晦��z$.9P�j���uO��$.k.3瀟��o�:�z���\J��U��[�_ʙ�5����|��C�2+��9�s�E��t�W<��o���MD�������I����sTwy�|ОO~���n��Ξ�I��1a�2����	���N��cYkn���q����4�{��
uX��*Ϩ�Ay+�8\�R�gp\H>�x�b���-%�O]ui��z�9�5ެ��ߢ�C:�����r�nwd]� =��Iy$�v�������a|�������.�M{��I���\��Ъ�g���e}�<���7[�8Qu~l�|���?q�&b6ֳ�G���k5���/iV��d���Ĳ�U��я7O��i��N7�:��uCK�M�Z��z�D�G_ԢG��C�\���k�X�l�Կ�/�����#8s}�?��Y�[�y���xĭq�Q���ֽ�sQ�/�Z��8d�O�a�����;l�g+ݱtKA���ʵe��:S��q�:?�˸�/��o����'��y�*�a��]�o�s����t�[�}���    d���i
�S������<����A����O��Ƭw����/z2������+�.�(_�Ý�/E���7+�޹(t%��6�����O��{���?-��#�w���}k���=4�7���h�����V�M۴�nA�is<~���4_��K��ߚ���������?��t��?���������y������~�����L��/}]��E����3�rBpr��'�����-�U��Xt��Gҏ�~�B�Cl������@(�?^�"t��������p]G��?��mЧ��:�MǼ�5���!mR��`)T�@�jP����]�w�����	�F&(r���>��xr�T��������)�Z��֠����� ņ�;7ڞp>,�?��R�
@f�u�:�M�W4���[�Һ|���chk�7�i���ub�[
ʇ�6 �K}����ܺQ�q�6��Pf-1Fnh�-�x�n�Y5���@������|��I��ci�u�V -��	n~_��V9�U#x��������<^�M.���U���)�[�
ne��u�������o^_���a`�އ��sX����&�V��
��n�C�٥�V���� 	��z� �GT�����y�9K#�j���|�|� ���A.!`O&'��!�/$�< �p�8������C�r;THg�'���ro4�4K�
"�'�U���8(-�� ��V?�w���H�:�C[�y�;$fT�q�N��� ���1���}�0���D�Iu��7��]�����(�I�[P��~>S�gr����z_ � �� l�� �V?S���"���0p�A�91s��a\8-�GS����|��[���TpԹ��X��+�r]�ػ�ÿy���b<'O'��Ji`ټ�w���&u_�2��#�ڀ��A5[�q���vح] ��뾧g٭ �ͼ}��2�̍Feu@���WB�s�:����9�h�h�d^�����\��轑$ʫy�}�5���O���&P��WXg :���|���hH�Mhm�Y�=��p��+��y������?��@�/��� ��/r���y�9�N�3���NP���� 4��T?��^�}�s~�\��m��Ka~W����SM��Y�˼?�b��4�:�.���%1����Ͽw��}_ym_q�3���A�5���� ���� ���_�5�������E�Y] n9Hx�q�v�*^�������pt=��g���_i�Y��������?�^�Y�E{�#o��5(��P���~�s^�+t��(P��Q�G/�ㅏ�U�m؍��^��[f��&V���#���|@��_�ꁉ^߳�=l�#���B&^��q>ispΗ80�'y��č���ֺ�r�Ktw����k\P�h>9������H�3�<��<��M�WE>�������p��]�.i���Q4���2�������}�^�u��Y�J�>���8������ǟ�W�W���S���~h_�<�W������]��v�'�ɡ����<��W���F�$FQ�x���OHE���n�cB �Rp=�v��]/>ȫ���*�����_� �K�jR����?� ���� 8�p����}5�����q>�����`��ú��5]Ի����>h�:q�7�4���T'H�=�4��q@���h윽������:h�u.����_�݃��_�h����~����@��i_R�t�����AÛ��j���>h��ԣ����򃆻���twv��=��=�㶾�{~�Ǧ�>gw� t�	p���ޫ�>�rys����ˏ�#4��7K�������������m]�>/�=��7/�>���g�R�U��~4/us ��9|�������T��y�%�^^j��=/���R�o^�K�X����d_�K��9/T`��qР�L�q��c�P��z������B_,?U
y�P���%���]/�w��`7�o���Xq�Ώ�{������uIV���ۜ�����6Λ�G��y�>�Ѽ�%��Úwc���6����6/�m�'�>?o��
��6�+o�?�7�]��߾���������_�]��|IS����<�>~X�Yu�E��t��W�)����W��W�����?\Wv��]�}��~����z t8 �3z����r��
ƵY��7��O�Oɻl���˙�����w��.��>�����K?ñ�W�������������k}No�5�!x������c�Y?������B���}�1��]G��+�˽�7y?��1�����&��&��V���ѯ�p�S&�[�p^�׾����_� '�N�Q����+�����S�ޯ����[����q���N�����]��]v�˞w��._�~�l�����G�����L޼5ϙ⮜�������>��47}+?�7/>b�\�x?�+z��~��������~�~��K�S����� �v�9�:寮���s���_c����N�?�K���}�)v���y�����s��>�＝}����������wv���g�y��v�o��͝���v�Ч���F���9�p\V���}�s~�nH�9��������뇮����}����߿t>���ߜ�xs�g����ϻ����Zg?�ߟm��>���9��΋�g�eI�8o��?�l�=��_9��������̋�����8����~������Ӣ�Y���J���>������[�����̼C�{�s�X>&�?����΅� wrsNꏝ���s���]����b�}]?d�7z��]��s���:/���ٚm��<��~�\�g�W~�2��=���q����W�����+�ewZ�9�xb��i�<]�9~v_�yQ��K���^�?�I��=������å�����]��m�z|���@�)��6�{�wlc��¾��8�ܶ��Ѽ��<q���y���C1�{̾���|�z����+=�vܟ��>#���%n���@>����y|;��o��M��i�O=��,��_�s�ӵ�y֫�v����Ï����:�����u���{�5�����Y����~���������������S���{/q]�CZ�˴ا�q�����<��y�k�>��닝�\���i莏?W�?��W~���j���;��<4Γ�oZ���<�k;�������q>������>�����X��_�2�c���~�����?�r���~������>���yqY�&��q3�j���뾞���}\����N���Ya����:���7����ݴ�;ts�<��������o�+���ZKҤo�}�{�?�3{O��7������R�]���i׳n�D}N��{ܓ�=�Ǎ�r���@O)�9���90�T��~�c73�qa����&;�����T\�����s�����<��:q����W��r�ҾΗ������:��,�SY������>���f�$���̕k�����>�ߗ�}F~F�?����f�ƾ�^A|o{����k�g��~O|Vr�y����a����yw�Μ�ߗ�y>\��,�+�}����t������a��q���'��\����O�E��������+�����W��s���a�sW-��9R�������v���<Z����W������3��Kj�C)2��<�d_�y=���������x|�9���6y���|�Z�z�'���vk�����c�x�����{���=�"~Ҙ�����+;.6��q��q�S�1��x#�S��9��xd�N~����u�w��&����ͫj~��z��z��|�w��t�~����+���;��7�0�?��t��}kŜ��������}��5��*���3�:�~~
���6����i���}A"���������i��Ψ�6�����+-m�A���u.��u�og�3��y9���k���}v|6��ԯ��W`��|���<WǍW���z4N��g�K|����a�5�}�k/i��:I�oy���\vM~���T�~�u���t���    �m��S�[����`�9����#?u�}��Z�)��s��}�������V�<S�34^��d_4�~x�xR�z?+�輋Io��9)?+�C~��:��S�c�����y�~>D�S�;a?Gǩ%�qTfI����+�q![�pؕ�������������>�v��4����4��	�s��ߥ�f<��8�u�m�O�j><���׋���ڟ[�����h}<��篹�g���}��L󺘭������u������}�gstWׯuF�K�D~YӇ�9o��SY���b{�5�/5���N��}��.�/���u�C%�k��v�5�<n�C��h��~������`�8�����6'~�k7כ{۵y����1l����B��������(�2���R�}�E���t�?��������{��������_t^���u�����ϐu4����qy���<�E�"��&���i~�rK4��G��(�I����yT��������Q�/�1����N�y2�o�y����sA�S�Q�}.���5��n������|�j��'2뉸�����k�����+�4���U�E۫֕�e�vT�h�U]��;!d���@X�*�d�Ϻ�g����O~��{��-���������ewUϞ�S��>���yK�t��G�h���q>~�����ѧ>�d|��B�j�����2S�\⣢sj���+S3`�{�۬}?\v`��9v������>:�5�MN�'T<��-�܅1٧Q���99	?�:U�ߖ=<���-V��n��wɾin��D"a�$�R�^����/w��xa��tt<L�'���q���y�i��s�u'�A��4���̪�yfg�����+�d6�{�͑��1�[h^y��i�i��>o����yɫun�r�:b�B̬8�|���_u#��C�O��ro/��p!�C��M�����7&����]�܉�bw�o����q�GT�좃���e�����O0������e�*��=��z�Y=�;�}n�|Y����O��$�;Q��_d�F��y�3��xJÞ���'ԸE3�w��:�sIq�1t&Z�o�eȎ�{u?���t��=�5TZ_�)�6�?�r�U�(�㙁�e�(�r G�_��-j,��}D��*wԫFU�M�F�T������9ҰNg(Nl��b���u'���kV��/gw�z�������Y�S�K^Y���?�˕j�z]__�W�/'R����PWoMCn�v'���B��{��g�(}WESb� �74�q���q=�x=��atu��f����?вO�+P=_�/���P\��g���+�����]l/��������?Ea�|�`��<�Y��"O/;�G�X���>�����2������g�hȨ���p�����~�����jW�r+KD<;z|e�|�|�sp���k���q��>��Qy��g�q��O���5�d��zӸ���p4�|L?�l��G�t$n9��վ�<`?���D�e�<�}|���߅Y����]�z�^yky$�Z��>y}��E~9]l�����/���.~��e�x4��;~Q�j�W���f�=�"�iз�5�x�<����=^��?���q���@��<G�^���݄�=��������gX��Աۘq�@��-���a�/����-�ߺ
���<.��
O���0�{hc"r]��9�UJ�������,�S�z6�{Ǝ�ʂ��6�G6ڭ�7iW�g�Tƨ3h�+=�?�~��i�7�͟�8�!�)��R��#˪(��Ժc&�!��nd���cd���o��E~ۄ�3ɿ�FNK�R�F+L}�֝)O �a�7�	��P�t /-?��0+R���u��ʜ�[���X�E*y�O�t]��Q�ǫ��)��U�ߩ�z�G�{jk_?��d���%��i �ϛ�o�[��p�����)Vӎ�م	����:U쪺q�z�9�k��б���X�7iM�_>���|>�,��\4��eޤ#�;G��c�M;�C���0��s����ʷ��׹�3�t��	h��Cm�i�ʎ����y�ٞe�����g+6�ܘm̭��V���qޟ����:�/�k��敏{7�_UK��D�F��Z��4��<>�`f��u�N��y�9�9DO�Ya�i�P�Cg�Y��[�S�{$��xa�R�R�_�>�����h篼��y`_�~���?�ikV�����^e����1��������t��{��i��y��?i_Q���~��q^�<��(;����s�b�L�����T	���٠y��7x��D21�z��߲�9�'��ղ����ӌ|���B���C����"	��<���_�\����i��/g��'}��������&����?*���cӽ�Ob=k������գ|�>o���~��ȿ���ڿ��l�{^G��T�\��w�yGǿ��}��uw=~�<���ғbw���8�c��P��D.���a埑'����7[���,�=W���G�����^+�������F�?�o4�S�ʛ�7[��]"p������[&_������*���o���|�d��`)Tu����N�/�[Z?��d��'�<J���ޯ��s�ݣ�y�Z<�E�������3���y���¿��纏A�6y�k��o̟�z#]��Z��j{>�5~MF��So|ʎ����_ƿv��}K�C�}�~�jŨ���wo�_C^�,;]�>�9ͯ�v������U��m�dA$�Pv���bLٟٗ#���>���������*Vmag���j�֞-O]<&�;m������o��'O�������t==�;�W�n�fs�:���o���קu���>u��c!Ѝ�����;��Oc~���W��;�R�/�����W$%�69�_vY}*Sv����A{�����O|(HS��ײ����u]����(�c}��O���9��z|���s�����)�?#������=�|/�Q���i��˞��-E\��f�WD@|6��3����<�uJ~�Na?#�P\��/r|�����y���7��OTW\���寒[e%n����|�~n�ge���Q~g�?��g���#i����������Z.�w��y
���z�/�#}�_��?Q�@�Ӽ�K�_.�{�܆�J1i&����(�����y�uY��N�G��<��O���:�-\����:^�ύ�,�gkR��Z��o9os�����z�n55��x���W�2��3�\��qEg#ד7?gߟ����/��Hf���u������`_�ʟ�<<ތ��0�M���[t�Ⲗ:�@����HN���8��9nT���CF#���"�rq��+Z��%ys��_j�W*�������!�^a>���9���m����o���jٛ�ߏ>F\��8��%p�~jT�.��E�&��q�>��G�G/a���t�����ʌ��q����*2�:ћ�D���K�<�ߞ���2���W������r�擵|���jb(�*���HG|#���i��4��$�U|�8�y@}��Iu��79����Fi�:'������"�W���=F�D�j�������}c?��$
�����uB��7Cހ��N����v����T�#�hd?��;�$�ȹc_� �$$]�2�{��/�^�^�Y�+�?��������hܜrVf����?U���~�9�����8Q#����߰����
}	y�	]�O���������F��4qM�SH�'�;Xד�8Q�k���<�^��D}J׍�	���+��u�!�ބ�'�*F�k��c�K=�Gz���/9s�v������_�.�)^g~e�[٦#�X�h�4y�z?�)�T���u��-Z�.R)�<�ǧ0��o�?*k99>����T���2�f�τ_�ϒU�v��'��"���u���_ӑ��j����<�S�E�9ӓ�N�{:7��̾������<B'S����^��֓�,�9�A���oi�=z�u����rtjE�9�>�Q�����(�R�sp?����T%���"�{}>�C���;�б\r䗒�c���F�q�T�Gt�]tc���q���w�.Z�����^�wg�Ǌgp���})�-��c��c���k�����׫�)9�N    ���ע�z�����[;���xa�����DwV_����E��F�}�/t�|��ҏ�m�ʖ>�n՟�_:Ϛ�_[t���P/�n#��C��k�#��~2U}h=/
N��ν�<�O�:���ȵ>{���ߡ�}���V�c��C��w�I��:�|:��9ƿ���7�f���9��+�ӓϧ�.�~��K?�u|��;����]�Vۻ��{^����랬��&H���盓�ε�~u��^B/�,:z�u����;Q/q��b�g�1�?��~pߖ~��@o'�1*r̕+�2ɈbX�ϫ.�}�����XO����[K_��q}w����ҷ�-��C3�{��������a�g�����شM;h��������?���Nί��[s8|�o������������ǿ����_�8O�����/���?��|!i�����BE&��W
	CD��zb0lP2�����u$�+/��hR��VC�`����4��5�*D� �@7�F��7�	��M���{A��6������ۆ���ғJjǥ�b5T6�W!�����l�
�ik�L�L�u*���ή�Z��n��Xiv�[Md��Bc#·�q��-���Ć�T�1�������z=6W����Z{#Pl��� ��BX�"���,��]�0�Oa�˪1���\5 ȡ[�1�6���H
�4��4�#VhC�z3���V��o���&����|(Pg����|h���V��ׯ"��+�b,�d�;��t�� ���ϣ����qi��^6�Oy�PЅu�>l,������u��y}��O"e����>쥞C�o �`|�
��/�v>���l4� �|0����#���ul0ε!���,�j���|j�vJ�ة���ڟk���}���BxH���+��r��K��\ARr����%�h�C�R	!�7���6�Z'J�5N��0q
px���u��~^oA�Z9Ѐ9�y�r`��#]��;
�q���M{uPh���\n�^T;��>���F�q�= C�s��o���@~��<z�,��v�i�՟[�J|j�l���!D萿f6kcc�P������	�qJ���S��+8|b�Wk�%�e}b�6 ��뾯h�}:Z�A��L�y_�n;� nj�qm���ucH^	�[��豮�ꈢ��K�!�S�z�NI�
��q^ �
������
����gX�h=���~����6���>�
��o��GֵUr�9n�h���|�L[�.W�d��֓�s�����FIV�@�}Xz�1+-�WXg����,��; �\A9�1&�i �Hᧁ�+Ϫ�������WU� ��4�8��n �O��w��G �W�qa߀����� �&�`d��~����A"+P�9�2^J� ��@����q|V������K�@��3���'�y}[MO��=P�����:��3��Ѹ�x�)��T�� C� +;1<=�w�	r#`���#��P�[�L��EK��~�#�����AA5�t����g�_�KCuWA�	�N��G �a�3������ۀ����/*��ɯ"A��� �Р���Ѧ?�|@	~�t$��?�舻 �A�nn���p��*p����yN���� ��p���|nCA��+�?�B�:��t�|T�+�<\ĉ��/�@�e�\�(�1��Eބ_��sK��#,�v^@��r��&
8�71�ܧ����}cj��̇�pC�ۍ�f�� 0Bnc^n?�q\q�X�_��*Ϸ�����$
��Ŧ��-ľxQ����}d7&$�u5������7/�� ��z�q1 @'��.��@"	pøm F��Si>�Ѐ�}V�){ԍ[���+�_�a��xn��-�� �_�V�߇84☕N�l��<T�i(c��R�!%���<�q��� QE�?h$ߤ���\������l���	��2�?��(��B�P����}�*�����`�N`�Zg�џ
��!w��d�]s>��{�� ���G�d�Ȉ f	P�������Y{�) v����0�h y�����)�K�~ �(bN�A��������.������G*@��3�:̳�#���o��;��5|� �� ������'��@�rX��3��ׇ����z꺽�;0mm]��9#��n��Q%�CX��i�W�X���~�y�>ʎ;O���E���:~$T���-p䙐���.?�:����6h/�_� :������}VΕm$E������SBuZ��h#�7Bܶo-8�qD�Dr�&zͫ�w���������z��� M��[�F���4Z���C jᗢn�2�s�@�"�G����Eǃ4�'�F4*͟L�n�Qm�̤��|܁F8�[����j@lNKc���	�AO�"#�M�5�۟E�����4l�6)�0pR�~�f����� 2��	T�@��d�v�CP�Ki
�]�0��=��s$1���XU?;!����'_�Ng����1DY�Q�*5���],�V��ƋF�0�`%�f֑iS��O�LC>q���q���~
�����ނy	�kvҨ��|�7��'D�<G�҃�h��f ���W%c4s@��S$������C�
�)7�|��o�i�R�p�8l�z	Z�o�a�uǏj�T(+x�T@~s�^�&�������\;!z>�����:�r�@7\^j#�CTK��'�+%�6��. -tl_�)\B�pm���y��@G�P��7 ��^A��}0��Řb7 ���h@�A�@>��% >) 0�[�4DE��:������G$�݀�i�@`�<?�,m���f��0�����4p���!��$���t���
 ��G !]/�}ݵ��kH�aԀkf�B8#�O�zq^�監�l�|���	 �k0��6v뙌u�H����m�z�w���&��=m�4�,�Z /�D�n]>��y� ��-��b����u�7� FS�q�����Իi δ��������8#xKa���s��?5x�Hy�&D:�j[h�_�v�x���xN ���>j@V�L��4�G����$?!<h�h>f֯��G��/
�����y�=�2��K�I��!k`� ��=hy�%��np�p�O��צ)���x��g���^�-�y6� ^����Y`, G�����B�� ���zz�q�҃�4@N}F)��Bd�� K���
 �S_��{�����q�C�	]�. ��g�A؟D��p&|#��H#�hB������K�Fq@?|���S�sV��!�kx�gp3p`�{tTs` �q���O�0?��?���T>�@��:%/M�~4�������E�/=�ɍf=q^����C�H9�<��ǩ}3� T�A젃�kOq~�X��v�4����q@iL#;7����*�(٫�Yד���;l�_�������'K�c:�_5o� '�"X�����o���zhwC�}��aJ�| '��!��l!�H_�!���� 	p`�A?�_�xK{�g���1 � ��5y�4�:��<�݆A��W����h$�`M5B@R���|=q�@Nj���'�0H�y�f}�A��@��yv��C^�<!�e� b� �x��?��|�s��u��������w :a��e "/0�O5[ȱ��s���
������3�A�)��| �>�|���$i�J�?�u@��n @�ʊ}ʳ�M��ł���$�v���ý�`�5:��׭8��҅&��p��)�\7�N �(Ϣk�_Y�#����z���)@À>m��(И��w��:�`��G �G�ǳ������ⓣ��@I`DkpV@T�}P�}�S�P�n 1�΅c>
�a~O��vX ��[ U櫸�O0A.�@g ���z�=��n�+d �6>d���l@NC    ^dt�� ���рZ��`���� ���d��� t�/tJ�(/ߍ���bO��{���/+�� ,���_[��=r��s��`������4�ի ^ :(��1���\PD�`�,4�G�� � ���t�����G`�S�u�n�x~U@�����WX"�3q}ݿhȿ���g6�M��z}r�'k�﫭Ah�G)���� ��� 6]����T�`PZ�g���s�#`S�D��g����O_Q{r������Aƾ$ �_�_  :q���<���g����y��S �� �'��Ȝ�W�Z=�j_G�O�W��+���mZ���#��j�� g ���q0�uy݀�D�H�� �y�z
����`r�����Ļ��+ ���%`N����q��ٚ��se�#��w���&/C޵�=�
���l�g���sXM��=?e�^���/����z���8>=���7L =��R��@k�e0��:�<�"��ߡ�v�8|Ѿ���IǇ�1�':E���@���x��\K�u�D�6J��I�:�OX������$�G|�@� `-�߁U>���N@�QLAU�x����*���0>�<mq��@���wvl�aL��7�l,������i��VF>�``�|;~��R�.#9��a]^��.����*�{s~�y'y¿�ء ��s�A5�s�Y�z�2e9�����/�������둢�=YG`�:%��u]es���߼�e���u��Ѕ� ��8D�2>|@y�<D���#�}��H�9җ�?�-��7>H" �MW�_e��I�}�3Yp�5�4��������т��l��}ݪ�s�  i^��t �r���r��@�ʗ j+�{ѭʓy�"eC�y���<����Z?�zx���� Hy��B/y �g�ׇ�g�H�V]_����G��uq�Kk{	6�Iި1�ڊsȯM� $T�O�^4|>�B�/;6�Kqc'n'�����Ч��[Z��x�%�"���}!>��:8�Y򛵯r8����|���5���9����l%��5Uk��z�b�>��M��OT��^�@Eu ����d�sA%r���:S��˒�Z�#n;��8C~��H��	���������Cq���@|��*�+��JR\<���,y�7�'|脎p7:Y�j��*O[�܀�6V�8V}�A�> � "t�����= #��g�!e0霟t�}@� �'�gs��N��H3X�o���z�t���e��{~��X�����-O�,��m����.n *��߲�7b�X~�>�S'�Y�槨s� �V����*P���JG��w���%_ZuſC����nH�8�O��Tuס�Ӣ?�uƿ�eފu~o��zS����|>��8(6�:���� �gom���}����S{6�}�+�P����k�|�:z�׬�}���;�z���@WO����y����W<�{��V��=��,K���8�L�aK�o)���8�����͛�8�B���8�y�]�}����	���+�C8Ҿή�?8t�ޟe�0�!�����C�8��v��ځC<p輜X޻AH����9/�P����D�w\��-p���w@�<T*@�+���� �8"����hHNw����i�]�\���ulAF+���}����'���}ѐ�O&�@�À���_7N(P�^�/_Pt��ǀ�� ����
n������xm�~ �n�-ן�F��-�;3p�
ps�l + ���`
7V����p���h��":\�;��q��5�g��@;7����������?��� ��SN�D�-�#/`��f>!�	��{`��yv��_����+pf����-����m�?��Wp��LBR�-��-�.�@=����(�g����g�FCz\�S��>�}O��	 ��s�/���=�<ZO�5'��(�Fǈ'������E^�<UwX� � �'O�^�(�,@�G ٝ�g��'5�x���WX��q[̟�ߖ5�g����������X~~�?|�O� ���G�>��>.��O�̿�}v��4��:YL��D>����	���n�@�`U�����R� 3�[2����qJ'�q�Koa#�ʲ}v�����>��@���Ł>'�O��E� !t����J�i!�OT�$�ǩ���@�B#5M��;N*��c�"���*��$��l�MϑF�l'���n}�����X�dL�m#B��,#�F0n�f9��!��j́F���b)�mWT#���^�� ���8�aM?���r�����i��X>��dEN��ݦ���7@wZ2c�#�>�o���
�C�[ޜ�n�#/d_�E ��pZz�	��!�/H�{�H|F�)�C����T���U���=���z�j�8�Sm#�<�݌S?9z�z{����N4��EJ�
o�>4H��?�?�<��nͿ�qZ��Z$�:�X(�H=���	�xP#y��(���g��~� ��dj�#'�_��RU�4ɝ��$�V��z���4gP�}�	p��E��G�)�-��@Vn0�P����u�!��A�Nl%>~+42�N}b��ف>;�g��@��}v���ف>;�g��@��}v���ف>;�g��@��}v���ف>;�g��@��}v����_���_�����O��k�_� ��W�v�@��)��Ӷ�l���>�
u��~��@�O�*����8���!�u�����$���O��>F��ہ>�����ف>;�g��@�?�C��?���+9��@�w?������ {i({�����^��H��
��$�����&n@;���2ݬ?g+e��PH��o\��2+@A�_���ͼa]�2^�d���ip�^����:���6T�@<w�K	p�M \�� �
x��9-~b�+�#��'�6W��D��{�!��v�L�x`��
��lެ 3�Wk����G���ﶠ_ ��_�>6�#�� q"^���,T����<�˲ޯ�
]��!���n�B+P����>��w`�H�< A��5Nh#��^��G��W��h��爛v��o}��?	=����P� �'����@#?7'����u_W
=��r.v����[0�@�1Ј�u��qY�|N��AKk;10�n���y���<	=��C$~�%1�
=��<��v��݃Ɇu��]��\ �g�_�w �az �?+oW?���6@�'�� ��pH����I�!훿8��v��ځC/\����+���Ò �Ԑ������%?}F��<u�6��//yH�.8�x�
`��7nDځC;ph������-w��������5n �K�� ����3����L �����t���!ٓL\Géy՘`���N�V�ZЕ �@�(a���	̈́Đn|x�U�@<x+�'	����C(�1�~3-F���Λ0�� |�XX�g5jӠC>(N6�wQ���vRS�"�*��?/�F��i@>�h��X��I��%2U��n�ʣ^ 't� ʙ,$����'� XHBd"�B,�@����`�7)����e�Y|�|���PC�������z0A��P����:5�|x#��mI*n���ǜ�6nѠ1H��=�-z��Wm��4�̤�v7�B�}�����a�_&��j>�7��h��$_�4�����{pT�������3�D#<��@���x��ե `��?H��)�n}U}�H ��q�3��u4��mc�K��8� XȂ�1;����g��id݁C;ph���8��v��ځC;ph���8��v��ځC;ph���8��v��ځC;ph���8��v��g�_�O��K�C���Я�=��!�C�����P�g��y����f�?h��6���8�    y�]��oa8Ʊai��y�P��p@�u�p(�
�Pn8qoj���w�C����v��ځC;p�y�O�[�?B��k���?����0$*��a�!�O�CP��y_� V�/⚱����������<��=7@���m�B��-�h��t��h|�{_������4�"h�q_�e��f����v��s���C0M��q��F��h|n~���Â���j�c\�������_�@���h@Y�n�@������������$�Z��sZ@
�0ۀh�+A�� F�+H��X��`�c�_���h��|PC��ο<�<`��'��
 �y�m����w�us	= Ü6w��<}�
���s�� ��ݹ�;`�o���o5���]��ے/���:j���?���v����nE>�X����j#�X�+ן�Ϗϻ��i�w���+�(�K'j���w���\A;+?d~#v7���00H�egP~����Lc���j:hA��Yy�`9Z=T$�*@���w��,�Mo�р[�`����
$�:U��un�V6@͇:O6�� T�^�h�$ߖ�4�_�}Ĕ����|_Ȫq�򾈷�r�q7n����AJ�;]��,����xg��(�s�D����ر��y�}�Ḣ�s�;c�X��C͗_����j]�}���Og�]��"�����o�AO@O�-i3�k����?�H�K��V!��f�;���P
 !�G(���x5�P�?�B�}�a�u0��c��:��h�u�}�_�=�*����MD������*����,�^�ڽ��Kk��B��T �aD�7@Cr0�M�̸ ����w��
a���8�����������n�πW�R���v�d�ƹƕ�뙢QcӨ�R싌O4�#���;XF� ��K9�)���@�O���6]�kdsJ�ar���米�"0�F�'�[`^��ʉN+n��,��<��p����:�z��<{�7j|������F[����~>��8n��WF�~���f	�����u����|0������
�i@ �-����H�/ۯ沝v>|�k7כ{�5�o���.!��.n��Ϣ1Gރ�R,��֓]��K"�Hu�w���u������=�݂I�&p"��K���?9f�+}[7���`Rl�w�m��ґ�C��T������D�3��+�>��H��`�BCO� OZo G�y���9��n+�8�v\�Q�<#t~�*��	���~�+�5�h]�*n@��L�E�0�-`�?�Д���d��ږȻK�Yh�#N�Q�0!a���Q�R�Q�ՠ�r�n���'�!@�u�u�C]
 ���!�S���ph ��w��3�����L}4j'7��|~&����P�jT�KF�4!p ��:y��Fe�ڟ�p-Z�ao2�Մ(^��Fc�㈒܈�h~��N�7q���� ?boΪ1
Ɖ���B��7p� ��M��T�hb����P�?�S_���$pn4-4�g�X�YՀ���k��!���[w$�}���qo��F�ܻe����`9<����W;�txo/�( �0�ո0�?�т}�p���[��8�j^$S_3X�u6׻v���0Ѱ�����H�B �0ԤH�+@
�r4�����*����@p�L/@�b��:����RA�����x���<EÖ��y�0G#�
X��4T׆A� Wܰ[*pōk4z@� ��`7����ov��ՆJ�Z�'�n& *p�n��4�RM�\�,)�# 0h����b ��.T�i��ٴ����}}��.��Ic#u�a0��0���3 ��u�Z����mHO����,����Pɷ����v��ɯ��)
��W�ע�.Q��RY5���%�Q�|���4�Ͻh�)w@ �N�S�����s4����Z�.4D�i��������n�g�q4�1N��i��zӸi���ʵ�r���P"��Æ��`t��Ѡ��	��SE�I������y���}�����������X4 ;ٳCP� �f���ЧwC���=��(��a7�n��O������~\�@�	�_C��6�e�%t4Pun60�,@*�G� �&����&��3��3u� �4���W:8LHν'�؏	`Q�N����xL-<cG��k�$Tvc�F7�1"�����DN� LGYO�3q�}�	���YVE��?���U�4����#�� H�AoU�`In�q@LG+O��F�y���' �GQ7�73�( �ʙ���Āʾ�s�x>�8�MB/�|r��x��2��~m`��sr4���;Өs������ ����j{�!��%NH���̣�Bc���4&Ҕ9�\[|��	�~xNj�o�Kf�����K�u#��f�V{NZ�:&�K2��"�U�����p�g�� 0���{��@I5�U���w�G���6�@yp�-��hD/�G��&rϣ�"�u��3����Cq,1@1v�ƍP�՘W����Q Q���m�3C��s� �L�'� n� �k��y���~��?� <�� JZ�E�<:����v����cB�u�a����6����:���!�  R�W���w���?�� ��|p��Wyl��gr�� ��9t �@�Ou�� �=��������t`[� d9��a`�ǁ"44����, S��� �{��4�y������]��3�����)O�� \`Gǿ��}��us�0
���l��t��vנ�u���x<�����@P ������	X�3l��d2��&��6����
��3@�5�/7��֍ȊO&Kn| �~ɲx�qx���%�G��o.�`��A��Hbv�^�)j�.����?����ߝ�}���n�O�m�zr�|a�t���.��$�_H����� �鍆e�?8����� ���Љ4��4�*��G����E��/�_�/.��pb��)�;ZW<m�Sw��;�h��(��u�wv��m%�ֽ �O�`�`����_]�-q����޿��@�3z�3z�>o�����Vq$���G��_F������{��`���1(�J��qA6�8�|Ұ�ϴ�;���>�xM/o��<��_W�u�OTW��isq�������~� �����(��Q~G��U��$�H���>�ž�i"���v�  $C~���P�'�p���] �4>s��I��_ 	(t}=���ܠ��hX_��럞�_������%�lM���5�7�6���3�������@�&` �G�ד�l^���&�}�C  �������|ƌ����������k���b�A��D#{1���8�yoq �'�ɇ��+��(o�+w�`ţ⻎:D��X��O֥#@�!���}B�Zy�9�}� �Ǟ' 3��}">�D\���sj�|�%��%p�~jT�.��>2r���u�H��'P�o=���<�|]���>�ܗ�^2c�S���o����E~.:�����B%r�����H} �Oᗣ�V��?�N�<P�������)`��!Y͢��q�;� �4�v���7����$ldLޖx�����=F�d@����c�9���x �)�c
����	��,0���Z�]?zߩ)�/����y�ݾ$bc9w�}ē䃤�^f�*3��7��:��O��N�
��0nN9+3�w��1�V�O� -���Bu�� ��
�BvQ7N�8�/!�0�k8�]I�Ђ��9�!PP�~2�LV� v&G�u���o��iz�K_
}�������9�����7a�ɷʟ9�2@[�d�/��h��3�h�����Q��֫�)]����� �����������A§h"�G��98���Y<���)�o���Z���6�@�R�ܣ@�\�����	5�vρy ����(P��Չ���,/�    %�"/:E^t��J�-��G�O�����W��Q��>�Eu��xk��������G����� `�~Tv~?��G)�9���q ��ѿʧ�G���'v����b�:�K���#;���R�5?�&��8�o\����B6g_CoxAם�+��>8�� � �i=�w�z-Փ��`w>~ �����[;��G���ѝ�׷iV���5>ō�y�Y� �E۸��~�g��Z��i��L+��:�:��^u�ֹ4�G��ٷ@�ߡ�\�p+�1�(���ORu�+�R��=�1��}􈉃��{}S�����s�{���nlA7֭T�������l}�������?�\�d�=6a�a`��@�����xh�[� 5���֓?����t����� �:ו�h�@���������|�r�-�k��f�6���;w�K÷٠����}����sbԽ��v���5�X���hm��-8�y���2�)h���‡�|�/տ�C��w���C;`h����yL+X����'�����1���?��B؍�����Ou���o���?s�ګ�����W��{�20��b_�<���/�n}9�н��`;��w��o ]��0��=��_��C��+��G}0D��m����C;`�3�	C��w�����< ���8U��1�?��Cs!o������v���C `(Px_G\�#w����!�h`�zv��L4~*�{�A�S�4�"��|"*��Ɗ���(�7%��6O�OI����Y�p�j�}ʪ���c�sz>�0=>��Ȁb!3~�8ѳ��VCw�g�����шgm�OHԼ�ĉfm�9QOt\;҈P�O�'y�c�Z"%��*�O�;�^�q�=RKNP��8=��$��'a��:v�*N#&�P�<���b{Q�(?�����a�ȗ�h���'�����}�̓hl�~�ɒ������ 54s�'B������!tv���ZU�� �i�H>ɑV78�0�����+xQ��������4J�>y� I�Z�G���ϳ�� ^k ��OGc1�'�r�n>XȨVI,/40\|]�448ɮ�#%ïaNMn�@@]�z^����(N��&����:7$�r��Ox>�sB���*�Wu����F�Ѓ���/�4xR8�Z/�\�0��v���C;`h퀡0��v���C;`h퀡0��v���C;`h퀡0��v���C;`h}����C����K�V?�պ�0t����t��wCe~O��yV���C���0��qR��Q��_ :r���� B���q��B�B�0�.`(�0��v���C`A��J�	M>������`����9�* ε1��q���}@���m���q3~췜<��XHXק��Ɖ���N<|?׳��'��-���-q�澕ڿy_�����uw��$�p���v�����~�w 5��� �������>��@�
��h��eY���"!y��+�h#�B� D�~���߃���Fk��X%V�/�k�tY�|� �W��8��爛��6�� �0S�_�9ٻ�|���g{_��_{z}n�`����u���� у������߿���߁C���C��5Ob��p���|�뇇���oj�BR\~~M�?~���X��
[~;�� ���*��n������uq���ݼ���� .Z�#_p�= 8���(�x��	��Qrm��2_��*�n������(���N�1z��͑�OH���#� ��)hd����ĩM4��`@C5ϩ�A�������Z�����g`�'���]���*P���ydX���}������"o¯�ι��B��|;/��S��\�ſ�O�S�߂���15�s��R�����S3\!
�1/���8�����/�vi��[�~j�~���f���-ľxQ����}d7&$�u5������7/���u3_/�!.�;�u	��g I��m0� �J��1�F��7ﳺO٣n܂�(X*�I>�%Nb�a��{��w�G`k6ȕ¨��^�ЈcV����T�}|��d�U�L��f�/�w|�\�CZ�w&�nX�Dި��J����= Hn�V�	�z!J��:�?��(���B�P����}�*�����`�y�W��L��O�����xw=�@��0��,�wݭ�h�(3�?42"�YGԡ�d~��u��s���q�.$ZH�5�%p�뒲2��؀�hP; 0���ȱ��U�7���ni��#�u�����~"��� �>`�C�����E��?	�e��wAQ9,m����C��oF=u�^�-�!����?�
Aj��P�N@�N���
�Mǯ��ȟ<8O���E���:~$T���-p䙐���.?R~P��=So��8�2-�n)=��\:B�!@8c ���BylI9i �|�(!&P����9\�IA�g��S4� �b`���@BG#�ɂf�6��Tˀ%j�,�ԓ��a�����z�����a�`�����������w�W3����>W��o�9R�TCI�d��u�Ʃ֍슧%8�p۩��^R	���y_U��@����f���ȏ���( �6���f��ȕ�n	ﵞz#�U�z��<z>� ��Ht����/�v�a�`�6k,���lyd�Nn��!�`�Py64d9O�.Gջ��#Z�����xrCF��u�ti`u���}���4Vk�} ��1�g��ߦ���@��o��L�}s�8s�A����g /4�Kx�5�B�ד�D@p;�W�Qjl�W���Bf�g�����숑
�;��w�a������!����qA�
e�
��oN�O4x��ȃO̗����i��"�B[^'UN_H���Km�2`�j)8e2 ��R��hh��BW vٝ�%t�8o�'�訐 ���@���+ ���;�  _GL�����R4�Ѡz`�����' Fp�ր�h���(X�� ��y��D�Q��3�բ@�����f��0�J����ut^���@��;���t���
 ��G !��hi����-��ypF���
l������@�z�ޟ�'�\�����حg2�%#IO �Z�1$ꉺ?	�o W M��{�Pi�Y� ^ ��z�cZB'�<�=Wڏ��6�E�u�dc�
��Y\h`d���8ۮ� ���8� 8#x������O� R�����j�-4̯�~D���K ��	�V ��G��Ԉ�BCy��nL� A�O^e��?����k���B�� |��o���zb��R~�zn ~���)@�8aZ^o�_������ ��uS�_?�����[��l $�����S��h^�=���S�c\7��������*�_�m����
R���4�5@�Ћ�@���X_�:>��aG-c�p~އ� ] 2 s/0�h�5�'�Ǿ�6�����e�`C�.��de_r4���{������5q\��8C��A�<�{.���� �8.wC�ڽ��jH�z��4J
�ڇ��u�����f��k�q��w��K�{r�YO��q=�k��r�y$ L��Ծ� B �� v ���յ��?{,�_;t�Sn��q}��- M_�Mj,��-�T�F�^�π"����.�+���ݳ�v�����~p�,`��]+]�+P&�-��h�oiwC�}��a� �̾|�<�i��I|�Wp�}/�y@����E�N��Oci��,�q��cÉ�@����оI���ɅO��~���T��#��ր�ُ�$�/�����& r�G��8�� �S�9�����T�@M��,�y}� ��o ��t�����f��] ��1�}{f?�N ���9������?�l1@ �z�k���
�����س���`�|���lA�(��� I�U�    �ѯ����{� ��0��<Eú/U;������$�v�������kD��u+���t!�no 7�R|L�uL�g�5կ��~Ao=�P��a@��^@�&�Uo��l�O<0��77 ���S�O�nD�R % �d�D5�������}p���Xx~z�G1�o���
@Ŀ�� '��0#Od?, :�׫����t��> Y��!s��gc r��S���)��$��7P+=z l"8@�}�8����O����.���e��Q�ȹ��5�-<���mop)4�� ˀ�;����By����\��X�1��y'�|CƏ� �a������~�(lq�}��#�Yv�O ��k��9�8�G`�S�u�n�x~U@�����WX"�3q}ݿhȿ���g6�M��z}r�'k�﫭Ah�G)���� G^?*c�+X�z���J���}�x�p�1��}����B>����+5�v�������|�#H�ط�$ ����� D'��3c��s���7�35��|
 � �dP#�'�-��_��#�'�+��`g�6-`��z�_5r	�3����8Ⱥ�n@q�o�^ �<x=��b09���@g��<8_���0���H�8�l���9Ն� `���&/#p���<*�+��o�I]�x�~�z����{����K<s���b}0�� F�����i�>d���#q_� ��� �v\��Vq���קy�tԋ��n!�2N�l\ �w��c�O6t�>�����%��B�^���� ���I��ɖ�Q+��|7꫊o�/|� }�4��h����G; b ��bh�'^� :ˤ9C��0>>���OM ���4�s�Z�ˁtl,g���q�;�����?�ü"ߎ_�����H�lX��)z��}����ޜtީP�8�_f��	 I���T�0~So]�� ��s&��krޜx� < +���dOG�~4B<@��K��)8>���,5��H:��A:-qȅC?j
=�؏t��ߝצ?U�*���ךMo �j��m .�h��I�}�3Yp�5�4��k�*�c?_5Z�>p���׭�U�+���ź4��r�t�`&�0u�o�{��y2�
lʐ����?��3��)����D�'� ��g@��z�C��Å�g�H�V94�!�>E�L^HuH�G��`ӱ����87������@B�����*t��#8g��7�w�v�}1�^yQ�ԩ+Jb�ϳ�#>c�;�8X�����p��⬎�¬���We;�>�R�D�y~������ �E��OD�A�D��T����s���
���h�D��=Ab>�짓u 	H?�B�L�f/K>�k!����s�@���#��&4�o��ߏ~�Q�����`��~*I��/])y�7S�=tB�b�D�@�j��*O[��נ���2�U_kP��0���_����{ F2���C�(`�9?鲡��A���O��R�����~�y�U:�^׈���=?`�
,ZM�{�ɖ'�}�M9��u˻��D��~܈`����O�|�g՛���qB�Q�����Ţ�V@�m������-�Ҫ+���s�_��Ѕ5q�QU�u���y�����b
��~N���5�Bo���x��p^6�8ص��V�����+����G����>A��ށ�j��
,��z��9��S�ѣ�N֋0�����p���Փ��g}�9�s���h�եo@O�>˒�@�E76�}����[>|k��=p(���CM3�}3�W��v���	ws5�
��hx	"ۯ �RTQ3���/���U�!�>;p�]�к����8��v��ځC;ph���8��v��ځC;ph���Om��8��v��K׼���Η�)�#�P��P�z���Qq/�)���1������3y���F�5����F�8��v���@�r���/�	�C�5���`:���N�|C�x���a��_8D#}����G�}��%�չ�g�OA��JXx�8#@�B���)� ��B��N$SG��Dc�\/��S:����pګ��m��� @�:���8;�F��A@!�jb?��^��9��.�8o?���QoY�|���>���f$�������s.�(�r�T�p�����yvI��sJl�	�騹�Sw����ר�b��Ԩҹ-B���p���?�jЍN�t�Fj����?���:q�j��e����J���l�F�/��{ǥX��@͉��S���s��q�|<�zb�8�\�h�xƨ�e@7�R��#���Ј�PT���&��A�G���O�84�k|��&�wc�>���8A<�Q=q�4+��[�u�OإQB��)91�����^��/n�+V�!�`U���{P5i���8��v��ځC;ph���8��v��ځC;ph���8��v��ځC;ph���8��v��ځC��]�W?8������C�Z��� 5ߚ���6�}�P+���G�فC;p���#�K���l�U��K�C�Zx�1d��?84�J����;ph���8��v��}���F�]�����w?��BЯ�t�If�>�x�H���JH�z"j��\�#B�hȌ��tڹ������uZ_�d���G\qIn�~r?�����$a2��51�2�����	�D���E��~(Z �c�׽�;Wp��߼��3�k�p�pl��l�4��hy�ј��V��+�gX� (V��S��b�����G�����
މ�����?�uڹ��������Y7�? HE�rZ%oAy#]6�`@��<�|��=0�����>W�{�l�5���<�-��v�
�y �IHj����E���g�z����� ��l�hH��y�B7�g���8? �q�������`����G������!\3�&≻���}�!O��������<{E~�X� �xdw���v������K^ai�^�v�m1�[֠��ώ_��n�N�c�����E�>��sN����p���>����}v������&��|�R�| ���ޓ#�4�7��E#��
���+ȧ�/B!�	n)�_܈�j4~v�G���@��}�D���;�g�|q��Iy9>G���� oP*�Rȓ#���zBy�n���D�����+�4�H|��i�S-�	Dp4�!߳��F	��kH��}�����0��ܺ>ڷ��!�U~H󺄠G�]������#�ӏ�w'��#�;��: h��F�A@��Qv��)[+�s޹a>�몣ϐ�" X思�X��4T���0~к�>��<���������:�A��,5�ig�&�����VB"3h� Ipn�=Ӱ{�����sj�}����g$��hE���X@�5�P�� ԂY5��h�qIBU5�{~+��Jd���X���4�n>�z������M�I�[��j�1���F��6�����M9��3��1�؅ƫB�M_�o�Wje4U��f�21�3��$�T�O��� �ӑ�t����BK����a
�ϣ� �k�~�|�ٍI�U��Fi5v�@��}v���ف>;�g��@��}v���ف>;�g��@��}v���ف>;�g��@��}v���ف>;��s����!��%@����W�v�@��[ӷ�O�g�~��5��j�s�����؞������W�ϓy�v��W`pJ��]���g�C08�/���f~~;��h��18;g������cpKJ��ɭ�~sO>��y�s�^KAK�6�'�������.��f@�U14Ȣj8}����j$�.���s�O�����������6�{˪����~�fް���bm�������������yu7�ymC^�k��������3l��p�sZ���VF��+�M�`�8�+�i���C���[�����W��g�f�e��    ZcYH{<��7�ų�z�&������#�����8��68͏��x]��~�5����Y��s��Y�֘�W�����_��E:�>i���qB���o>�s�2��<�>Gܴ�y~#��#v�~����n�fO\0ln���Y�{��ss��}�_�uU����-��2[���ٹ���`wc��\�	�u��0]�Dk;10�n���y���<��<��C�K�%����<��<�ov���㼆u��]�����g�_�w؟a��y���?+oW?���6�'��`z��G����I�훿��ӳcz~�L���y��^��1=����rk�R~�.���2�yj�j��pA���I{MK�v��l3�!�CH�q�1=;�g�������-wLώ��☞�cZ��1����%�q,��mG�"'P��}!Y����(�20������p����"%*"�����
6\�/t�es���ֳm_-�)�S*/ʖ'���xC���Z�SB��.�O}W�d�%�d���3�O世�H���n�w��XF��&��rH��_���>��}v�����rm��M�Ą��؎N����tE�k����<�\GH��hp�
�#;6q*�1��9	:!���dE�;;�U�%)��y�`��3�blE�S;bMl[*L��+Ϸ,�����FJ$����̜
�lC�mK�agҺ�~��I��c[*�ז�V�1腦w���Lk����E&"���1����@��|��r�ޱX�E�;���	���Ib��\�9�O���Hː���WO�M�<c���߀�!Y>��C� d���f��x=t��`v�YN6�s�.��!�!����=�P��-��_S�k^dk��9S�c� ǃy͈#i�G���FO��
Ø��}~�]G��	�Cd�ez��{��|X���s`zLρ�90=�������s`zLρ�90=�������s`zLρ�90=�������s`zLρ�90=?��/%}j���h�/c>�0c>�Oç�������������_.?�?��v�������u����������A�/�+?6$��=������Wb@f�Á��0 ��=�$��%t�:��Ae��o�|߰��u��o+����>l�FC��t����!�<���"c�6�E�H��F��'��yQ^E#��U�m��	��u�|�M�Z��,ʁE9�(���X��r`Q,ʁE9�(���X��r`Q~T,J����X�_�E�x�.�^��(%�����g�9E��!Ƥ=N��"��<1E]Du�qy?u�i�m����W�> �6!�0��<����"cʁwi�wJ�v^�!s��3�O;�,����P�7�=e�L�/ڷ<�܇�=��ˁq90.>������ˁq��1.��>-{�eo�ǐ}a��Z�y�Rx�\�/�~����w�q!^��T���3E= �`�z0���ۆ�qD�����T$?�SƚTl�����j�B��UR{%W���$��.�a����]�R%���#2≾oA4�F"�O��>Ⱦц�Y�W����K�L�*Q�b��F6��ݰt�������%�E�k�,��.%�� �P5�&�ތY:ϻ�����v��*A߯�m[-��%�c�Q/�"�f�]�=ם�[q��]l���XG��<�������N􄍕<��;�氿Q���!����;c�\���]���"cU%k�n�dF����F�|1V��W6ևX���|*�k�� �ϭ�����3{��������Tu������0Q���hd���H�F��J�=���:ݿ猬�p��� }�3�+T�#�D��|C���iG~v�
��P���n&><�i�Z仺N������r`\�ˁq90.������r`\�ˁq90.������r`\�ˁq90.������r`\~�K��t�	㒺������������t�t`Z�3LKA����!�.���`Z�Ͽs[�
�{L�b���1-�R�e�?0��������x`Z~?Lˁ%9�$����|k,��˼���/�A,����d�ζ[���e�}ƒԕ=�[��I�l3��j�+i">l����9nfT�������������8����c��"�2v�}G؟_>����<��X���c�=�k��2m��{Ƙ<�{c�����鸗x�wxě�x��x���y��%�g���oǧ�'�p%��;�b�^a0��acS_}�־n9��~8�5eY�V�W�C��#d�ϟ[cA���������~~����`f"O�<�/v���S��8��4op��|�q�?~7��c�}`)��5߷�5�^�-���ﱃ������i�N�w8�������wX��ǻq�Kz^�S���=�}o��L�|���e��.k��>�c�y�y�u~�E�ǈ|��z<�A����P���zy�'�O���>P�5X�'{��;ޙ�i���ǻח��bs\�W�m1~����q ۿ����=�O�c�{/~�N�9�����~t�~��?����؏�q`?>��(Q l��x.����>�>��!i֍z[6������I�#p%�]2r٢���q�^\�נq[��h���'�h|E_��h����\g@>O�%t?c86/�h/�9�<q@I��d���.�I�Uc���,c��^�A��'��"���ʲP�{���N�ꏊ�d7T���@@2�&�^��{"R���7��h������}�vl�)�F�C�ba�+�{.{wbV�gM��{lWdQ����w�f����q�)�&O��{<Zu,{Aܿ&���K�w3Q�#����xUD�MM�(�m�ǪN^Fn����oTȻ4�oT,��,x����U�)�V)�g��ٲ3pW쑃���m%���yhK��b$d�������ѢN�fq�d~��ckٿ��-������"�+-W`+�q��	_��Bq��	���\	Ջ[ɝ��?u_�%c�DU�ȓ�=Ȯ�U�U}I�I��4���_F&�l�����QF*�P0Tp�et<3���,��� �W��q��;��J!��6��aW���G�E>`4�Ɓ�80F��h��q`4�Ɓ�80F��h��q`4�Ɓ�80F��h��q`4�Ɓ�80F���h�OMW�1��N�1UK��*������a4��˩}1тF��D��`4�@!��,/�I0����.�Á��2F�;0F��h���g�h ���כ��~=F���ca4�8�����������y)Ɛ,��.Y���@V1�S��܅��u|z�\#��{Z����s�����sXق+����m�͛��?��(���W����v5O|�X��^��q>l�+��K�R��o��;���V��w^��َ1���.��eN�x�_\F�G��.��q�,����7+����xgo�?�o�w��`����~s}4?/���^�}��m����hv�״<���x<>��%<�!O��=ym�����|ċ/8�����W�v�9O���7�`=�������ǵ+�7x�?��5���c��w�]�ҳ`���U��ƈ���ƿw^��}\3�cw<��8\�O��g��c#���N�,-߳����M��;�>?���ng>��w���T��v���>�7u�-�y={��k��K��3c ޼��S�`C�5�c��o�V�n����m0o����Q0ʰ�����к�a>�2~�ǁ�80����>E��D����i�qe	Y~N8,t��ڥQ��p%O!��������5�m�ʹ֔����q`>������[����c>.di��il`M��Rl.Y=f'��zڊ{
W�����'��X��k\k!@ŗ��'��=>�Uc&��	�BAơ�O���>V
��N�k�a�Zb��}��n#�J��[6w�X���_M��ȗm� ���� ?����n���q���Ȳm��MþY��$d�g���P�����/آ��R�:!���ܻ�s�|LrY#P�'���FGJ.�y���R'V}��ئe���,�����O�:a�n�$3    �:v�+K��=��KO�p?�N��E6)�HF�cpj�gTCQ�1`-Q(c{L#ybU?O�N��[�W�����2\��&�A94�x�?���9����*�ƽ����p�[��Q�(݅2�Gr�1�2��߫���<�Wc3Q�����C��4��t��&c�㷞� [�+��W��j�`9��NG�����?M��$����m��q:���i�Ļ�*t`>�ǁ�80���|���q`>�ǁ�80���|���q`>�ǁ�80���|���q`>�ǁ�80���|�O�����v_�|ܧ��o������a>V"�C�n����_�6��>d��u���G���������c�3���q`>�ǁ���b>JȤ�w��|��������ca>r�����yY��4�>����S,�ާ�ͻ�?Ɵ��o�N|y�1>�0_/��'����mp<7[�8���y����sq�x��yx��=tݍw�m����\�X��gw���}�8����q:��������e֖qN�G��>��v9^�n��X}����X⿕��ÿ���.����Έ�<�w?�X��;�}�������cg�X���Ŷ��w�`ZB�� ��Įg���b@����,Ō��q������i��<�;8���}O؎�`F��ϭp_�|	��_��w�Ɓ�������m�?m�H�c}[�O �l�\֧y�x'�i}yGQyńl�1��g,�������=�o\�o/�y�C�����O���W��[���}�w�n�xJ�Z0Z/��|Ĺ��^��H�_Y=�����+v��9!�V9���� �{s��e1\�Y�B��R_ _���A�1 �*�:�u=��\��F��0��ͿKv���@����������m���8ǿ��0���"������^m����)�KXwR�f,�쌡��.H��[�������BN�c9�a�����
���X��w��-�q��^��?W߫�����-\ucɭG%�%�z���\���&!o��\7�>���	�:�S���:N����N��;`;���Þ���6;��e�9 ��;}��ב=�����$�;E<4�y}�yR_�c�	`<���[[c9)ry�Z�SH�[[?��ސ�Wڥ��M7׭�Ak!x!Ʊ�j5Y�g���9���1���wgs��}�ǭ�|���[<�;�̻6������]c��u�+W�3�<zc�9�E�O�>��r���Q�C�神�,���6���|>��H�r��G��	��Y.a�s*Ǯ�߿��xX��wn1U��P?�\gô��[E��X՗:��p�w��H�>02_�C�{��Bn��qg�����?���8oۜWA]z��"����2��9h���%���}�&D�sX��
{g,r�����_������˼�t����,����֪Y$!���?tܒ�T�d(	����"�ƈ�z��o���?Ǐ�?�_z��z�L�K��%I�z�kc�d��2Y��z��ǚ%*}7�{	!�i �D2G>��-�&Y�q�'�5��X	�Ƹ��~���]m��z��}�@�(���Tq;b(�?�?�Vd��|i\�~C]��f;"����S�q�#�G�mI��q�Sg$�1��rz��T���a�!n�J�,[n�<���L�2u��.[��0��-!%��z~?NgT��U�{�\��̹�}����Y���a��\y��ݿE�7p��uH�����`�^ ������m����u�$/Cj�}%{�O�Ok}�^�GF��r&���(a��[r�����4���{ޥ{7`cN`�U9c��"o�JF������yh�o�>�]޲~�}��R7H��E�y
#8��t�ȫ��H��|Z��Ld�z�g(���Q)��#���`Ǽղ�����Y���@��V�U_�ɓ��?c}V؎9/̎O7�s��4����h�R��"@Z��>��]�)`w��<d�6��=>�W�}�5��Gl���K�<,�E�N�y�,\��kЭ�Ư<Yߗ^0-ߗ+�K�#��2�ȶ6�6	���ʦ���yD���g��I0���s`�2ߊ��Þ����pS��)lN���zc���7ۘԡ�~B��h��l�ly)�7��ym��Of�A�N��:c*���b���`�7�M���dl&7l,%�O�6���j6��k�a@�)"��wd�߭4A^��T\WDoE��1�I��=��8?ea[�2�Y��g����J[���T��z�p@����Y��^����Ø����e缺�q��_�FS��/�k2J���o�lZiW�q�dl��U1%�y�u��7SSfS��1����LgY�&��-�z@e���ȶ�X���?я�@����Q��Q��ߙ<_��cBzp=ց�A�,��L@�Fg�Q^G��`\�\���/��(�?�p����U�3�����PL	>(0#�"uL�	ۂqh�1Eu�� 8�M؞�>hSj����q�3gc���c���f�mSή�g� �{�Z�mH��x=�~��y�z�b�ͨ솰���!��ְfj�'�z*v�)���N��8+�{��%z9ۦ]��:�Y}v�q �R�2�(�����ɞ����=a�/
q�������QO _����.=/�C��U����x�~%Z��b>9!W����k��"�G��@��*����A�]�=d�O6�@�6��	�I�n����*��O	��bL��&���c�
5r_]7L�He���V�N{��cj��N<�=��}�6��0N�q�)]�I�
ٹ��������S�n$ʹ)9���u���s�G�Z��z6d[:�V�� ����s�<ώ/��)"�D��CuJEL9��`|X���3�����D)aN�C���G��,�klC�Wxn�o�Oۜ��v���KuK�~�D7뽰��h��N1�O��9~�(���tR�(ۘ��e��j�;���؆�}�����Ƶ����G��u��c�8V��	�'l������W������ܸ^��\_lԬo���1'ۤ����6~lDش���� ���K��A�{/`��aPF�o ����G�u���b'��ԍ�z��d��b�9�����n��氟W���(��w������&	� �AK������#b��e���`9ӑ76e/�"p���x`���M�-D��C����_�!���O66��������o��c|��L�=�
�J��lL��D��2>�1���[��&0䚝a
���9>����ط�Ya�XC7��^�68�60d�X���I	�e���]�*��e��+1+7l�`6f��2&���Aɬ�a;�~[������G�����0~d����7�a��g�Xt�!	�u�Z����S\�s��bb�1�"1/%��Wޏ/��	L�]��ȯ4?�>����^��]��=��wW�����ק7��9�p�^e���r�>��4|G�D��	�Q�1H�q������
�7�I�:?�:�|����d̬��_&��5��Ņ�������2Hb�-Ԙ2���q�ę���S�W��;���v�f�H��������
����s��|��M|��.��\?Q� 0�/o�����+'-���u����x>�gx���O*�0L����Ƿ�x}�o�g���Z�#?o�ٌ���/�_Û���1�����&,���#��ƋcCξ>���߰�� �u�C9^������h	�����F��:�&����[lfg��By)y�nEkqO=�u]��#P�_��@��]B�T�%z/���_j����Rc�P�V^�����|Ϙӎ�<�uP�p�~~E'���3~������Ih��b��(�`�=��#�&�8_����x�z똉����C��µ�:��KC/Y��sxZ�7��dkWŹ��*�<>�l�_֋3�Ql�>F\���Z~�Bne�*�`����}��N�c��j�\��Kt16��X�&�Q�T�(mX��|(u[�ٖ�%�1�&cI�&�F���8�/�    �=�)�"�m�:��q��h���ޕ뇗���Ҽe��CԵ�)IĆ5w�|�ԃ�c�,ƘdX]��l+@<�|��,�"]7��\���o���V�O�����BuܾN���
�Y�N<͸{g!~S�	��2�*<�sp�L�����A�*8Ujdz���gб�J(�%��|��N�f�~��U��8�61�SoU<s;cl����60�W�W ��C�']��Nc����ud|���L�Z��4{�z}7��"\4X���}���q5����S߮78�l�-6�.��;��E�Q�^���_y��L�X�g�8KU�KJ`"��R��--��g9�K�D]t���}�t��`��P��'�S�"_>Qm��N�K�씝�BV��e~�z��G��38�ޘw���&���툣����R5�/�_�l���M��K���~r�ț�!+w.�c�Jԗ��[����'K%z���/�S�i���5�#p��������X��v]��`��N�y�Y��ZE����ü�������ߚX?��]xڞe�;�_��tM׿��S�uOX���������F��9���C�X�v����}���zضY6�4�S�{�G�fX˜-�������q`=�ǁ�8�v��w��z�[y�	;�Wc=��=?�cޭ4�b+�ß�1�m�_�R�|�fܼ٭~{�Xo��Z�1,ߙ��!Oa3�e�ݏyb����qa��.�e�����`;�<gs�]��9v{�|������c���7�}�<���P��7ޟ޷����dD�����G����a�Xc8f;��G�s���y\/� /�{`?;�-�����}��W��umo,A{%�x�3X/�#oz����M�?�G����ڕț�q-�������:̟��9�wy����,���>��X���㾽�,V��h?��'���F���ϯp �v�?0? �co<�$���0?�G��G^��b9�zS���+��w�?���1�8�5Vc�������6f|��������������ӿo�#���u�5����u{�%��*_��e`�HRsj���*l���n�ݿ�c3$�]��k���;���mȣ#�ۡ��g,�嘴�:T����o�Oղ��s�+���n\�o���op(o����9��:\�j�E��A/���Կ�q��G��7W1�YȎ��vm�,]��>���Ȧ�/�����m��`�{Cn猇���Q��m��M��|ّ�]�r���yu��Ü�boɫ:���-��I��:����qU7\��7XvI8�}����n6��@�Q��~���רW��}�ɶ\v[�/� �m;+�u�`C�[+��1��$���A*QN��Ұ���fW����tƩl��ϴ�ʇ}�9�(Ο��zȌ�����1����]�ܦT�p�/aۿe����.���p"��;>8~�q�.��uH�]?B��v�-�m��;!��O�i?����O��qR��n��������T>?�����I�����P��M��14�Ϟ}���zز{�kd�=2
��ol�hC�m�a��Zr�������`������0dm�g���p�Kj�@�!{�+�r,W�cYoA��{��������Gf\��Į$чy���[�����������yܟ��|�o��1F�x�b9�-t���<V�1-�x���}�a\��&��Y�=vy9���XR�0��}F��I<yr���u���xO6�����|�F��8R8,�_'v��̆8���)a���e����s�r&�����s��"��ȥG�f��Hri�+gdV�}[��=��f���3�/<�c`l�n&�Ev�#��ūcw��R�ל�݇BĮ]+/�n��zxC�vĖS쉪�ᚇlYw�k�U석^�^W�s���vR�8��l���ԏ�Lȣ������f��K�n���������e��*�g�/�{Wv}�n��S!˵e9^�Z�"������ݎ�#g[8���B?Wu�3��]�;� o$/�K/�T��26ha�F�Y�W��c�'�u��d�da���W���$�0�&'�`�����ae5�>�_v�Cv+,I�0,�]�g�2�kCvUԮ�̧|����kB��rbwۉ�N���.�y%)d�}�������]��}n��|z��|ף~뾌����dl�}}�}�ٖM���bޝ����Y�W���~�d�ɿj��5�c�J9�����W�h?W��n�a;A��:��[�l�͞O^vgF�а;z���~���Ƕݝ��}`���،�=?�m�a[@���~��v��=�f��~l�+Ȝ�uv?Ǣh���t�l�p'��\���&ή��|<a4�QZ_\�z`;l+��v�1jy�bkHe!�>{�V��ޝ��2�nd�p]��[¶����㵂����B������d��.��ֻ��kd���L`Q��w�w�-�.�Z�~9cX�t��}��<:_<��i?ol�m��;��\`��:��ݛ�wc�+�=��!�q���`W�\�<��݇5��t����!�N���㫲�:�Pv�/aK3�&�'��/�~co�qF����������u��5�-=Gx�^5��}0����߁���:D}�~n`5�ڃu��[����������V�@�x�1$�`o�uS�ϟvT�����n_�w����[a����X��������9�1��κ�NϸF�ɲ��v��g�Xv��z�Q쮽��Ћ��m���8���}�=��'{�}�Oa/�>\�����'��1ԧ�o&��y7�F����3��g���w+�A�>�_Ӑ�5��`%z��;��'�!��V�uJ�2L݀X�{Y_�߯z�$�_��d�m3�gcA�H�_�"���m� g��/�����e���4�P}��K���{xlVc0�g~��=�D���5�306�X������ywL�:c6���d�I�w�fM�����۵�ĩ0��Gsn�V�\{�Ұ×�+� x��e��a�v�����z��P!�����.�=N��X����������\�v\WV�۠���j�s�v;V���$.�՚��i
{��ɪS^�m��~���b�����r�ћwk��L\Nf�]�;��)lƷ��\��A~��eW��,�E)�&la�z����	"�(�{��_�?�ǖ��?��8Ů���0�9�[X�/`+b�9����?l;'>�2����<I��/=l��:ٔ���Ϥ��w^�z 6�ѻ�����ۆ�:����[�W��������X����/zX�?���I��]z��w���׉u��&�x���	+���y`�S��"5s\9�G�[Ƿk�yk[7����_�.vi�[�z�l��*�����jW���A����'g���)*X�f��'�0���z�c�K�Pǯ�J\\�Z��~����20�����;F|�ž�>��R���	qX`+z��������)v�,�s~�X��!�잮.n�]����2�{i�2�eY���\l�g~�z���v|�t;�W��䰧*·=ѻ��s���W��ף�h�쌱"/�_;��{��9>_Ɨ�1m\�ec;�u��K������Q]��;>/��� ��O����|���ylF`��k�~8b�>9F`����o�׌�S��*�&�{Fί��/l���_��Y�UR��~>9���5
Ԫ����!ǣ�{B�b�mR~d����O���t�u~�:N>׀I��j#2��wK~��k�������H�������z�3Hp��X��ī����3�����z�,O�3=���T����x4��O�[\߿y~���#�b~}`�<��N�w���\?��
/�'c�׍��Ff���;���FN���=�x�Q%�՘\a7_�/�P����O\������@�d����b�*u����Qe�2���ƕ�`�ǯ�O�y�b��)ݒ�<}?��x>��{ؐ������rp\���8�l|�}�#�L���<��ɯ/���]�>ę���'�-��T����)���4Y����C�(:^"��Uki��^��1���Q_osn p��I)���֦��Ӡ����[    ������	YLEU�|=�Q������k~����}|jXv�w�t@V^m#��6P����q�hF�� ΀�]�U�H�x"N��_�g�����Dm<ћ냮;��{|Y��.��+cSXp�� �U��
ϙ��>'us��
��C�cЧ�O�|:������7�/���Θߞؼ����qT�B]�D�?x���¤��Q�2D]���H�`�����lٗ�pf�%�\�#����/E�^H38�5�4����Q�q��-�M������[}}��l��qQ�K]�l�|�6�>e��h���ѭ*���*N�K�yq���;}g�T�^u��p��E���gz��U-��'0T�������̈�J�qHw��-8Y�G�/�3R7j������XP_Y�2�΄�ub|e������x�+ǥ�@'����S�U���SG�-��q.��J���L���v>@o'�c�W&�D~av��f���;��N�2�y����*���Hy��}Ss���5���q�T��q�7�6:>Q�������h۶�����>S<��R�X�#�K:s���+nU	�1��>L}?�ʣ*�sr-0Y�dR�"�"�{� ��y3>�t,�r��CO�v�H[㔾\��"Ml�6��Z���]7�C��E?����~P�TߣC���yVYCk�:�}6�����1�4���m��o���1�ltu�ux`Bb[�����j������T�����?����_���_������<��������/�O������u:0 �D��+�Si�ƀ��w�d0��?0����ie�=0 �Dr�fe'i�|{�[,�;C���y�~�o�4�</Z�dl�ɷ�]W��zW�ˑHw<n�<bw �t�U�݃��"s��I�vx�
o�(���:��v��Lc��u�|�i�M+{؁E9�(���X��r`Q,ʁE9�(���X��r`Q,��E�,ʁE9�(��Rl7���ܯ��R⿫��j���k�Rư�`�p?�2���/��S��WJQ���-#�R�.nHݚ�/5Ȕ-L�zv�2c\�ѱ�VC>&Y�)��:�����]�����~O��ĸ�%��,�uP-�����?!��+������|�ձ�}�� {�w2��ј�bY^#��R�G�������㢸��ov�N�s�<C-»o3^%;QX{��A7�ħ�ʻn!���`��m7d}���'�];_ٝ�� �y�.������Qk'"o��lOc�qT؝��N�n���S)nҺ.{k�g�¥���Ȓ/�	,����r���4�TS�nT��+�Ɩ�:�	yq����O�\��L�|~E�<p^*Mɰ�1:��w`Kcw-E>����;�fdW9�-�����.hu�l����ʍ�ͳ49Q����E���K��WZ����v���5�i�K��n2+\�K5t�ϖ�D�P��J�LQ�	y��=.Ć�z��E\�im���k���+��t��]Vv�"��D�zɉ�i[p��[�����Tu?��R\sK�mA���>I�����Jσ��	9���;��}��5�����&�+#�>J��}C���-�#d���Դ ���3G�|��<0.������r`\�ˁq90.������r`\�ˁq90.������r`\�ˁq90.�������c`\�OM7�b\��E�Kw�L������Ӂi��0-݌a Kؕ�[-�h~L�ٲd�m.��0-�̷Ĵ���cZ�_�i�m����ôX�Kr`I,ɷƒ������8�� ����caI�Rg�#e��2�>cI�ʞ���X�$u���.�4�G����3�˰A��4��8��}o���>��c�;Ya8V�+�+Oٶ�7��������	LD��ǘt����̖iM�3��q�����y����x�wxě�x��x���y��%�g���oǧ�'�p%��;�b�^a0��acS_}�־n9��~8�5eY�V�W�C��#d�ϟ[cA���������~~����`f"O�,�Q�څ�K����x'�m��1�<W�z��`�����x�D8u�c�~^w���g~.g[w�|/q�zd��i^��������M�*ϏyY��j[ċ���c^�.��~��Y�_����1/��;�P�C�j\��g�7�qs\�`�<�pOZ)r<�OX�5f����<�>ᤴ�m�����Pɖ�ݹ{`2����/yW��V݄����mZ������c���溽`����w����c������q�`���u^�qK��-䫝�#�?8��MZ��<����<����j3�=�?/�����������������?[���鳟���x�:�[<�gpG���Į���J��gLQy��ڼo>�����x��ϕ�$}��+�S�z}u�i	��n���lq;���-��q�ϴ{]�/�S���w8���3ޫ�ߎ�W�;̓.�y5�,�����o0O�4�;�wY�?�X��q������o�����w��u��q@���7=���g��/���������^��ȯ8�&	�NO;|X����Q��{z߸~��s�z��x�=���݌� �����������y���Z�c\7�l8���]�'�� ^�_0O�(6���q�l�?��Vf��7}��U��u���o1����GQ��n,ۂ0�uS��a�-�g�������\�s�y��ن��u�=����I��l�S�-c���]U����*{�m�?0�ƒ�u�K��N������Ǯk���v����a���8r=7`�ƹ������X�����d����{����+,7����>.���8���Qp�y��{�ly25U#_���Z����70-x���s�p��m�������K�������>烔��1���0ɐ��:ד�cm�LƉ��^w����\�{���i�H�Q�]�1��,�}C��Y*�t,2��㴡�yOy�d��Hf��߁F�����a�zc�r	<L}���z���Tc�����w���w3�,����*~�^����,X�/�5pn%0c���%��%G�L�q|�m�'ƅn0(���ڥ��OFD�\��:{����\`�>cQ�᩾'�: ҫ�ӷ�9%��y\��$Xo-��x��#����F��=o��5���.�8?ls_���?G��r��X��
x�7x����}��u�#>���V'�S����y>/�Q���{>�'\vՂ��G��Ч��%�l-���+ط��|c#n�4]�h9���ﹾ��9ޑύa�bP�`�J�{��ļ>!����m/��V��,�}�*̫B�>l!�_�Pe�3]���ž�:0z���s��g�&<(1��|��V���#�)�`D��9/؆�;ds�����F���Eg���)�0�s��L�^ L2u �L��a#n�c4Ǎc��:1�����Y���`$4�c�V�M�g�%�i#��U�F�mY����;!��-wu���^�J���!�y@�5��:���U��`��v��9[��:��J�CU�cb���@o�V�<�v�He�-��v��Qvp�c���T���Ru=���:Ai}]�zs�G�F�����: /��~��O�S�Ɍ[`E	88�+�֎�\���}q��i�}�="�����Ju쓎;�Y�{��m�=�zM�����v���s��y1�ۂ�jX扯ę���Ff����Z��F�&�K2�$�3fl��o��f�6*�4���%�(����EaA)v���C`zl�����#l�����d�db��Oؘ����5neP=B�p�H[^�|f{��!�.���3l��{�me�a=c���ܯk�\��-���QS[\�-�lKX�ʼ҅m���=ۺz� 2�)�mP�P�Bvl�a�N�@μ_6�7�d��뇘1��(7l��V���d~����`��x�k4�����n�)lsz씱1hL�G�p��![���Bo���^�o�xe��=�a�4�r�?�/�y�\n�EBg�;G}�n�s�s��m�?��Y�8�ثV�<�7���@�=�|6�n��-��`m.d�5l    ��>�N�N����d��3V���ӳ7۞�z�H�����]�\%�\���S����u��ݶ���6���Uwl�	<gX0��=�^��E|O���Q���aW*ն�K<��+�?���������D2�
�l�!�<�����Fa>�X�l���=��X0�����==]���}��/l�2�e�I��K�k`�f�?v�����W��m�a36�S���&�"϶Lp1_�H��l�M`KV�L�k�`�u�i~ݶM���B�
��:Y��^!�C���yj~4�ǘnc�Ϟ���SkT~���uՋ���$xL��לZ�<7���a�\l7J`��bg,؄J�QK����Iu�%v ��7Гn���'c��s��[��*Ac��MY[%n�����7*��-�|�
ʶЃ��}8c<����k�t�1��C��H_E-��a�`�R#���۠ GG��s�:����ְ��On�'^�m����y�A�.�8�]�m�ִ�4���\���v���]m���1�����փ�׍[�n/{(v|��i]��|I<��&%=���^쉪	4���W.��1�E�b���m$�R�����؊�A����p'�H�������Ǳ�z��x�7[@�3D�.t��c�����r<X��J`�-�\���!�9E�Q=�����s�( �g�<�=;���Nb{ak����x��=�_k�a,6~0��T5��~��@c� {a�c>����NE��P��9���ov}������G��BA}��K�R��}l�p�Q����U�
�;{ޭg���r�5~�:���v�5<��3��i�t5)�F���Α9.��Yb�M`��c=:�_���`�4v��S6\�|����i�/?c'�X�.���:~C�o{��G�V"�ȶ�V��D�%���_��~2~y�e�_��a|��j�3�Q���5TkǓ�J�U�Zk��Yv�w�_�l(���]��a����?��.���VQ>7[���5�lՂ�[c���X��Ƣ��bM�?�O�2��||��n��OF����[������'R�[���r��:������E񅏏���U�>������)����\��%�_C~���2��x<��
��� �W���#`��u+��WC�F���<F��g���&�8�����j�>u`��~�B�� ��<����u���y�����C�y���E\���	K�l����j��t�zҰ����������V�v��9��hz�'ί�Ot�"U���/�u�O�yn�M���+�պ@�庌�'m[�z~��ɟ���G�#��d���E��3�j�W�o�_u<e�Ba�_�z��8^�&�#�1�؁3i�d,Q1�Ș��u�e�|�cأ��{cu�L�:��9`��w+��%~9�8�征��~�j�3�A���69�A,��涛���_@�'�C��c� ��~�X��x�|�Fex��)��T?�A�ԇ맾����IC��^�V��&��9�8�u�̳�!]�=���'��*mg�;oi�b��<aC����~VE/����zу�`<I_������)�j��Z8b��pT�c���@������:�w*�h�b�1��Qfc�hW�S�>�(�f5�N��m��'α���$]����>�E�yI�I�g�3#���q��13���M�=���`wY���u�����N�N�x'��	l���@c�q�`ȷ�_�t�8�+�}��-~9�m��e>V}}��	�9y?��q�ۺ/ɼ��f��s���Rg7]�WO��fo91����uy��u9����iS	c��Ա�����F�*����s
��d�Z-C�
�>N+�+}��8_�]�w�y���?I/����1��Kc��a�|3q^3�{\�vc��"��q�u�7��U�V��χ�F�g�Ku�m�]����6�X��>U-�;�lH�Xկ'�!��;Uo+;n{`�>�K}�ى��Є�Ț˂��ʘ������`�K�z�Ķ#����u��s;��^4������&E��t�W<�]o��MD�V���	�Ӹ�geҺ����|�i�~��B�g#����=lPL��9�����:ޏ�n�-��ב˕4������[I��>��<��B�1��,��A�K�ㅓ�ϟ�<����F�����������ă�霈˵�5���z�k��Ց�ۍ�CD�����ѿf�wRz�������W�-J�������L���R�"oFǈn|"�zw�?��T#9ϳ�G��mb{
��eV�S#�U���4����~�y�o�X?�M����3��,��/���z����R�eR3�8��i�����_?����?�������n�ϟ�~��?������ӁK��pIŸ�W\2���/��qI���qI���%M�8pI�.I��f�x��;pjz��z���]H�W���T[�>�}�w�.8��k;�l_I�_=n�<b9�.������.�ˮ���β�E���-�}_a�U�m8�U��u��ʝ9�>��G��u�|ԁ�:�Q>��G��u�|ԁ�:�Q>��G��u�|�{|TS�y���:�Q>�#�(�1�����O�����K-p��K&F�T�}FN �"�O�n�'�����|�_���
����1o��<���	;�^����wu-~��)����0U>>�|�q}g�Μ�#�u~^�F�o�\��kԅ�Ձ�:pWF�U�W;�+b�wu�����mn��,�z�v
v`�U����W��	��}�Q_�{�]l_���QǠ�kMac�����vYX�U����!�`�-�"���&0JH���7�ie����n�ȯ1����5�5�dL2�+�ܑ�Qj2�����I~�������8�W��.����n�����[��	�B)2��[�:�֋�q���8AF��5U�����:���m>=�\K�{e�sX)d�l�������Q�9K�;d{M`7tLC�e��Ϋu0�?��I�N�#����7���nȤ�{jB�/A�Ѳo������a�W_�,�\-u��/X2�2}������W�uǥ�Kg�n�}�+-�.*�5pk<�z���پ���}��~*$	���\Q����74T�e��]=a�����ؕZGy�xF�ڋw!V��PC�#s��7X�z�w���W��3誡�Y�/m��x��t��Ձ�:pW+��:pW���]��wu��Ձ�:pW���]��wu��Ձ�:pW���]��wu��Ձ����]5���y�]�_��j�7���?Z�O�O��;�Yð��rE��[ରY�8�L���ଆo������Y]�g��Y8��gu��|Ӂo:�M��4ۗJȻ�4���㛾�=?6�	���o�����&��J�	|�Wcb�'|�r����7�3�&�݃m�?�-[���|��d��<�a6��r����"��>���?�B����h��+f<�
k�/�_����������������
��Ϸ�ϯ�󃸤��/��Xᷖ�G}���}�O���	��s��[bZ�����<��9�x��RWxŉl01�����o��}O���X�ދ��5.��߷8�/a-V��:��iG{�����3�C�L�G8��v=׻��H["��l��Oc�'6�	.�.2㤩c��vDgY���Z7ȋ��Qc
�ߠ�I=ǹ���_��K�a���n��I��M}�Q�G4�>Ky~��:W�aď�+faY�ρ�{`�[۔ȯ}}�G�s����>�0���H��Z����R}��;X�X\O�S�?p��!7<7���чM��p<�_��r���yk��Ü_�z����-��b=�`X���qnI5�:�y�~!Q=��z��B�oy��>�
�϶�?���D��v���}dӢf~���m���ؚ�PO��w�H�5�����4��ᷳ�3�O�~���{5�^��?*�c�Q�O�ajKoʎ�����1�Pa%s���E�1���17�j?V�˼�u	|Ӳ�G(�E.W���e}��}�ǲ�y���n16�p4    ��g�\S��;���\�ԗ�X���e���4�-�h�7��C�8�����������|>�q��~�6�`XǘC�/;��u�)�pã=�G���ex���ch�%c}NOk����g}~��!o��UR�;e[�3�EF/?�ɫ���?0Q9��7��ǋ��@=&���BF����fd��:���<o��K�֗	YET��*��!�������Q�Sɍ�s�d�<�z�~/�:�����/`��ֆ�!��m�ǆ��e|6`?2rt��/�c���Jd��;K�4&cN��q����5��L�	R����*��'�,�!���~�l$���T=���-�%3�"#M�N%���ݨ�(��r8Z~ʱ�'�����ɿ���$��s.����;l?�:��A|F�#=b�n\G�����)�FU�������=�m�ȱo����-���q��t�.᣺�C
�K:�2p�{�~eDN�8}�-����wFY��r=vE	�2v]��߯�豝��xz�Im�@*M[��-6qt�Y�`��쩒�ao��O#,�E6��Ǟ�0q����"g����81�8O�?TRSv�zޑ�!1���뉽�|�����>8�2R5nB#��o��Y�'�q;��*ap���ղ}u�s���U��E���&nq:\F�P��C��l��:%���i
؅�W3c4���<\�w�2i�g��ְۂ����G.�����ۯ3���[Bk\���o��g"R��>�TC����>��+�~�F
>�+� �ﺵ=����\�T,�v�c,A�^��x�~�k�U0jT��~h|A��2ۋƐ.)���3�LMirX�a��\��^Q1��7ׯu�Y��^���C4������.[��!�|>��k`���������{�7��>���{�F"NB�K]����_6�_ ��Z�_��iȇ�������G������@�9�>޵�U�.}Ol*�}��NY���m�m{�dS���/��AT[C�ͫ;��6���<��:�S��]�ǲ�Q����VۘQ�d����yb|�{<o����ـ���C��$s^x�v�ީy^r�'<��&أ�kv�Og(F�2R�t�S�i
�/�Nz?k��
�U��sX��_vȻ0^u_��c�|Ų���z�5>ER�l�P1�"�O�Ǹ��	�ź�����jm����ޣ��M^�}�G����W�?q'9�2�f>`Z��X�?����T�+�&Щ���˘#�O�s��3����9�K���&�F���u�U]9>�/���x���O�fzC� 	�f����HX"-�u�y�~dq�UY��ŰG_���/y\c��l<�}�E�.n�_(��t���R7(��U�]x�d��	+#^�s�<)��	;*6N�v��W�l���o�X;u�8�k�C�94�l4�v [&����L���Vj�����^�,����kB��7�,��k��4|���#��d���d�aM�������&l�LD"�i�y���M���-���']�+�	q���O^u<��!���!ť��c��`�"�м�ja�=����Ӎ<�Dޤ��pҵ���5����z<6`�NXP�5o��:����V��Uk^5�G�!�YJ�^u����8�`;��H��`���x@�;ƙ1�D��-��s4�O�E`���쇉�vƖ�z]�5 ��Ů�x}�};�ǖ|1��{a��{�퓥��mW�o��������6�3xBe)W��8�k��~�+ւ'þlKcNF�����)�=7Ɠj�M�c�/�X�f{5�e��� ���|���m�O5Zt�XO��)~�?�M�Tg{�ox}���O�k�GZ�z����O _a��ۓ��#��}+,�lԓ�d����׀wl�܀#"^K�߁��J��\�ܴ��~؃�{}>c�z��A7������Y���W~��W�\5���uS�mt�w�?��À�Ⱦ�w�7���_����9f������D|�:>��V"����M���þx������|*o��7x7޿෶�9�C=5�v_c�X�1��7�툩���wx���3��_�7Ce�E��z�\��d�V�
nEvO�^]����������|^�7/�_;��{Ȧ�)���恗�sED������^���W�Y�5>bԼL�q�g,}������nY�c�Yz�{�3�=#�����W|&�g1�E������O.�P?����G�7Ʒh}�����-�W��g<�\���u���G}�R^�g���s�^�=~ȸ��X`����"ֿ��g��i��g|S�����~u�D�9S�ڶ��ɟ���SGV��t���J�'�-���<���ȯ�_�ø~�����;C��k��L��W��� ��~������1��W�3����a<j��xfxh��N��������o�r\?q�fr~^2�����{��/�ol��\W�X�5�x�|4^/����7�k}�߸w���Ļ-E���W^6?\�=|������邯t|a�<�Ź�-��~"/î=�W�ӄ9��U���۟���������a橡ڇچ���@��	�:^"7�\���� ���	��T@�l���=+7�����Gam�?��[y2��V�xGߡ�G��fy�Dzrf�ҹB6����D�Ň���K6F�sMƨ7�+�^�Fv�q�s���v���`�>�h'��8���n���^��}�7�]w�^�B|Y����/���A8	�M����A���6-���K?M����X�4p �h����Z��SЗD��q׶�yp��k��0��B]|0���Uu\�~��ˢ�&T�*�����r�������0_ֈW��o�/E��݄�������u�?wx�K�G�W�K�V�qA�XgZ�KRXA�&�޸���O��'�8��[�]�<�s0�o��݅\�����j�}�����gzo$�zɓ�.��E�G7L�j������y>Q�S]ȸ��1DO�_/�E+�rTN�!�0w�,�=�։��?f���P��q���6N���W��}|���2�|�gW��5P�zÅ��5��-@�N�Y���l������mɤ����i��"~0�苔�_�`�#���o?H�Q������nbml7ԡ�к��0c��q�_y!}�xf��ı��1�g���㒌�!�.�U���c���'ɵ�}GŊ�l<��?�>��.
K���Pc���8%+^Sik�җ�3��m��Y_�����'Ņc�67=y��z�}c�Fw�\�tې�=Z���'�]��o7����~+�����ۢltC��h���/�����+F#�/c4T`5F��i�����_?����?�������n�ϟ�~��?������Ӂ���0���t\��1~{̆g?0f������b?0�fCr�fe'i�|3OH�zb�⿗2��o
��+����aP�~����׻��؋D��q[��T)�t:(q�÷���2Gڝ���N�k�ϋ�*2��Zgl����H�=�F�L;m��;�#v���ؑ;r`G�ȁ9�#v���ؑ;r`G�ȁ�M�#݁9�#v�WcG�;�>v$�Oؑ��.�y��Վ����F������^J�<	y�%�S�Ǣ���=�A��q|�{�?3Q_:��Y�cȽ����S�j�Hm�������S\�'�l�A&W�|	r݇��D|^9=O�2���]�y,��F�1���8+�gXS��}�n���X���\��Ү>W����C���L�~����s��ήY�s6�_�'�g���K������s�-H�����>f�9��X��<�%b/��>O��yhe�����`+��3��ak�'��i�8v����Ƽ$�
�w�s�z��Os�sD����M�:��-oz�B�=��޼~��05�ӖaHH�H�l������>��[a�ؔ�X�I�3��"���Cq���I�X���}ƈd�ʹ�R�.04ش;v�e׿5�H�cC�b�k�2DǱ_�=�f�<�;��1�A[<��S!�>�>���[���e�rD���wd��b    (��e�bd��m�y7���ϞݣR��RYU
9��.�{,�����E5*���w�v���0�̱K��U��q�8�m��w3+ޕ�xF�u����17�c��%�F��.eD햟�{0��jF�I��_��!+-�ڕ�q�w#�M!S��ݞ�t����6Y� �2����s�b�5�a(�i*��d06y���~��3����yﮄDr(�M˻^�sP�[��3���فӱ�K�H�\��]�d ���Œo)\g�r4c4���������ˎz�`#��h�ԧ.���{sK�?ȶ�y�T�,���؊ucŔ��_�b$����|I�z�w�h[s��%a��d���T�S�˥���� �Aטs�؎̳C._�'́���m��Z�)�}��3鳘�������������/Ų�����[��lG��k� ���S��D�K �|��n�`�&��Y/�Nb4N��e�q]o�AZc
�6�I�Y�	����8z�M8��f0
[�
8pM�l����S���w�n��.�*�W!qm��-c�=ẓR�x���-y��b��إ�.����y��7-�Np�o��ST��PZB��$�)�gQ�rƝ����dz�;)�s����d^��rCg&�Va_���aW���������[=^'g�1J�,3 ����Ș�N�.�5��z7s�j�G0H���\_m��b���e�pZ�K�~�� GΞ��+�'����!-����v��n��X�\�n������4�!��mwKf���e�%p=�<vî7_7�_c�����ɻaSw�	l_� ۖ�W?��q&�G�������ac(�;�%��г-x�z��9�A����ԋ�cdےF�X���h���T��[;���@���.��^v���n���>~�����eF<_B�S�4ۀ���>^�o�k���+�&�������Zؼc��	���]k�|eגH>�^�ݹbk�_��K��bAq�ҍ,a��vv�!�)�C���n6a$Q?Y:P�������9t��b[+6s��4�Ď��yn�g�'vq?�U�g+�!$�����9��]���Q�pޱ[���~4q��}�㡱+F~dv�����L݊ݝɿ�8`�Q֦����X��a�9ٮC�zq�c+�ٕT��]��X�H�-��^f�X]�>��%���0A��Ό���Z&Cٰ�����>���j=��s��9��ݹ���ƶ\�	P��Rֻl;�C�ӑ�F�>�n�ت��a��#��;NTlI�xU���:��dyݸ�++�1l��_�i]��|�m��M�*zu�cX`��:ߠ�Q�zj0jF�/Ul����R���܆�������){7Ua����n��׍�s\�k�]`��a�Z�e�ջ��!�������9v�b�{�h�S���_�?Ǐ=���8�������$����9_�}x��m�_w�a�>�^�۝g��"�煝�8�&�?�z��t~���i�-��S��P����4/�;��'��~��DS�_���d=-��W��Mu�w��[����g�<����Q�s��Ƙ���'��w�2x��q�E\9�G�&�Wk��{�Hx�N�O�L�<>���������ϸ�.py�m�M҇4O�ϻ�G~�m����2�#>cʾ
������9�QC�����x/�6p�\�P��L�ni\pK�q�SF�P'y;�u��	���R���3�����׭�|n2��Mk�8����8��q_�K:�˙��0�a"�9>��£a�%���eW�y.������_����q=Ʊ��s~��+s����{|���e�y~�q��s�����R}�!?b|w��k<�|U�/���g�p#�=����!N�A~O�|�3�k�T����Os~5�`:p�]?�bj؃_�?�O�Ǎ�<�W�	y�>�/�����q1�ܕp��e���kp*��'��l�o�y�T�ne�̟s~A]���+kҭ���Z���P��]��B?�:��^��[���Q��g~��ɟى~�?�i|$c� +Sw팹N�q���U�Sf\6������%n2���~��4�K1��Wb|��:��l�'>�1���q�Q&����z�Y������J_��fr�oh ���Z��l�V��M�qPW�Q����q@��'�C��c�}��~�X�x�|':o�?���J`i>���p�����Y�?��S���H�d|�paG���`/�?ɮ�tƼ��XJ���Jۙ�G*�9����.�e��{��޺R��~�֋���K�O����)�jL��Z�R�S�A��s���,8}��q�r�?@q��m���m�׭gQ^��ewW�ˆ�}�+��^��+��a\H�q���2�l��"9^O��?1�+�kM���}i��N���<��Aםؾf0�@�f��9�ؽF�$H�-�7�:�+�}��-����d>V}��	�O�~0�㌽t_r����+l�'�C�M��'�x�3�F�S�=S�W�!�R���m�`�ƹ��B�')��@s�*<��̈́1_�1�TAN�?R�~�75=uV]�.�� \�<o9f��+a>Q��>4c�z�L�������QF˭H=�`o���d�;�/��eGL��	�W�{v\�=<^г�{b�"�Ghȶ�8O>Q���֠P�2�wP<���mE4OLԍ*�]�Q�I,�L����������	t�1�d}v�R��u��s;��^J�8���kw�������zü���'�0�ޯ���{X�蓻�E}��Z����E��4��lERA�����;�:�<5fθ�[������@'�1Nԭ��pK}��y!���g���� ͥ���[[�Z���~�P�~�y)��5�ߣ�N<h�щ�\�[SB����F|Q	���4TK���(�&I��4��ҳ�������nQR>�����L�Ѹ�[���F��Ck��N��u���{�J~��?��S[O��̪j����qֿc,~���Vt�z�xN7���l����V���_j���i�I�;�+×1)2N��>�Ss:}�������������?����R~_@�,Y�~l���p�֩h���� U�˗�.��aȼ�Mo K���.��-��)���I�.��M�.C�[��i~�
t�~%�%��=�.�#�� � �`r L�1���ac����x?0����` ����І�7 ��ߙ�>� �@%�#� D
�0?�E6�����
�����1=���e��9?�M���y��[z���g����|||=}����n���\����=����_����^c��q�G^�����z3߁.F�׿�Ά�\��$ ���� J�h�c;2f�ӿ���u7�f<ޗV �X/���}ھ�=���>�cc�_]����o<	���|����d	zv�-��{ VV�� �`�ÿ��󯠕0%�G�0��q�'�p������q�?�);��2>�`�(�����	 F \f�F�_��o�+1`d���V���}xy�>7`�.8c��'P�g�.���V��/~ ��~m��Ǻ�<�Jٻ~6Z=
�>o����kZ��9�60a�~}�)i9s�S�<���H�����8��3���2��d� '7��K� ���z���{iX����z���}��O4��AJ��������|2���<�//�(�!���K�j.����<c��<��nv����}��}�����OէO@˗@!��*�߇�y7���T_���2Q'l�smX�~���z��z]����P�}b���+B��J��|Hm2��@�~?��3���ToSǹ����9�;��(�\@ ��nP�y_���us�ىg�yߑz�릳���oy5n�y��ȷ`\�<?g$��Sǰ� JYz�ٴ��M��Bު|�D|��rZ��|��.�W[�x�<���!j�ר��4�����{G7�h�\��:������\�ھtx�Y�ǝ:�[��9����$�i���8j.��     �=t�
0J�a$�1�J�3r �w�#���e�~{ ���U�I}���' P�J_c�n�RH<�8���>���[�{�u0P��΂Х�Pb0�-6T��,�3�p�ќ���[��@���޿�>�nb����-��獁%���k��xq]@_0���b���a>Y��ƭ�.�-������@�ly>OY�X�����z����%kP�;C��Xp�6	��ධ���2�n͋c��FP!�]ƾ [@�A��]g����x���c=�;Q�}�#��������: ��~��?�7���;�� ������9�����@ 0`��J�8?��Xf��|�� ��C)��BD]^ ��@����b�;��xN�/�_������?^Z.6�l�o/�D�ιq�p�xs4���ҵ�|>u��K>����.��h�c�������5;_ap��n�O#�G*~F����d���9_=o�-6tJ���A1�[P�_MmQ�Ϟ���d	(�cb?�z��+�f�w�K�[� _�} |�����e�b�ٓ�!��� H��,����[�~o�O��_���G�XW.\�+�e�㵟q ������d�W�Val<�q)��]d@�q�zLM�����e��}�.F���]��0ٸbQB�J��E�9r��.
�0��/=��Wk÷��O��}5&i,�_od\u���-1�����~k�O!��0�}�8�6��P���Ի�+�D����!xE�j�.�n��=:��m2p$���ϥ ^��p��[9����_���@�9�u�}��l��e�sy�|^xW��ϖ�H2�3ȋ$���F;�����r�t�'��}[�����2.7�u�"�|T~7|gv?�6���r�9���jK��}im�� �ڸF�0�?�@0
�<���ђ�lA=�O	U��iFA���>yU�/z5H!��编�ȦPՠ�?��b�Ma���E�xT�-L���OF_L��E�3��f�t��X�����cݗg�DS-�4h�/�)oA#F�#������=�)0� �R�=��3�>�_d���	�r^��̓�_����?��ߣ_��S��aޏ}�,j>7��F���D��(�x��aՙi�؂P2�j��A�������F����$Y��Qh`^���a������ߕj�oFC�1 f��-a�x:Ó����}j�� ���}\'�,���g#�3H$y�N���~�d�W������������_��2|6l �qHS_�@J�l�d�}�5���.n�PUv]ltal��X����r��ߏ��S�+�+����+�� �t6Jx��`CZ	�	����nV ��0J��TK\ݢ�X�Ɲ�<~=�wO6��'�j��3*���g�Mh�_`�r����� �� ��g�5���<�x�D� Pކ��8�+��bV��8�' `�(�#��W�ʾ�@Q0��F%��Pu�~7�	�oQ���
�߭t_�O��H�W��a�J#����7�h���״q!�U�wE��@�+��:��],T�ٻbоb��|M�3\���h��1�N�T[�fH���l��C1h��qbl9^m�@*����&�*�i��6�٠�}�/.hf�q�4�l�0Zgǟ�� h縯<����^7�fڄ�励�@�����a2���n��=���ۨ�x�.m��<8.*�)�^My7�K+b���W�|�&6i��JF;Gc��IQ1�{����s<�������6��y_������Z�0��$��K+A' ����ϯ�?Ǐe�g@�����}���p�}h����/��Q�h=�z6�ƽA��R� M���6z=Ϻbº\�]��:b�7�a`�����>;��!�O�T�κ>�6��l�m�������`�߇��'��=��#.��D^�N(��L-����	�a��h7�<`�F�d���#����c-@&o������m��<��kp�A0������P�߻�ђo�`*Y�o��ܟ���[O�M]%�_	�]Oȃ��=��Ih|'ׁ��J#�؂j�d�е3�����V������~�����'�~ �����������kwqo�[�� �� �8Q�A�$�a~� �Ƞ�U�u�%x���㣫���:M��M�:�2&���<Vk4���πr��:����DX��ܸ��%@7��G����w��;������� �"��:��2�d�z^��Y��������,���W����?�?���f|�O��,������D������<�-ϧV���9�������#�5��[�Z�����r��� �f a@�Zjԓ�u~�u����G�~ɯh�ϟ�_(/���؜���uֿ�7ԈOTg܂TlTV�7�z�dPI�e���z����S����|T���u'�Y=\֑� �4�=��2�b�n"�궠+淖�弨�t���ɮ�H�e;���������դ��5�v@��x����>�F�j�^s3w�ID��Ն�F���uN%~�xA��+��[��H�'��Dr�>�흀c�=aO��0���r�����x�<�1@#%Z��?Gt�P�T�����g�?�����C 4�������ٯ�lo������4,���� ���Oy�
�V=О� Τ������`��?�F��qz����n�#�@ȆΎ-�n�wuLοX�f=�0��^j��]+�xw�~���3��s 	Ӑ_�Z���ߧ>&#�wp��]臨G����b�����x� �2��pz��d�^jO֥Q/�Y�ShZ�7��P7B�Y��Y���eb�8���n(}6�!y���h`��0�7w�7�бN|a���,��Z/1��T�b����F�Rv�j�:��b��0�� ̜��Q>A�Վ�O�s�$yI*�Þ�.��T'�>Y3��Y�4�h��)�/���|�q�ݔJĦ.b�/�&�'�9��x���?x�4hCq�'�?���>��Gr�rTF�� �ƺ��KU�Q���} �i��uq(y�<�P�~�x�&�����ɴ*���N� ���O��躞��S@}�{({������N�^��=�]@�;��z�'�*{F5ؚ��X/�x ;S/p���M��S؝ 1t�k�_��Vkә�ۻn�vi���~�Rp�`��қȧ� ��g.��4�o�=��r���C}�\��=�!�I�h���|3�Z�$�Q�@�{����,o�/�#.�3�p�޷����e�����G:��-U"3�r��B�`β>G<H��V�{:���ihvP��y�z~ٽ�iȏR�st͟���'S�R)h��	�\���!�w�Q�r�_
p~K�
{*~��D� I�P �駥��@�h`����uݮE�~hv��)�xHf��c�3�W�\98�x6���ܨ�����]#�o�[;��a_W��F��}��R�}����9hnt8إ]4�ZtOO��z��L��Ǩ7�%ϑӦ~2m8����:�_׺w׹4����g�ny C�k�*�����E��`�IJ��҈Ku|'�s�/������/���]t���7w��d��Q>m���\��uw	(�ۗ�o݀m�+~xݓ��C[9hԣ�V��oQ/���]��}<�����d���cH?@]��b��5�z;��9E��ћ���ϵ.ݺ���#�c[�)�������a��?���J�?��c���F䦙��q�
����� f����Â�� �( ��{���`�K��ǟ��!T���� C��PC0TC0TC�)`ȝ�����o����������rPU��U���-��c@���v�y��x�StZJO��[<?'��.X�{�����ta��<� "߿@h��v׭������B������
ځ���M h��=�d����� j$h�)�{�ف1�_{}    =�_[ P�h|4�����~�|��
 Z���� �W���_AD׭К�a�'6�U���.�P?DA�+B`��a��˾�_/ v�g�A������?��:3�8�}{u{\
���ẙ��8��ؑ<
xߙf�Fё;E�&��r��������? `�����v�/EH}l����#�ns�u_�ھ��gN	��8^��D��~�0}�/�������5_�>>η�"��`Ѫ���%�;�7�AE�����uf:q� ��6̜W��%�Y��ŏ_�xG�s���s~�oB`����&��)1�]��ab�����o>=.~��fsݿ�~c{�{�ۃ������z����[�>P�=���q����o���Wk�Q��a�[X���$@�*6���v����u;
74.�R��f�&���yC�$e�^�g�E6�&��X������6lX�맸.D����
�|�|�q������T�o�?��������=ŉ��_/���:�^�q<��G�q�Mm�Ζ�[ɓ���b�o������$�0� bc���e��
���˺���5�����<����Glg�8��G���8��M�WE<h�|.���q�G*yV�/ 4����- ި`�)���T�i�����R�s�׾���v��
`� �=�������,����+ί}׾r;�W���z��.��u���}���y��J��k��'������	&����b�K�_vB��G�-=Y�� �p>����u��ԁ|.�?E��7�/S�9�^���?q��g�����ߢ����/��\����U���F����c_��F5��Ǔ��߭��v��6�ԟ����8_�'%�������G�X�'��S���OA%x�O�y�a������X�� tcG�:�b7�����fi�{���7~��j���pvv����N��}�t�=�����v����l�8�q���K�6n3���:�_�~i��O����=���k���������u�:�;��8����+t��dy�;�y�Z����}�7�6꒮�_=��k�u+���Y��o�F��=��y�5�Zqپ]��%ם�ޟ��}e�� �G�<�Q�������~r��|�wOo������i����a����� ��a�2�^օ��^=Z&�q��q�{~cǦ/g��/� ��UA�~sr�{���~!Ж�� w)��?����`t�Yu�K���>����W{v��~�K�o������>����ƥ�W�����ո���E��F0���/�Z����K���Z��oť��׸ԏ�K=^�j\�4kV;Y��W��8�G�G��E� �kv�@�Iq&�q �P���^/d���z�_,>U�����/�`�7�O�z��0�ú���C(g���w�{?>�����F� f㪟�d��:�����۬j�l�����mn��z��nă���q���k��q�o66��q��͵��5n���m��{tӬK���7��W��k���/�.��$$��ɼ���x4X�uˮ��u�Q�����?�|%�}sݿ����ye�?��k^������@=7H�3�@���r܅�8шe'��ϫN�w������˙����5�R�.?f���,>�o�q��{��r��/��W=�A�i���A������:�?jX�=z�X��3Tr�#��"�+K��׵�_�H���ò�uk��r�������������9>�>��_t�^ƺ��P�ܟ[g����(?�_��	�ۗy}p_�e~��yn��\�������o���s�����O�Y�����7���٩1`B��??8��v��FO��h��'�+/��Q�t/�C�'7$(q7��ӻq X�U�t{� \�g�ŧ�l?��67T�FǩpL޾���ޟr �;j�ۗ�j�cmp�>�����{�ܼ�ܛy����n�ϯ�X��]��g�����  ~^��t��ԕС�N�oB�k�C'O���ܠ�:s�j�\��~(��1��ͤ&��a�_����2�1��������y��o�E��}��jX���#�y�����zk�q������z��m^���r��G�ls��_:���E��u��ƎU<rb�R˽������9��`��^��a�� j/qQ�<�>���K-��8w�K���� ���ja������?�˕���7�������+5�|0o6�#���ͯMn�;���<�-�{��w�G�����0?/��F�8Ѐ'g�>�
�h �T����iIf����w�����<ZO�}��ԞJ��l��d{�߹y��a���>>��Y�N[<\!8� ���C���ߝc~�2�c�����Ë~�7m�s��樆�pT����&\4�e<^M0��.v]�upc��<�-dL�<z=a{��?����s_
�<�4�Mn���o��us���9�1����?�:���݃��8��a�/oC|�\�a����Hj|�<��.{��qi*��m~>�h���/~���ˬ3n詅�l�#��j����"]�������?�:�k?F��qI5��1��e�7�?��uM�8�� ���_r�j�8�W��}�RVļ�:.�XQ�)}40j�Kθ�E�O���u4C��c>~o�y����W�8�&w4d������_��1������'��>��p����[eH�Gny�[��5��́��������1�C�Z��GW�n�g�>����g}�!�mi��~�|��+��WHf�^��f�l��_s=����7P�y�ߔ��Y"Զ42��ϙ�ӷ��k��v���7�9����r�����El��~w/�[7�v�5��9p���ָ/(Ǽ�4_�x�~4f)}1F�����v"�iY�������<7G��2`S��v�?�G�F�ة��e��R?�vHϫu�6���{>�=�}������+�O4��57�cv��ZF�HE�'Nj0��V�zx�t֨��]�DGvӵ�	"�}z��'��ɧ�/j������W������ɪ����� �`J��}uvH�ϣ�>F2}#�/�1b��Q���,T�M�27�Ts]M�h����N]ɣ]�h4����_�udٯj8ޛ��i�����e��F��O4�h��-���,Քjd}�+']��F�0�n�{��g����+Ϲ#_�i��bWu�ߨ?�|�>��y�C}�?�]�v�����#jT�qLcƑFo*
�h$����"U�?��t�ss4Ծ:_�Y���]���zN�����D0��nd���9�x�Hʥ�84j}��F��xs�4
2�Y�ذ�IbO+5�}�wbفj��qA�P��f��!t]j�ի}=+��N�E��1��CǛh���E� �xN�@�&�A��������9�4�!�b�����ƽfvY'�5{]/4�/ra�*�z��ח�Z��>/��;��q4��=��ST�1��'�������hd�G{7�}X�{Z��j������A��ꢱ�uŋ�G�4����b�����2m�˿�{�Y�:��/��/y�x�Ft�ϭ���G�3�7��ػ�FtjL�q�i|�u��T�6��@���4~��\���=��j��Ʊ�k����I&��(����z�~�����_�4^o�$�1�걵3�h<L�P��܈��q�l�v���GSw�@����k}P^�����Hݨ�x]F�1P�7����!{=����%��(O#_��k�*�q���X+P�iԘV�c���$U�q���۽<���qr��G�j��K1����zǴT\ȷ�U�?Ff�R�ĭWu�=��i��]����-;aiL�{��ɤ�M��az7H���~���ލ��������ٍL�����{�%7�V��9��s��|o<_7w����wM��?����+����J3z|����߷����/}4���9�`j����X�q_T��8��3�bg϶4.'�F��x��ζ�_���A��j���1�g���#��d��_S��_C�w�OU7���ƙ�G���v4���Gcj=���;��n��k������    i=?�=�#Y���>�W�y�gM5z�͑'f��h��e'=~�����c���g��}�������χ�F�7$����bs)o�F�}�W��;����J?�胡u[�/�G���̾�y(t�]���u�Q˳�ӑgw#t�jK"x���ⳊӓOvO0��C�Ui�N�KMT�i��Ĝl���p���՞�a�&�	#ur���o������zBS^�z�eԕZ�4.'@�);G����Rv�6E�v�?�R����1�F}~4?2�#��qZ�^����۹!���J<�wjd�:���h���1v1�{]�]�\��ϟɑ�Z�݇�����}����Q�Y6��'�U�jXGF=	�k�3Zy��?�y����������{�>����u��p��c�ǫB]��5O[�یS��ϏqMc��}m5.9��q���w�m��z)vq�]�m����G&�G��s�]���O�x6�Yՠ�xs��J�5=;7�U�M�~�bJ�a�v�룓��6x;���h��/�"_�q�D���|�<ݐ��Y��-e=z=Gt�4��Q��lo�^_=��e�f�g�ǚm?�na��a?�[N�KC�D��Ǹ��o|��s��G~���D�Lv���8��ր�y����<ȱ'ϩ��ޘ��O����8�x��<�?0O����L��1�t%�ɗ���]=�X��d��Iɍ�YO<�o�U�6�c�T�B��W��� ,y�4�����YG�O�����}�u�
�(9���g=��۲?h����?v��?����}��=����S��<����?g��.��������\;�����ҏWix��.�.��b)S�¯�<�7��g������>#N���s�m�Hw��Cؕ�?�] �a�0�n4�g�Q�Q�u�#��K��Z������/��5�Y��|t�-����Ww�웲�&7�ǾӺ��&�����r�[�?��JX�9��=>m_��5^;�O�/�\��G�/d������5>b|��o�Ĵ��}>��'Xl�c�hl_�A��um=�u�G���v};�u��ٗ�_�C�Ķ�g�\���g�[Y�������E��1�S�='����/��������g���t#<O����.{��'� ���K��1���sg<:?ߙ����� y�5��>�n�= �VϏ�������C�70~[��Kw����b�����)������������)��������z|�/�G��ǃ��5O~��#��������:�ɟȾ����j��zz��}�1�������c��r>��U�_��_�#ؿ�S^�?�g������n~^�'�r�_���;������}u�I>��/vY�s�:�s/FG>�~�/`=׾/m>�ٴ��&�^���T-�����ZhF�'���iv>���/�}�O���)�=��}�bo9.����6����LmQy>�i|��>0�S:�>�����-��'��x��������n">�h�s"~ұ�iV����}.��/���|�����k���gާ��`�A�#>�x�l��g����{�.���z?q���ݳ��s�mR�ŧ`1h�J�aV�a���'��/���X��~?�3G|X�g&�p��~p�����������]����u_���?��p|���<
yj|x�	�4~��>a��Y��!��3{��\�sd����mg������S�t���m�7�^�W�|�p�#��O�L�����>e+��uR��_����{t������~j{��)���!^��&{J��z�3˯�{8��Ϩ<iO,� �|����[��c����'�{d�.��+��⋮�e-��.�r=W=����U݌Ɓ2�W86"���<�w��k"j ���>�!ޯ�9�ؽ���|���]��k�r���ۢ�����#�H}j���?�|S�?��W�%Yw�S�E�����~���:�WO��%�<��j�?������!E\��7��YT����0�>r8�|��'۫+a����|�΄�pY�-:�^����n������w��u����Ũ0C<����?��F�o��K�]���xP�#Y23�L���a����iU�C�U�J��άw�Gq!j�u/���x�^��!S�{S�{��?�?;O}���$�s*y���q}:�f<u�3�o�k.3}����;u�	���b,%���`L��Fre%�@=�\�+��/hY�8��U�;GН���v�Ay���Djv3�7=8���Qޅ���|�#}�{�ƌ�$W�1��e<��3�#iO�����~�>>��,?M�=�M~�W6v�X�3�cP�Ju�c)�3�/tr�s���� ����:��{[���j�o�Au�sL�؃����e�SPoq�������	�0���-�3�&��6PG��I��p��l����r}�8�Ⅎ��7S�H�DΎ�M؁w����	�j�gc>S�0���zG��z�M�4��Xqb����mW?޼ͷ���c����?�-z��k-���v��@}QK=�^����/:�'֢�Xt6'R=� �5Y��w��#�r~�n�7/y�������^Uq��n��:�Q����g�Y��:쿾���[�٦�X���P�q+uׅk���y���9�Ǳ��o��%��]�э��O$/� ��RǷ^���w��Uy���/�Ȯ���uOs�=E�ª�]G�@��O�E��/u�)��n��N���QO��<[?�z��e���B*�B��}l��ʾw,J���N��t��$ؽ�]����/��w�x�������ў��4��?�h�6�?����[=5mӎ��_sz�㧇����Ԟ���jN4���������������������\�����_n�����=N0-�pC?��낸�Y0m!τ ����6���Hb�xU�ՠ%�E�:}fA��Bg�_4����oYE^�� Ԃ?�b)t.����?��<b��8��}��Q�޴q<��"tH;A
� �9Ӯ�F�BQ]�^_��N6��d����cA�\�*�sQY6�a,��+S�Z�d]��(
�b�,��`|� $������U 2�a׉�hv¯�:��;��|���Yh��������d�nI(�>���{��0c��l��>.B�6
e��Ȃ�'��gk��F��$�` A4638���y}>c�Xo�j�biL��z9�62 �!xF`�_��  �<��&'���UÅ��K<�X���yܮ�jzm�{�1�ן�߂��a�^��z��4���S�M�O� ^�b~��.�Zݷ~&$\t5 � @�ܨZ��"�|=�"d���Oِ�r�X�
��)
�)�����O �2n(���Q���C��@
�i����MJ��w�(�Od9JAJ���QZ�� 9�V�7X0�R�lЖq^�3J`k�f��[��1���{0,�����y#�M8.�.����:Rj��bS�#)�'a��L��" \��"�Lnds[����~,@���$`�d�S8��tC�����0mN���)���0�}�]���pԵM��%[��*��d��oA�����s��t��@��6 �����8�>:?92���H����_@dP�b *5G��n����!\��{z����>�ۏ�;_�Yh�oT;���P><ηAg� �ua|�B��ݜ��pg���\�%l�@�N�(o�u�0�F"7�%�
����̏+ ���|>Z���8�VA�oZۀ�,��y�8�r����y[�b� �/��_س4���y�����w��T��\P�+@d���/�2^��(�k̶{���/�����-�(~� ��0� �6׵�S_>�}?������瞁B�  ���$���[;6���u�(t:z�Ąx���l��� ��um�_@V�AB�rg�e��mp�3��	$t6r��v�h��V��pi�N8��4o���zr:��S�K�����9�#G�`������Y��W�~<�x�3�� ^߼��)AxW
Q@[��e�[��o��q���    ���ϋ���u���=�#�����%�F$r#���������:6�U���tT�I�! ��q��v��s ��C��E�@'#��$n�)(;���?�" �9�-�`I-�܆F?� ������I�D"Y�ϴ�G����9�U���	�e�\�GC�\�2�`1���;* ���,4���D2�EJd:E��_�@#�+�����P�oJ��`�K�c� ��X�(��q�?�_~�T�_H7q���{�� ��e?Ν��wB4�?�tD7�*�%�q�W���@���WQ ��z#���0�w^�1�)�a=��M�# t� F�ME�����wb]�?����OZ����Bʸ��p��q�V������z�> �?<��&;��� Y���SH��)B�	pH�y��[�xV�O�g҉��}	a�bo(�DaqO�����~�s:B���w���w �w�0CK��O?ı4�ݞ�����=;�"Lo� ʠ3��0��F�=�*oA?�z� �)yIn *.P�:P���e��'��B��3o�!����#��5����|Z��J:?���]�۴��܅^�T�V��z<��q�|�P򶜿�_����	�?��W3�i&_�� �f�i�/+h��|{q�_�6�s��f��A��Ŋ�Ba=��M�f)/�u�q�~/�>��x}�@�'�%��(��� � �A(��^�����;i�_-J��4�(?DA��g���`5�X�@ն ���Au>�N�Į���,B�5]�����`х����Ʌi]��s��(@.\ł*�� 0J�n��%��v�=샡c��b�F����1 �F> �|&F�訿iy*�G���T�3B�)@�'@<*h�ˤ}��F�C�S��Ci"XsP��
�/�9�F�A�BD��M�Q����|F(�[�f`vE�rM�I�TF��l*n0P�%��V��u̻�X zQ��LB�̮7@ M!��D���D��3�;�̠~����y}�w�@V~��d|�7��������)�a:�SF؅p������ʾ�9�ߕiz<'Y���
�S:�W�Ayc
��)P����Z	0T�K��2�)։w���녬�0�3xl�Q�7Eޑjl��u67�K���(����k
pȍ�,��n���0�Yf���	 ��Nmd=D�(�󠊄@(dW�h�l_@0�{%���f+ʺ�4�{���� B(�ґ�z�� խ��TG} k1K��-!$t�>B<|l��G����V� Bm�^� ��"�!/��E|���</�-��D���!Z� [Ƚ����dz۽Z�����DV�x��dt��_�l�!,��B��ה����[�V*��u�I�5��w/ToT�_?�҈��Ch��)�7���D]��B����C[D����Eзݐ4���8.�w���L;1�=(� -�}cx� 4E�� ����HQ�Av���j�1{�#
�|�:'!\�1>O��	!eg\B�% ��"�L<'ɘ� �GBx��$<zY��q́��p7��<Y��.@^�@;����H!�� O�^�� #G:����s;�CD���G������~�R)R2l-�g��1Ͽa����{~[n�Z���0)�Q�y��X�:����r}�3�ɠ�����B�e�w�ϧ��y<�K�z%�u�s�F<�������z�Ȉ�dZ�oB�9{a}PV\��I%��< ��ϓ@��$�w�N����C� �b�(F�C������/H���e'4�q��<��%�θK0�` �`�|V�,#�t<��t�	�����5/Y'g쩌]��\�ސBx�"z�=����!��+� AXc��1���?�h� @0	���hi����w𞼿v�hLe��Tw�c���nf��(��y*�� 0�cO DM�Z����?�1ȸe�a�}�7���[B?�3]�+����ٺ�|��S�{_X�2��a@h���B몢���.  c�A�N�~�	̢����% ����>�b<�'>�s�]$I������=�3>� ��f�i=D %�"ա5@�a�d �w��<Y�8�ƙ��/'�K�9�'BL����P[�S5ی��B��;�+���/�����Aa?
�ڧx}!v� !���9�}�U>W@!�7�/PZ�/���c+����ƵY�X�����~��?�	���N8�3�3n�2 ����V@�jT���@#��	�b�j��y��|j����Ԅ��5�'7��Y����������G���2=�f ����B�9^1\�*@�����F<�!���!�ů����-?���U�:�>�J�aq���Pݼ�⸾�yh=�"aPQ��U���w~���W��r��)�˂c�;=@��a�$??�;�����4���.Q���y¾|:�� ���hh��5ژlϯe~�o,�&�_@�{P'@��RRl_�e c�9��7���]��*c�'�g�P>�"ngP_@��Zx��oP��0����{��2�?�����(g,�����ad��+��W��x��-�u}��x 	}d��A;��e����?,��/���e?�jĿ�?#�3s}Cٿ�3=��3d%�i;?����52�� p9�f{T���?��/�?�ߌ}��zz��?2�8lq��i�l�J����8�\��}j3X�)�k���� Zdg�D���@�d��qq�.����3?������eG>�L`�}�Q�2$��ϯ���'�+�W�0�׷y̌����*�[6(�F�=N4����������n��������H �5�
f9!^����\���O���?������;�l�2�@�� q� 1��X`/������Sk�FC~m�뛏��{�����嗕��}<����_��.�_��p]\��{�]�~\~�y7P�q��3��sFBU�^����:5��OD�"�欼Po{	��XK�$y�P�6� ��u��@+ۍ����	@Rfo�x>�?ʷ23�W{G���C�f���˙�eV�<8B�x�hPf�,���C��4jl�� �h�7�+��C���=[��&�k���O�U��+�g��߰z�_[�4���Cs�F&�W�F�:�|��o���:�|��&Ʀ���n\����C��*U��7ȇ�9���1�N"?�&>?������$��aOaqo��7�]��b5�j�C�7�*��د�#]��wǵ*+^e]�SP�e}��yX��a�2�*$_J}�����^��Yy*@L�a;��0��V�y�Ӄ6���w]�ԍ R�/��<,:�(�xzG@��PKt��'�sB(�э�.�"؟�������5�όn�&0��'��{�l��O����y�%��Q@��`���mO�_�Z�V�K9m�,���i���:�Zo��(�x�Ư��.=yܦ /�!��+^K��:��	�:г#��5�xÅ�=�&@@����/�Z�_Y�n�(�"�<?O����wv4@�=����_�ܔZs�-4�0T�C������m�^B���Ô\��C�T�\�/$�s��ă8��O����d�\��S��Z糃� XD�$���ЧD�����n$��w~�s�8����|3�n �Q��=U���)y�э����T�k<�4x�x��6·�Z3���l�y>��%�naOZg���,ϟʷ?n�o ��Z�ⷠ��^;���=O����r�i�A=�.v��h�K]Nѻ-u��׭#8]"�!{k��t=�S��0�.�]�ީsQUv�Z����[�_ N��� 	��3s��ހ�.q��/�`�ޝ:���J��V�����;�7 �k���\�` ��Eo�����G�=�Q��D�ª��E�ܦ辗�����FQ�a�����~������w4G ~ΰ��<�����7����r [��g�n�[�q���4S���4    ���?s�1phhԾ�᥶8T�C?�pW.F g����c�C)�t6�:�t��ՁCݟ����@�ހ�
���
���
������!���b���s�p����{���@�ݎ���Z�w��1(g<� ���SW9�.�lpy�1>��;__/��'������B̛=�h.�t����|/��(i��
�h�v�P�e�;�.�Y�~b�=xN���ir��ހi �ܟ��w`!>\P~c=Z���/k�m�Y�B���`�Z�P�˿����/��HBX���?/ ���@4	+��`d\AB��2>�Q^�r��^�Q!��x��e`A�1��@"l���S D1��sx�|��7+H� s�}�	 ��Q��{pЇ���YA*�ug�7*`��0t�~�K�ih����/x��<�P{ٟ���<N����2�"�
,ځ|b�j��X�+��a���>7o>wh�� ��/]���_��YA;;dP�z A䀹JI� i��@�v��:#lT�Z�s��;�A��ω���qW:���~��e���B;������݉ �䭀��&�<����
�)@��2Nv����P���S��xi�yy?��i@ޟ[��k"�������N����[�ُ��Rb��|�R��@����[���ށ�N�c)�a=����2�#1֎^;έr\�oN%^�������d`�����L���
8&���w�7��`Kڍ�7���>�C �Ju�S��Hqu�z��R �~� :P:J�L!	�fN����<���0��S��:λ{h�e�u_�{�	d �04�I� B�X�.]�Ri�$ʿ3~+��m\x�1��;�[�ב-UR����dY��/��X���;"��0�w����������������W�

T`0���'7�ůܜ�B��P=���?!@������K���ҟp�[ �O��/�m�������B�9:N��z;:�8֙�4�?����Q]4�x�#:_��� T����P�C�/�/6C*��y�l��_s=��v�E�rbC	���꒾z��a��sF�H�s�B��Ӏ@�-%��ב�_�������˺�t���k���*���'di~g�y"T�"�DHK������>y�~��u������Ap��u/`�pO'����z���Ʌ���7\���d���W��(�	��e��0�x�絰�t:{�3����@��e�j�S�E8G�Y�XO������昼�D�R��O�С1[�<`��8�P~v�������d��/���Q[w�P/E�U:�&� '�1�B���ȬΏ'�#�QV�SQ����L���)@hFبZ�� �fa}����9d;::���jtrtG�E�1h�D�M �+�t]C438������J��֮.E�v҄W�!�v!�7�w��# S�K�mO͎W��o,X�z�O�jZc�%U��Q���:y��~�P������"���p@���Lqs*�Y&�����a�EP�Y�!Lo ^rg��)O��ˏuE��N���P}�ё����}0\�z]Tkܣ�frGn�e���,8�_׋w�2� ��&ۧ��;uf���Bγ��<�� -���ނ/�\w��A����+@
�@9g �ah^�/W "�cB ("?Y��^�@-�K�� �`?*.��S�X76�9�P�?��~AuR�płݾ W<�@��9��3��!��`�D'�싼�p
���'::;'w�6p���Wķ�E�V��:m K ������b ��Y72�����w�%owu9�to2=�����Dw@"��C �:n�k��w$?߽ =H�_Be�\�`A�-?k����߳ߋ���P�^
�=t��-`�E����] ��#��=�Bӿ �̺��[ û@)��5}���F-P�W�-�������J4��!:OӁ\�����Y�*�xN�%�
ދ��	X�C�����!�LP���B���|� te�8�_�NҠ����wn^�^���E#�`�������B@���F����W�����!��x�m ���Ϳ�3�ѿ�?H� � ���`�t�:�L� �g ���Ͳ��&C�g��9g�`���+
�c�����~��䉣�w���
�^& Qe7�`�`���Z͉��	�������gc�hd��S���QVY�'DU�1pDZW�!��`�Cx$!Л%(�����X���t4� �d@Qwu,$� Hvė�t���R��w6W�r��B�|B8s���"01��WQ)� ;J�h ��h�;��ܻ"Թ"@�0�n���8�A�;U�JX,�S>Q��!��!��t���e����"� �@ 	�wXP�Zy��y�_i�a'OH�e!����@5��6 ,��V|ot����<���7�S; �W�x��Y��y$���dN��[`�!D�_��K��=O��2�Uv!���+��� Y�b�j��P�I%��� �� 1t��6�Q�?�V�q���= uw �;��"���n�_�[6a���]�^���4�����d�'��.�m�W�����w,D=0d���;�O�?��� z�n\���_���d��	���h�ʃ�������d��@�֭��op���,'>�<PA#�
��-~ @�����L�0��i�x�����G�u.�wR`��č�~��).�� \`GǾ��Cy�us�0zH�u���x/�c-���᏷�QZ�����F�v7�<�� �0���	X��@!�|��磍h,@"zB�3@�������#\��TJn܀Ă_�d<�}xB�+н�0� ��6���@�z%��ݓ�y��`���|~�O,x�wg ��l���;������@�΀,���j+P�����H���]�I�ӝ8��]���� ���Љ�d�EX����6��#�(��`�+����N� u� "pG���ԝ�����X���:��dd��A����,�r<���������u^���x�R�D1�����������2H�<o��ϝ����p�	@��'�cP�U���l tp��q�i�?��}d3�-o��<�}�_W�u�O�W|�is�@��D���q�آ��ӓ�@i���;�뮒�H} ����>�e}Hӄ5�S�|z��9_�����ש�O/�P��� �4>s��I��_ 	�(���
U|�Y�{Rֆ������^_��幑�%~�hM
��5�7�6���s�$��A�} ���U�8����'�O�y��G9����@�v(�����i��	8��N_��.@_����7�4O.�{[���ϻ�'� ?i/���SW��(wŕ�R����]缎�c�g��L���^j��]+�xw�~��g���z� �(B8	��~�`ϩ����8�Ɨl�����Q�������n���@$��(���J�	@������p��4����:���z��ߟ���1X�:��B�.�/�ř�(@
ޟ�.��ϵ����@*EP���o `�����Y�r���;�����n����F�Rv#�%T�Ș�-�,y �����&�ȯv;�)�uj'`�ZwlOaqo�Z�X`���Yջr�о�S`_*�Q��>E\�<������prc�?I<Hua���@e��$�M�[`2��n@��ȷ�94����.@��n�����L]����)@?si<����ح�/!�0'7D��g�iX���<n�p��I6h��A b�z��14o�c�ڒ��4(x�yS�t2���S�h��>��1�G�����x��R� :�7ݿ��)�{�=�Qٝ֫���Zg�Wf�� (j���[�]�<n��$|ɀ&"~pFoN�@j]β
��xߎ7�mi@�a8��UJ{������=G�!����`����ל#�Xt�7tɗ���}����v��H6�ܟ�%\�/�    �Y�ҜO����DT/is��9�A3@1����G7����0K^;*;�:!�Q�x���o �v2��Yr��:>�C��Đ���:�[���#;��ɪ=k|vM �/��oZ�k[�lξ���zR�^sähx�� �4�G���z�,��c�a��|���?�[;���0O��vug��}#�R�}����y�Y� ��B�6m� ��W=�(�<GN��ɴ�,���z�V�vQ�Ҹ>r[����;�_W�<ܦ�-ʘ]���IJ����1r��G0Q��G��;�z� ��F/����n�A7��-u|�����`���/��^��{ք��s�����[��	<��֟@����d���cH?@]��F��@_�r?�3P��4�9����w@.�0�A_K�ov�֎�0t�����G3uπ���c���<l���	CU���^K0Ew.��~`(Hp��@�/J?04(�w0�!`��YU�PU�P����ҼP�߄0�Ӏ�����rP��p�@��0d�X|�y9�n�0�^�O���6����C!a��ECM�{������9�=8��8�y�D�;�����{_�GL���>V��$s8n@�u�$B��x���F��9O�`fxc����z��@���h��m����" ��@��^!/ �����ￂ��[�u>��Xe�\� �CD��Y`��a��˾�_/�C,�PrZ��&�/~��uf��q6�����XO�Α��E'm�_<w���թ�`��}�_��E܀b� ��^�K�� ر��`~Ѵ��헗���ح�]��/���?`��x��~&����1���]�����x��/�E��~q֎�V��Q�d)�%N M�@P�����G� D\/�����~�{Yo���/���h��4��K|Dq�Ͳ�����>__�|��Y?��~�]����F'�C���#��; 걏Q���~Ͱ��w�t������?�?�����..��/=�]���u`o��v��������3kB։�tۮk�_���n�����e}�̯�ۜ��o�No������C?�˿{z��#a��=�6@�������}u �}z��o H�޼V ����B )y��Zx�l�����#@h ���b#�2��K��4��; ���ž{}X͛�i ��	}���EA��w�Oǳ��/*v�a�m�NЉ�e����z2�F~Oixw�\� +h�p,�ҽ���eW��
,���[���q����%_���%�
66 �bw������W��>������� �����-���} ҩ�H+���HF���4Gq���6�[�²[�(%~�����`�0�t�&��4jM$!� �
"� ��D�D�Ro�=��H+��� �"�� ����h\�7��쎈T[I�� ��G=�@Z��F�z R	��p���z� $��	��,�e(q�����H^s`/����.2�0.A\�[`��d?P�>	��/^�`$l
�E�y nΐ��!��R�E�M��⺡?hb�h�/2�	��f����[�t�}���`�0���o���;q�{t�̗�dX���� u_%���$�k�z��4�.td�-�`tB�ד'�8!@Hu.BT@���ڀbRxO�d�
j� ]�	?M[��9�o��Y�gh [oh�^&�T�p㓶����x������L�:	��ut#B�P�l���;� w�Fa��>�" �2IÉ:�� ,����5BC�v��,`�aO�K�g�ڏ��0�n�	�y�Y4?���S�`N�|j��s%�� ωy`!x���q����V�69�(���ޣ�H+���H+���H+���H+���H+���H+���H+���H+���H+���H+���H+���H+���H+���H+���H+���HF�k��p�G���i���G�=Ui^@�����"��6�c��0p�vl�6Ui��<A���i/ ��d�� i^�N.̞
@����w�4������
"�D��Wi�Vi�Vi�Vi�Vi�Vi���:@~{ڏ�=p�+�� xr�M� ���	`���?��.�����g]� m�_ ;幽�����y�������{} ~>��P�����snڃ�䲀��KK��V�s3��躶�/`���xx	�y=Xǝ�������M`��( OX���v��x:w�	��	0�X����{��J|�h�q�=��y?{��[�K��	P%������8��h�~�u,+P�����+���s���7�b��v�|za�r�p�:N��u@�ܷ�.Q4Z�r�:x'�ʵ���	�	�[X�	'�>3����$'���%�(�Ï��P��;
>�npa8�t%�,�w� A5ϩ�@�9�� �]�`-=����t�xT���8\�� ,o�@�e�\�׍o�@�?�Q��M�U螜 Aԭ��o��p��xA�k"���w��y�.(�ߛR�8g<,�R��
��������q�?�_~�T�_�vi�[>��x?�ľ|���9�� ^$ܱ_c����&�	Ʌ�:�W`H��a������z#q3 �q�{�%(���H�p�v #���4��6J�޽��:�u�|�D"q{����j��ᗿ����W��~/~�|�84�V���e����(S �x�X������A��n
Z���5���N��F�J�j�Y׽��hA��N���OU������D�ro��_>�8����z�_���`��</�-��?�<��
�� d��s<̅�λN0H��G�ɠ����-p$@�.��y���~ v$����0�h y'����)�Kj�� C%;p�k #�~K9�#���F��o�[�)�G@t����a޽�7����F���|Z��:����/�����\}����;0w��h~h���Q�����}���e�A�����хv7��Z�U�kW�^&�B���s��x���nyW�և�.;Rv����TG��*��qN%��_a#bAک���~��r	�ȭI��*L�0���K24���{#](��q(�LQ<}��D	�F�fQ��Ŝs�Z~vՉBqIn�m���{�W\�4 bQA�
>נ����� �B�i�����]ʮ�fY��y�����#.� �"�ؒ�3��+
���'�΀Ð�L��_�1ʀ��1S����i�lq$Bc�M��/4��ɂL=S��:��`�G���&d��5P���|��#	cH���,��u�r�@-Y���>�M��+����P���&a@\��o�5 �a7�Y�?U�4Pf�>Up������ˉ�'@ ���)�@�l����Bi͛	)����p* �}I
쯆����w��s `��%#N/`�o�Ôo=.hZ8��Fa�y��Ԟ�P�P_ �7g����󟉃�N�{=�E�g�~�"�Y^���� ���"�2`�l)��' -�v��. -� rY)ܗ�P� ፁd����@�O
��@�%�
̗ax����[ |���B��@�D<��> >) 0�[�4����!�c�~`�)? Z��\P`����ܞ�c�X `�^�S	O�	�(��!��@��#���q_�
�d��-��i]s�0;IB.�Ux�9d��=^5N �p]���]�d�K�$=(j-cH�u}�� W7 M��d��k�|-��@Ú�K��xq\�:K�<��i?��m�E�u�����9 ?Z7o� r����HQ�A��8#�}��E�sZǟ� R��	�H��Z���񥫳 G ��	�V ��#��f�"�GPy�'�� H����@7����էw>~o���< �}�w� PF>��y)>I>7 ?X fܐ�pqa=hy�%��8v��\�^�b~���O�G�t����_��,�coAu6���X     ��o���c�7��-u=�;�� �g$����(� Eп �L� ��z������ǧ 9��ʊ+�rR�/�@`�ƙ�X��'!�gj O�.����k��_SV�K�8�~�}:�9c?��5<_�3�Q��n���&P��� @�[�5`��GJ��~�3J
�:���}� �!x��p�% �����_z޳�f~^��(�&�voo�G�$?��x5��h�4V��>�S�����@c����a�@�����iH�J
�)�$B��6�}��,t@jp1v}��Wv `���3}��@�hac���u�z��S3�34x����UE��=np�m/�y� L�����-�GX:�<{x��φ|aɂD��P���=���c�~�ahUB�	Pak@�� ����x=`�����&����D���y�^J�A�M ���^-P5`��'4��h ��.@7�؏�����s�wX�lg�	�� �X��i "_``�j� �c>���6ɀ�ހ9�1x�#��_&7�����]�({�'ޟW�$Q����o�_��z *���d7;��	�GgD����~^nȑ�~���5��y�)��7D�����):��� &ʲ�bW�� a�;�0��-@À>m��(� ��:�Qd܀'���~����}s`ix>=���BdV�@I`d�ߗa@T@Jq�����n 1~5�珯�)@�a=�/ D�=�
`��U�۾���`�@gĿ��z��� ��V& Y��!c��gS r������)��$��7P�� �.��>}@����O���B]����ӈP^���\߲^l�^op���	 �G/�_[��=r��sd�
`�����/�m� v� x� �8�g������P����Yh�Ϭ�ZG �@�z�P�����7foߎ�(���/�U ����\�P�/���_�������O���`����jk���
`"{���?2���X�:��x"������� G�7aH^?ÿ��5�}b�ꆈ�=��߉7؃��H2R^��d� х�����\�~�'���Gy>=q�	 �lP#�'�-n�_Y_'�O�W��+���ۼ�]G{�a���- � :C�q2�uy߀�n� � �9x?��f{09�c��@g�]�� ���0����8~�h������O�޷���&.#p���8�Y�ζ�q%t������Sk��-vʰ�3O�w�C����/ ��?��O�O=וR�P��]��������<�"�&J�(��|Ѿ��u	���)�x�ir�����Q���?N#	b--�A��=Ɠ�3�'��	|"��l7��oe/����]��)Z �#�|6h�o�_hE�f�oѾℿ�th�u@	�!����W
��`������8n"������[�Ξ��H���~��'{W�۱�G�s�՘�	$�<���F|_��2�7�wr#����C $;cS�$�,�M��2�Ҙ͙ ;��������z=�#�����������:/Ies_��#�y��R�C���Nԅ��N�r#�ҐS��y�~������z#��F��=l͖u�ϧ v�K�#dg�� t�g�X�����o�`��W��/y:�[���h �qѻ.M�v�/�V�P[߻�י�UY2w�)�r��>Ϩ���c/������OV��gF@�j��z�@<�{C�{�l�'�f;$�GG���F����K�鬟č�]qn ����r�ɿK�T�����p�v�) n�����s�� z�EѩSϭz��x�=1�++]`���o���ո�gu�f-�n־J�*N$����YY�4� �M l%�c6���vK4�\uz{����G>�)K^�u��_H�)��m�q.���yn4Đ�*?,l�����0���s��ոDs��3�����-¾W])q��7�� t��p7u�n�j�*K[㔼�H�'l�h�8��Z�
� � "����n|�~�sc�F��I���ӆ �Z7�����f͟N��W�`��Տ�Ϸ������\W����
,�M�W�ɞ'���:�)o7�D��� �����'���p �׭#��:��g�7�D��0��O� �M�j4l�=��ݟ@F���KK]��Q�����D]X��dͥ�:��4�/q���`8���f���_�����;>��8(��:���KA@|�����C7p+�A?��}��,ug��g�F��O����k�ahN�O�NJ=YO
���'�~��:�9�s���h��K߁��:�>�TK�8�L�U��$��8��3��l��C�Qm��^O8T�C?�p�^�\:�����#�C� +�(�!�; ��E���C�;o<?
t��
�&p�Z�C8T�C8T�C8T�C8T�C8T�C8T�C8T�C8����S���� `W�PU�З�)��X:�x�����"6�H�nt�r�(	��ᘄ=qh>�y��I�Z@�W"�	0���+p��*p�7}2oY�C8���P��(O3<�2@��}kV�����g�8eO���!�Ӗ���W��i��'�H�D����6����H�+{��"kR�e=�� ���rN�_P�������a]�-W��[�=e�!$���
Ј�J^
X)J��Z�
��E� �UK!��A
�)C��2$�A���0:��$tU|$�1��F
 �B@F�A�oN?��&���3B,�n��خ��*�g���\��
#�y"P2��~����DH����,e�C8�=��ކF���2~��
�e:�ZH�c�]O~ܟd�O.���RJ�5g
�!�v��fo��(�}�� 2c7��ϭ�,#���@�=���$�� 
�;_�ܥ�" �#@}]Xj�,��L�q��gk�
�R�{EDz��X��Z.�Wgx�a:=�c�IhQ��[�\:�#���0���Sبuc�,���AU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�P����R&��z����j�|]�'�C?���N��v�u韧�-p(�P�4�*�����鏿+T1=k�k~���w��Y��������o����'0=��߁�!$T0=Zrcy��bz*��bz*��bz*��bz*��bz*��bz*��bz*��bz*��bz*��bz~-L�3��bz*��bz^Ҕ���4e��a�]nHU�[Lϕ�v�������x~H�┾�z��SȞ�4k���'�4�㺓�ӊ,�(_ �T1=�S1=�(����-�ak*��bz~L��eF�*��
Ȱ'����P��#����EV�.��_ӓ��:ˉ���/9#�����?F�;��F�f�Kk���p@ϼ��.���$sӚ��([jjy���q���wM�k%c����_z�F���G�e%GEƟ2�1#�s~[�욱)�*T��V9��α�2n��0	�:u�s�zx�.s���)#�Z>���)>r�*��5��>w2[�/;Hv�fN��D)���3y����WI�>:3F�*/�Jr�3������2k��~��;>��ev�����Tq�s����l?����u��Ƒd�+e���)����P��(�A��h�����{5�t��/ɱɗSȢF�:g�1�x����z�����<�)ǝY���o����e�;i����[\i<�Uk��`JY����oX�Z��e@����Lƥ�>ڰ����mp]�Ɨ�4$��ؽ�&��U2�H(����驘��驘��驘��驘��驘��驘��驘��驘��驘��驘��驘��驘��驘��驘�L����{�|��ǘ���fLc;����0���wB�ca@� �G�O>�=�lr����1ӏ�|������q��Q1�Q1�Q1�Q1�Q1�Q1�Q1�Q1�Q1!�c���������    �|���q;���{��<�|��W|Nq�����[�Yi�%�?S��������t�ٲȑ򦖹7�^��ߨ����������e�|T��/��P��rp�b�2Hf$����d�<�O���Yz��;��Tj�Kb>�/!�؀!b\Jn؀EPi�Yet�ϲ[�+׾Fij�LL�%%�%7k�Q)��!VD��׵O�r�y�2��ˮ�S��R�!��~�b9�ŉB��e����:a�>��@����o��e�Ye�=r�������<����{J��r(ʒ4{d����L]��e�<�r�D����Lx|#;:�%���r[�k��@��y����)�^������@I�#��:�!���$�9���s�]ͪ�"�;�m��A��S0v�|th�Ӯ����U��ɏJ�1 �2�3����]�=z�����K�n�����\���քpB����l�J��_b_�����
-h��<|����9���l~,e�э��r�X?�Gǳ�IG>��Pv#k��/j�}̛��®�|=k��^+�8t�����lG�C�W��faj,ǸZF�|��)!��������������������������������������������������������������������������G�G{JϘ��Ϧ�󑚱��������0y鎥pN�ol���|�l��uw9���r�?���JT�Ǉ��k�|T�G�|T�G�|T�G�|T�G�|T�G�|T�G�|T�G�|T�G�|T��_����b>*�b>��q+�"@%�������(7c=�gc�ͬ.�-�î���Y)i��e9Ɔ�%nr��:9����������0��[V�G�|�����s%���B���L
X�;R��fJ�A�^��_��7��S�ɑ�"�f=��J2f��i.{�8�e���t.cLKvb�h�]q��2X����8_�QN>b�Q�`|i����[]24�m�ĝx��r+��'-i�]�y����7���z|T�{4�Uf:��U���E�d�d�_��d�9��Q~wr\��V�Kߌ	l���!��LU�k�܄�0|H�O�&hn�;}�;﷔;���G�K��8�I���aCk]��Y�S�4���:��3I�˺�yP&�\����*��K�:��y��%		U�<G唠&��2�L9���*�m��!�"���Y1g�($�Kq�wG�T{z�l�B9l�(��Zpun����I���݉�Oct�E��FӒ�|mdlI�(9�|�1;����`P�Q9�Ȼ�q`l����g���N��j(GtX������v�?�wQ��&�KPU�!���������������������������������������������������������������������������7�|t�������yj�b>r�|<ۇ1�+��Gs:��_���������o������������u���o���W@
�c�h�l� Gux,*�f���=��
,���7�J���. �� YA�,�,0�D���V`I�4�d�`���
,���}`+��K*��K*��K*��K*��K*��K�,A��՟��د@[�$�����e�ٯ]���A���A��k?��:3�8�}{u{\��[�0,)�"���ɠ
�d�V�6�=�%,Ըњ!{�E���7���~���������G���x���%{����n=��}q\^���G���Ş��s)�Lg;v����v��߷�y_J�}i.~a��j�|/���>�\w�g���HIqð i��u)o�������s� %��Ĺ^@J�������n_�@����w�/⾤��c;Һ�l��`j�=�K�a�|�w�?���}-@  X�s^�^��p�~�"�����[�Sf�;_��><η�$��6��q���� TR.�W�G	��S����kė�8��>�o�[/�Ͳ��e�zm���v|��PPzf<�u� ��b���$���f����E��a���ey�^�����T����s�y��߱����9�ub�~>�%N���8����=��ׁ�9>���ߎ�G~c��,�;��j���~�˺vt�=�k�^��
��n�W��u�ۮӛ�m���u��o����~�����ȯ\�8Z��uL�a`�� ��,��e^5Ov�7 �V�]��;����؇�K����㏛�e]F��u���v����h�
��4-yA�;D��y�Y�e���^��;:.|����{;��N�8�m3.6�3qgǟK<w�+�m�}�)�����ޮ?���S�)���9���q*�@8�࿷��~�+~dE5��h�{�#_��';w�^���u��������ub�{>�����^����Ϸ7vݳ=����癷��2nv��n][A�/����k|� Ү��Q���O�^C�]��+�V����)��w+��� H{4�������� ��r'���_H;m�o�V m�~H�_�����P�zL|��!�6;.	8V�E�9q���_H}g�����p4E@�s����H[��H�i�D]z�@�
��Ł���@�$��������J�V�v�X%����_H+�&�=��e����;8�a��/�/�0��2��`�J��"� �$Ej"��?��n�T ��`\Bl��f@K .Ɂ1��='����tn��0��Ѡ����;���>dwGؙb�Ppd?"�KH�yN�Ѝ������z�I?NUG�t�_7D!��F��ԓ�u��5�!�?!�#�'a(@����@�Y�)��LI�	2:�q7����6!�@Pk��Ö�Z!�6IW��ر�	8�!��O�{�K�A=�E���|p���v��Ī���?L��[�ZC��V�ɇ��.�63Jk��1�������x����9|!$]�95:@�����0v�P��n��P ������8WP���ݜ��`����N�E{B�����I��Ԛ1H[��H�+��i+��i+��i+��i+��i+��i+��i+��i+��i+��i+��i+��i+��i���=��x���Ų>d�{=�LC��l�{��'��p�׭#0/OS����Q�ۦ~��DO���/]u��g�<����>;�����-��ע������^�t2Զͥ��UT��ɿ���Gwbi-�*�z�z��V7���p|/�8h�����m�]jWt{��P���n�>�'�=�Q��D�ªǽ�޹�D6�?G��q��WٷR���G��L�i�'��<�~��z��7���	y��&o�Wʿl��R���W�I����e�)�:F���ǐ�hO�+P�M���Iө�+P�����QxO.�U��y��|7P�L��l��I˄�������0�4��?Jo�&(]��(]��(����B�Մ=�}(��q�����`6%���l_�|�օ �O��>����l�uW0[��0��c2�v�`\��x� R��`����1���A,��o�񺼂{@3���n���"���g�~��p� ��n�薞7�ԉ�l!��o�� @�>�����.[��1��h>z�QR����'^��3��ߋ����|>�{ ������ht�Ѻ����I�?޽������o��S��~���m�5���9=���#��� �\����8q�w}v�
��@�
��RB3Ƶ��'t"0�@���>�`�­�b���t��+��?�<�h��pŎE�V�>�S�>�!��y�
��@�_��y���T��*��:!JQ>��?�i㞂N	>爄����-��
��B��R� �cl� �Kp���x�����z���������d��v�0�����SB�������8�9~O�З�`�8:�c�w�$��T��¡Lai��Y����'�����?v��"(�!-�ErQ��C��Y�����3���S�I�
A��C�ĥ�o\��Ύ!j)0��z����ii�@ž勊O~2:_5@�@��A���nk�)|�    ]= |�z���|�W��(��G�о{}!(XSL~����c����J�)n�#>߉�G�(n�w���3Z��L�qoa���3YMl�357��sǞr�Bq��;�ĥ5�2P�	���~����2�������Y�p��<n�cwṞ��Ώf
��N3��X	aOP��y�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T��O�m~2�G��K�>���@�]�T�> }��iX�>��M�gn��O}�Ƥ}����S�>?�p7
�-�"�TP+�<�'7!)䴼��6Ч�~�RQ� �xC�@���>�~�W�O�T�O�T���
��d��� |���q���>.jA��� }(H_�K/��
�)(+@
�J`�	���$���柣�ZO��'��~o�^�2@A���|�ݸa^� 2��C�>���lw���/���}ܝ�*�ހx^�>�-O�p��� 0+����؉ő/@�p�7�� ۬`�D��{� ^�1��X^߀Xލ�`�j���s4ޟ>���|�ez~���Ĺ����o�BE ` ����~ݖ��ޯ-Ph�^G��
0z
m@	[`�W����^|E`� �g?��@R��G�������u��7U����̺:�����P�¼7����@#?7���k��ϫ ��C����]�60�L�:q\�	�u�q6����v�O��p��'G ���;E�wZ����8X�${P��~�
&���x�3�*@0��_�/ �q: ����+�{��(�f^�"���qv��d�Ҿ�����B8T�C8�����,$&����
���3%c�IJb���:I�&D�9�`L��ǎ�#���7��P�0�������
����8���eU��/���(�#��F�M�vֶKa�F5�=*�ݹPӂ����C��������&	r|_�0�,#�d���q�k�ʞ/��h/� �>���\����Pٛ���c~x�)�]P?!��	s���Z��*S� �4�[.¶���1N��,B�J�%����޹�I�c���z0�s@Pc9/�m�C�ݖmp�񌌪���n�tu�߸i_̖X�ZbE� �3&@}$�s�-���>}�s���k��?���:��iJ(!��pvּ2�0��P0 ��#^�1 ؽg�;Ɖ�i���BG��f���B�`9[\�����QoDd|�PӀ�*Λe\���+���g�6r2'隷Ÿ���!�lhz�Zz|��� Z׽��=��ۢ[�c��@J�Y������|c�3oa����7!�#4�H��������FY�1��VV+8s%��U�!B{��^��6`�/�ơD?0�6\4�c#\
c�Ё��[�[���
���
���
���
���
���
���
���
���
���
���
���
���
���
���
����ҿ.���	{�
2��)x��~'p�<oh5ol�S����=U����G�t{�P�3���f|��&���*p����}L��Ρ�oz� 8�	�	�D�.��/zN�_ ���R�^�C?��*p��*p��*p��*p��*p��*p��*p��*p����C�d+p��8T�C8�W���Z��4�X�
BF�p��\Ǆ��!�3X莐���G�e��� �Ix�fc��2~=�eU�P������[V�P������Zo$XFX�d�'Z6�j�72N�8/�'M���~�#N��w���!����ن��pDz+�0S]0~)mY��-��M�!l�ܗ����>:�L?
����8B݄ؐ���F�ݿG8
�A���W����y�0��H�S�E��,:�t���#(���t+��,0��bBr��9C��|��c��<��K�<p�,p��ݫnK� �0N]^��܉o��"��� 4���,�Ϗ��+qv�E��q7Ix����gJ�O1Z6(I�W�z�('#�8�E �8�+2q�uw:n��T���z��S_W�J_��Xǋq��q���f�Qg,E %�!z��9�p��1^qP�)�%ƞ �V��y��� D�S1�b����S����g� �l���0.�Q���p�n~>0�`H��w�]���7*O'n68��:@7 �dEG]��*p��*p��*p��*p��*p��*p��*p��*p��*p��*p��*p��*p��*p��*p��*p���K���8$�Q���p���~8�պ�
8���6i*����c���é��)�T�P}�p��x1���͍�/�]
���'����C�K�Cc�0�q'wS�C�f�rU�PU�P�~�!���w?]�_	�
�. ���
@�s�
�E���x��lI`�y$�/O��BI6S�nBx�� �yǆ��;#�IѠp#Z�SǼ�y�n�(�#\��g5n6������x4>;q��2^V�!?<O��0����_@C⬀=*̥X�w`�5(�-��'Xc
0w��� � t�߷F`�y�Z���Ͻ�� Nm�:?7�^�>[ ��z� {v`�w ���@/ċ� � 4���GK<��<��=Xho����˰�<��qE�-�9��Xa�Y��� �{n L�#��:f;�p�4ԥ�����_���}G��<�W�3z^� K�� �l�P�ƸL��k.�m����ƒ5�h�Y�(�ӿ���޼ F�0��1^����`�㸏B�v��!�Z?��-�������\��2�pP��f�pg}^k��iy}��7`�����(�߿|.���ϯ@Cq��y��������r`����<A��eZ g�3���m^�S��v<��ށ�t�Ϋq�:�����8x�AM3 ���.�y�t4���~0ҝVy���������r�������vۯg��1��l�^@w3�n���>�^���@��'�6�~��;���������<��?��v��t��T�Gq�u��7=i����n�O��p��6J�K�����dX@C�}�u�������u��<��CsTd[��t`��^?\7%?w=:����|��c�m�L�����`;>����y�O?]9��uO���{�0?⪑y�B���RqC6�2ߗ:�����%�s��� �iI����u-=����K��{�.zn 	Ms}n��Q�[���Iy ���$	F��<9���u57��]_�㺡���7���ן�ɿ7b/Nd!�R���?p���a��ht�?W]�r��	5�A];_��H�.���F�'��U{g>:mV4b����= 4m�Z�;�������g ���/!���`��`ԸaO��1�۴8P�u���k�q ���]�2�xg^w~9&[&'c����K9�*Cԇ����W�S��P`��߹n��Ǡ+�[1� ��W�ZH���>R4r��N�Tg���]���{�!Vn�!��"���>OY�@H"��s��
8�yt�� (�h�P��5 �Cr�~��Br��҇p��i��Mx|� #?� B�7�_�z�� 6(�b��y���� �Y��������?���|`���c�SB�)�@���|8^���O�!pk�{�뱌��ב�J&(�!F��yhC.�l?B=XO�|�{���y�gS���7 ��G�޸O�y���b �`���.#���I()Q2�?0{����\[i	�B@]��+�Qo��+�oØ7�{T�-�%B��;�Y`e�0u�;� w0�lܿ�~E��� cԯ��ò��	 I�3�ǳ���㩻>��Ih2d��-$͘���xEBȄq�'ǖ����MeB��-L�1��'̵�� Y׳G�l#���uz�3�N7x�-`�	��������    ��H��S��#�vL33Lѽ��DM6��=���5B]!|d�P�&ۜ�?:F &���W�x�B@f��N'Xt��5�(z賁���2 K�N�uЄ1OF{������#��Ѫ�/,�\��Wu�U�N^u�;	b5�*�t�D�az������l�����_�����H�3	��O�("�qJ�3!C�m�ؤK�ƣǡ��EO�<O�, �D4p$L�0�z�:��@�X�#al
pP�6�<7�e�Q���j0+OAf���C�߇���X`�8�
�H����.ɸ��*���2�"���r	�5?�Hm��bd���:�� h#��W�-�	#��d#V��D��7F�j���xN�)����H���Pa��a4����F(@h={��N��#�7L90����8q���y� ��h��~���G�oA)F��D�Ћ���;� ��{P��6~��h��5�B^X =�d��� Q���v/��x�2N����9Ɵ��|������1@�P��ɱ�z�6���, �lPT+#���ٳ��c��l����[�7��� �)a�����)цaL��`�q�W��aV�ų%��e�t�!#Ȋ�]Jz޸n2���`���(��R90w -� i��Gmg݃~����/k+Ǘ�������x>B��9��{�	!:?V���pL�ao¨xql`�̂cH违Qqd\�3A�������ޣ�o��6�����Q� ��6� )	P�l�g}IC��D���F�-a�9=� \ı72@��2@?������ced�}$�Z���m~�FG���5��ꆽ�E� H��16��1��leeH���ϪN��њQ�=���^l���c�Kq�G}p�p�2�+NT���b�N��<}`>�l�*�w䑊/��_Пoƻ?�F.����ɠ z�g�V'zʿ\S��_Y����g��6]0��ld#_���Ȗ�N�j�N=� �?F��%�z]����K:��6�`�d�X��ވC�YB��s��?�e����7+f �a�΍����h�9������7 e�� k�k0�A��Q_������1��U�.� [��q/�e���n@"9��<�/�Y�d<�F<�9L`�I�3�t��4�KqQ.�=�����W��C�JZ����e�c�� ;��I�:��8&���:^cܿ~G�Uo�a X��s���~@��9
Z�0�f�!b������F�������?�(,�2x�;Xb}�!���� �O�,0��0 @�����h�
���D��	�� �\�3ȍ���4/ H�n^�z��&���O�ź~��-7�3ܑ���6��~'ϻ�ҋW��y����禷���L�v��@�\��\|�0���+���q�������{F(K���0c��%�7}cP�� ���؃T� If�H�b 8���#~ˑ_$b�h?�u���)P�'��\ե����7 ���=�_lAR# ������H�e���0O*�`0}7�u� m�t������<�9?wq�^�� X�z�֠@O�ЋAM'�\~$v$us���� �����a8�;���亐������'R�#�_YT�:���ńAr���`~a|����_��R\?@��p�y_�5�G�o@�-��������|����y�Ah�/�XM�T"�Q����5@�@��9��AI=��~�AJ%��/�ϧ6BaN�l��+��4_��s��r�q����E����P�׀�.QO7��H���"`��{�J�A�yZ�M4���W��r��/�e�O�5n@G���D|�o�.����'���9z�?�-��j{�\��Coo �����̯:�<��0�/ :�o/q������ �42�'�c���:���'>�9P���A�Q&$���z`f�]������� �.�37�Wkx�=���ۤ%@�ʛ�~�?Le�׸q�%ߘ¯ӆ���h�v�$hw$.�|��l�$����S��gy����OM/�)Y��R���ԽK ��^>���4�7&[5O8U��<?�޴�:�l@��zC8BUo��݀�Y/ �'�m�(�K�)�b���Z _� �}4��o3w�_�<$�B�;�C4d1�`{�A����)> U��Q6�7��7α �|V\��A��7�D�yI>[ ����.�򎾀7�`3�"�W�P��;����\t��:�D_��tt�9�ؽF�$|�=�w]?���yߣn��ѓ�P�|��"�T��,��R@X�%�w����"��uwN��O�,�+����X�̓7��{�.�xC��>E][}B�m�'Ϯ�Oި����Ξa�WNr>�� Y��s3�� c!B���ƝF�@�U׷��w�x���?ul�Q�[Ϛ�Kcc���cA�0��qt%z��d&ƙ����K@P�7?�^�@;�1=7tX�uՅ�UOtf����[�x�#�3d�>x�y��
4H�7S�2��>��K}[lL�=DM�4YsɆ*�Z��&�u@K��D=^����Eǥxv�z
�=�l��VZ����E��t�W<�]o�6#m��L�-ӷ�-���i]uM��H3�U���������;��(~�����К;�����8�3��66:��R�ڜ:#�{�n7o��%o)���n붔-��e~v=Hs)y� l}K]K�v��<��O�x�X�?���-�}H'�r�nM6"������Eu$�vS [� ����.LZ����5���$ ��Ut�:6��Ƨ�מ�3z#�{����M �xB��h��j"g�yV�>���3��Y�O�W�O��4��6���m���?�Ӎ���,~����X���c�wނP>�ß9$ZW�[��s�#o��O��J�:�E�3ѽ�'$����������F_��f���������� �/�����"������������պ�W@���@P�Κ�_�f���3�2'tc�;)~n�����y
p�z�u-~��[��+x��w`��.}l��,�{�`��ɍYqu�}����m�w ����i>��&��GH�x��*@� B����BP�F�	� By>�lC�~� ��� ��Z`������	 TB TB ���������3��zF��B��� Ȥ��[}�"�a��ɒV� 
QX�?ޗ�yɂM����j\��F#	��A�O��&P����|\���ǳ<����� �]�Tp|����6R�5H��%�H��[v�����i����Yx��_��s�`� ޜW��`�WP�
T���������o!Sڂw(����9F<<��j��⑃�ۘ�1N|�����ނ�^�F\��>y_ H/`���ejY�t������Bk��b$݃r��:�l���Q�X��<�W �9>\nV@� �,�ݿ c�� �x�ۂ�0:����f����1�p�~l���q����{X�`�@���\���?�����=AD��{^ @/������Ͽ�6@��U�rY8w ��uF��"���8��d썼� �����/�����-�(~� ��0g��+@OG�_���{@��}{�� H�?�	}������q~z�?
������0OtV@"��|�\ <:�����=H�[��;�t���=�h:�a️x�[����pi=O���{n���|r:��S�Kƅ��"�7�u��G�1�#��3�As�i���z���g�b1�w3��֛籼m�v$��۽�]���x�=o��}B����<�U�{�QH��8���e,r�����z�G��d��! EZ7�8 	?d�N�U��1�d��xj*N!o�Ŏ)�O >�٦P?��������;�t/ �'�1�;xP�w#Y�ϸZGU��ʴox����Z���s�ia�D��@>_�(��&�*͑p�H��(���ҎFGy��F�W�'��� �ޘ�9��h���    )�X�������=Ϋ#���7 �:���-P� ���n���!��j:��c�K/������ZJԫ�h���C��`.�K�7� I*c\��u���咝+�@/S�\�n�������S�Q7~ dީ��xx�2�	4�=�m�w�)�;A�}7v�C���3�΂i�X���m�I��aH��y����R7$�P�	aq�~�:�y���}:B�y���n��@X� 70CS��O��xܛ��x.6pl���� ����6Q�y�P�1� b���������	��ܗ4�� �b������l`u�.��S��o�-?ؼy�_״"�>wOk��@I�;����?t>�o���rFx����%�����}��>�v�����g���?��3Uq�욘�5������Qk@w
��$\����7�$��{�ή6Hh F��JS'�����s�?_� ����.��D��ă2D�6H �S?�@��1>�j��x�OHU�}�Fk�p�/������#0w���
�)�uv�6���"�tU�ف�y�;o�@:G�����@>���-b�ְC��k��)���wk� ���}�����BxE��9s�w��E��`q|���/D��|e$k*p���j| (�H��LYB�$Q/�81�v���k�މ�qw 
=ޅ!)�q<�S븖-3yeO�7q_��Jȍ���
���QA� 	���it#;�>VC��kIү[��V �'�RX��0��1z�����'P �r�$�wƘ1�G�	Tσm
�D���w'�֙$��A�����2�E|���Aןp�8Ƹ�2�%0�8O�|� ����B���0���2O�����ء�<�vM�Ws�ln����O!��Зkf�V�l�'q3;�{��0�xGl��٭S�c��:����/M6�yUJ��A0�{����(�J������agTd�6�#:}1��W�����H�6�03��FB�71�cS��sJ�V�	�Tag�~��zɳ3��P4r��b�%x^=B=�� "���ňV�d�7ׯu��l�8�0g�Nc�J
P]i�u2Piհ:�id��cy	�
z��H�u�T�=�V*��u�I���p�F�&@5L��'���k����d3� NdoT�N�q~�̹!t��NPS{Y����{6�1o��1��.o�;���N;5�-(� -�%�1ޑ�4E�������o
�	����
Ȫ��c�(���:'a\�1>O��u����3>@k��2q�嗀I�=2«o���YIH��f����	���׿�W����Ko��/�p��k���!��Ƒ��ua��0^u_��2	Џ�~�Dݢ�.�@S�"%�ֲA@q�x>����B��}?߶����%����K�:/�>棎�������qg<t���H�����pZ�#�f�h��k \r ��3�)�[���K���&�����u�[vb���o����x\��l�M��X��m]�$~Sl�b3�A�zd5�dWY�Q���b�̾���4�q��2<��{Ǘ�u�x�����y9@Ό��D��}�%F<���I�Nĩy�Z�}�A�{}
�I2��O����a���� C��iI�Ւ�5�J_I����� �����c��ٓ�����T�f�Ʀ��8y��c�r"�g����=���1Fk�Վ� �6x�x�e�a�}\7���~:�t��@P䷊�/u<���1���L������r��WU-�x�w �ztp��~��,���.1��AU�I�QY̙��q�,I#��_0�zE��<�`�b&�������6�+��ء^��hC��xl7�3������.Q�h��1�[ ���Oj�I�����;��y~1�7^����QJ��އ;ـ��F��u�U�7�B�~^��6柳�7ء��V��5@w��Y�X�������� ��) gwƓj�M�^Fd =�X�f��Z �|$�	�H���o�O5Zt�XO>5e�xj�P�<��/�����;�@^��>��6@�i��c<��!�e�N (�Ӕ�����Ll�Г�F^#w��G�����v:B�|�8� ��fR����L}�f����:��
)��`��߿z�z�T�e�1���H�-�b���`�琵�il���]B���y"�|���:�@�o��!�����d}|-ϧ��y|����p��4 %5����Y2��@~�ظ���P�r|�'@P �*3�t�/��j�4\ S�o@�>�苊G����;�h�7/�_;���:���a|5O��+"r�OƋ�b$�� ���L����/����ox<����U+~��@~O~F�g���y�R��
���Y)Z?�����j% \�8U<��b����7_���� �G>S�m�n�~9dw=)��3�q�f�}j3X�)�gycY�@K���hxݕ D��/�1RG�����s���w�s��}�/�x,��n�O:*�}roq}���ud�D~���x�_N>^�kp���\?��:#�HK����SN2� ��z�n��j^9�Z���̘��z��S]�y�(�~�j���9 ގ�<����eS��h���+��bA�@>�g�O�y���!�o::�X�ݖ����+/���������|�t�:��?��J�h�-�Y�e�-4^u�wW��0��ц)������: ��Sc�O6t�T��i����%��2X���]!���H--@Xmp���)��C'��v��Y�F�O�����"# ��`��;t���+"�rF���{W�TO��'6(3h6�F��w6jt���5���@���z�q�dF����?��W�O�+�'��-:M��-�����}+�a��2�^�B|����� ���T�L��M�wE�
��z�ҥ 8.�0�2�5x>�-p:�4���:'c P� �T_��q׶�yp��k��P^���Z��M䬪����H'���um�ʪWٗF<lϖ}��G"�%�UƿA��K��/�%����Ԫ�7��.�q���`�c�[��m�}�lm�.m�  I�`>��lB=�������؜�bO��lAr@ow!!�D�U��C�4���	��^�d ��p��͡ק854�!�[�#��u5�M����9@�h�����>Qŝ�?���O�]4|'�O �����q��H�X�+^�	>u��	�>г+�֩Q�w���}��&@@���LG~a������s���l�3�z�C�y:s��� A��P��7��3'��v܂n�P��zkc`���	��@}?�������%�B�L��ޖz�2���6�8��NWyw6؏�ߜ�t4.��ie����$)��������� Nx� �5.���C��5U���)}��? ���㬯������q?����~��0�6
`���I��0�E�x�>��ߘe��]�����0��6��E��,z������0?��\wZ|P{��X��˙�n��~����.���a�OZO�ӫ�C�r�E���E}T��O}����_ z���X��d�KO��zZ��qƆ�ԃ\��O���:~Ƶ���w3� 8��:����z���ϼ���? }���S������6��{9���:�0PV��ZOf���%o�����W<���+�_���P��g��-�_�3u7-}���)�P�g��L������V*�8T�C�'�ͱ���@��9�+�C n�w8~��phX~�o ��1!a�L�+p�C����_�C8T�C8T�C8T�C8T�C8T�C8T�C8T�C8�?z�+p���B8T�C8��W�K�,�Jf�2 �$8(b@��@��c��mgﰂ!�!w������3N4X�P�/�ӑ��m���
����8�}�
���_8����4-rdm�bGd�'�j�����q*갨Ό�9 /  �|���!(� _�H��-7	�1@�6F$o�*'v�m�?�`k�o�{D��eq�bgY����W�a�K�0xR�a��� $(�\��4��mʛ�g��k#���a�bjW�� Ι,�� .!���"��S���l&��V�~��t�1Pˈ��T�jg!B��h9aL�N�q�5� �����('H�{F��Q�F�*�$b����n�7��I�[6)�"�.�9�"�+˞��;�����<O��2�KJZ<+��kd��~�֣�e��;�6zt��~����E 	oy.Z���vp���>(�|�2kֳ�y1�=ƣ�����20b��8t�a2�!@F�qB'C#1�$���Ϭߺ��"l�@�>Ѡ�����cj,��2�:��:�ʏF6��-ٕQ���0��3��1F�!H�U�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU�PU��7�_���:����y�v���� }���N�M����1p�L�?�ȶ�*p����c����J�1#�T���CiC ����8��T�Ї���P�C8T�C8T�C8T�C8T�C8T�C8T�C8T�C8�?r$[�C�,p����
�����pe\��~�!4*��C�s�B�-��ƀP	!F�!�V��0ύ�$�lf��6���S�ʮ� �\��*p��~?��O�-+p��~q�������6��j�� g�'���7� �Y8�(^�������,���|�z
�w�g]���x[�|v�<�0�1��$݊���B����)N�!$��`��~ׇP���a.�,�2J73���1�`�mP��up���Z�C~� ��5��\K���pe���u��]�bz��'��Z�����r>�`�5�1%p���;�զ0J6^e���QpG��Qm���
 	���q�jk���8N��$��0Ȫ_=J k �cT��$!Fs����fr���EX�bv�P�^����d�8	K����KX& RB���%J�Q�oz��o `Q K�ת�1�1K �%	�eP��z�u&��K(��F��d��<��C�Z�
\y��5a̸c��p1�Yx�>�+�>°������w�F�Á�����kՑ��HpO�ByK����-|���M�4� �o0�g�M�z7e�;��6�)���
���
���
���
���
���
���
���
���
���
���
���
���
���
���
����п.��/uI�� ��'�C_�{��!�C�m3�Cm�g>u�8�:u*RU���	w���'&�(4M� 8�X�=��</�<phZ~�o�H���
�8t[�+p��*p��*p��Ij������O�>���-���挧+&���8TV����x� a#�
D���<�;+�)����y�;�������>�-�h�Y}���l�~s>G�C��zR0���P�O��z�<�8��=��P� 4��{�w���g�������} �����ߎO#OX������ܰ�<?��@���-��Ɗ5X#@?4�����ȇNO�N<��[������|�wOo?�Y� R��\V��=�#/`��f��7 ��}~�`���w����s��mA,��o�����f��n9�lwy�ټ>��r~�9 ��7����8u���s���:� ��y�_���{�����Z�p����'^�����E]�:�����>�|����b`�4:�h�)���q2��^_�
��zڑ�����۲����@��}�翏�_�:�>��3@�^@7��%��<�*Ч}*��/44�i�_��MVʥ�>il��`DD����΄��q� �����d]��-��+Ч}*����D_�}*������	�4�w�p:[F<K���l��X�W�L�� $Ig��ZlcxkY�>Ϻn��5�:-�;$����h�2�i���k}��V��M����e���p!o� ��Q�� ���0�/�{�	�1���G4da����*�,F�t��b���q�$~�v��0��� �3��>	�*��;14b@�\�;��v�g�i��8[����V%z��1KƉ�9#dN6
 �1�m��~�jNa>�aQ㩵��q|��Z�'6u� t<�h�$���{_0�k@`�>�H��qKf�K��+=�<R.Y���_��0�w�bapcM�+v�����x#���7��-5��=������E�R���0h+^�~����-��ø��J�X�<0nZ�,i���g��e�1Fw�����x��$jRi��xH]�yDs ����?U�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T�O�T��w�_�}�Ç� }46>��j�S� �i�h����5�N}&5�Ů-}�T�Ϸ	ws�sL�*�����Og�� ������N_�a�	�O�|����S�>�S�>�S�>�S�>�S�>�S�>�S�>�S�>������K*Ч}*��3�[4o1���=�K: �Ȍ�ь�%����W}�����z�d�č�`��aj"Ɩ�G�<���s�U�O�T��o����`�T��/��x�Ȼ��j��l�S.�x2;N!^��e�s	$���T�k}���Ԅ{��!TA���yL���чb���h� ?KTwf�<nFG��K�s���@�Y�=W�1�y%��6-���6V�]�ܝl<�4�n\w�e@x�0�Y.��ԅ����g[���  jJ�s������S�#�Ӝ�8�7��5,$�}��(�3��v6�j��z�0Ҁ�}�7,ү�āz^O�2J(�W��o^��%�n��;���-Sok0f#d-�-?����ަ������o�E3�����>�ƐQ&���q�������k.�1�z��dq~�d�1R}>U�[���8PjQ^ǉc�5�������(����xL�Wˤ�1I��1Oap��$A+܇qy�Q�x��Eݖd  -<���o-�����Hnc,Q�%��{�Ï���/�!���c/�7 �Ǐ�e�W��}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}*Ч}�E��}Ї���|;Ї���Q|��j�S����������6��     