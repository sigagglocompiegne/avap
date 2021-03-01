                                                                          
/*AVAP V1.0*/
/*Creation du squelette de la structure des données (tables, séquences, triggers,...) */
/*avap_10_SQUELETTE.sql */
/*PostGIS*/
/*GeoCompiegnois - http://geo.compiegnois.fr/ */
/*Auteur : Grégory Bodet */

/*
SOMMAIRE :
 - DROP
 - SEQUENCES
 - DOMAINES DE VALEUR
 - CLASSES OBJETS
 - CONTRAINTES
*/


-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                           DROP                                                          ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################

-- VUE

DROP VIEW IF EXISTS x_apps.xapps_an_vmr_sup_ac4;


-- CLASSES

DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_assiette_sup_s;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_generateur_sup_s;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_airedevue;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_alignarbre;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_cloture;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_forti;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_peri;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_protect;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_ptdevue;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_secteur;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac4_avap_vestige;
DROP TABLE IF EXISTS m_urbanisme_reg.an_sup_ac4_avap_media;
DROP TABLE IF EXISTS m_urbanisme_reg.an_sup_ac4_geo_protect;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac1_d_avap_l;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac1_d_avap_p;
DROP TABLE IF EXISTS m_urbanisme_reg.geo_sup_ac1_d_avap_s;



-- DOMAINES DE VALEUR

DROP TABLE IF EXISTS m_urbanisme_reg.lt_avap_cloture CASCADE;
DROP TABLE IF EXISTS m_urbanisme_reg.lt_avap_protec CASCADE;
DROP TABLE IF EXISTS m_urbanisme_reg.lt_avap_ptpatri CASCADE;



--SEQUENCES
/*
DROP SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq;
;
*/


-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                         SEQUENCE                                                        ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################


--############################################################ an_sup_ac4_avap_media_gid_seq ##################################################

-- SEQUENCE: m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq

-- DROP SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq;
/*
CREATE SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

COMMENT ON SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq
    IS 'Séquence unique pour les médias intégrés pour l''AVAP de Compiègne approuvée en 2020';
*/


-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                    DOMAINES DE VALEURS                                                  ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################


--############################################################ lt_avap_cloture ##################################################

-- Table: m_urbanisme_reg.lt_avap_cloture

-- DROP TABLE m_urbanisme_reg.lt_avap_cloture;

CREATE TABLE m_urbanisme_reg.lt_avap_cloture
(
    code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT lt_avap_cloture_pkey PRIMARY KEY (code)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.lt_avap_cloture
    IS 'Liste de valeurs de l''attribut type de la table geo_sup_ac4_avap_cloture';


INSERT INTO m_economie.lt_immo_tbien(code, valeur)
    VALUES
  ('10','Clôture haute en pierre'),
	('20','Mur + grille');


COMMENT ON TABLE m_economie.lt_immo_tbien
  IS 'Code permettant de décrire le type de cloture';
COMMENT ON COLUMN m_economie.lt_immo_tbien.code IS 'Code du type de cloture';
COMMENT ON COLUMN m_economie.lt_immo_tbien.valeur IS 'Valeur du type de cloture';

--############################################################ lt_avap_protec ##################################################

-- Table: m_urbanisme_reg.lt_avap_protec

-- DROP TABLE m_urbanisme_reg.lt_avap_protec;

CREATE TABLE m_urbanisme_reg.lt_avap_protec
(
    code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT lt_avap_protec_pkey PRIMARY KEY (code)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.lt_avap_protec
    IS 'Liste de valeurs de l''attribut protec de la table geo_sup_ac4_avap_protec';


INSERT INTO m_economie.lt_avap_protec(code, valeur)
    VALUES
  ('10','Protégé (au titre des M.H.)'),
	('20','Immeuble remarquable'),
  ('30','Immeuble d''intérêt'),
  ('40','Immeuble d''accompagnement'),
  ('50','Immeuble à insérer'),
  ('60','Sans qualification');


COMMENT ON TABLE m_economie.lt_avap_protec
  IS 'Code permettant de décrire le type de protection des bâtiments';
COMMENT ON COLUMN m_economie.lt_avap_protec.code IS 'Code du type de protection';
COMMENT ON COLUMN m_economie.lt_avap_protec.valeur IS 'Valeur du type de protection';

--############################################################ lt_avap_ptpatri ##################################################

-- Table: m_urbanisme_reg.lt_avap_ptpatri

-- DROP TABLE m_urbanisme_reg.lt_avap_ptpatri;

CREATE TABLE m_urbanisme_reg.lt_avap_ptpatri
(
    code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    valeur character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT lt_avap_ptpatri_pkey PRIMARY KEY (code)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.lt_avap_ptpatri
    IS 'Liste de valeurs de l''attribut type de la table geo_sup_ac4_avap_ptpatrimoine';
    

INSERT INTO m_economie.lt_avap_ptpatri(code, valeur)
    VALUES
  ('00','Non renseigné'),
  ('10','Pierre Sculptée isolée'),
	('20','Ouvrage en pierres assemblées'),
  ('21','Ouvrage de couverture'),
  ('30','Lucarne'),
  ('40','Bois : porte et portail'),
  ('50','Métal : garde-corps'),
  ('51','Métal : portail de clôture'),
  ('60','Puits'),
  ('70','Croix, calvaire'),
  ('80','Verrière, marquise'),
  ('99','Autre');


COMMENT ON TABLE m_economie.lt_avap_ptpatri
  IS 'Code permettant de décrire le type de petit patrimoine';
COMMENT ON COLUMN m_economie.lt_avap_ptpatri.code IS 'Code du type de petit patrimoine';
COMMENT ON COLUMN m_economie.lt_avap_ptpatri.valeur IS 'Valeur du type de petit patrimoine';   
 

-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                        CLASSES OBJETS                                                   ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################

--################################################################# geo_sup_ac4_generateur_sup_s #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_generateur_sup_s

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s
(
    idass character varying(200) COLLATE pg_catalog."default" NOT NULL,
    idgen character varying(200) COLLATE pg_catalog."default",
    nomass character varying(200) COLLATE pg_catalog."default",
    typeass character varying(200) COLLATE pg_catalog."default",
    modegeoass character varying(200) COLLATE pg_catalog."default",
    paramcalc character varying(200) COLLATE pg_catalog."default",
    srcgeoass character varying(200) COLLATE pg_catalog."default",
    datesrcass character varying(200) COLLATE pg_catalog."default",
    geom geometry(Geometry,2154),
    CONSTRAINT geo_sup_ac4_generateur_sup_s_pkey PRIMARY KEY (idass)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s
    IS 'Générateur de la servitude AC4 au format CNIG';
    
    
--################################################################# geo_sup_ac4_assiette_sup_s #######################################################

-- Table: m_urbanisme_reg.geo_sup_ac4_assiette_sup_s

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s
(
    idgen character varying(200) COLLATE pg_catalog."default" NOT NULL,
    idsup character varying(200) COLLATE pg_catalog."default",
    nomgen character varying(200) COLLATE pg_catalog."default",
    typegen character varying(200) COLLATE pg_catalog."default",
    modegenere character varying(200) COLLATE pg_catalog."default",
    srcgeogen character varying(200) COLLATE pg_catalog."default",
    datesrcgen character varying(200) COLLATE pg_catalog."default",
    refbdext character varying(200) COLLATE pg_catalog."default",
    idbdext character varying(200) COLLATE pg_catalog."default",
    geom geometry(Geometry,2154),
    CONSTRAINT geo_sup_ac4_assiette_sup_s_pkey PRIMARY KEY (idgen)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s
    IS 'Assiette de la SUP AC4 au standard CNIG';
    
    
--################################################################# geo_sup_ac4_avap_airedevue #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_airedevue

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    sup_ha double precision,
    geom geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_airedevue_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue
    IS 'Table géographique contenant l''emprise des aires de vue de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_airedevue.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_airedevue.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_airedevue.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_airedevue.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_airedevue.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_airedevue.sup_ha
    IS 'Surface en ha';

--################################################################# geo_sup_ac4_avap_alignarbre #######################################################

-- Table: m_urbanisme_reg.geo_sup_ac4_avap_alignarbre

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    essence character varying(50) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    long_m integer,
    geom geometry(MultiLineString,2154),
    CONSTRAINT geo_sup_ac4_avap_alignarbre_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO create_sig;
COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre
    IS 'Table géographique contenant les alignements d''arbres de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.essence
    IS 'Libelle de l''essence de l''arbre';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.long_m
    IS 'Linéaire en mètre';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_alignarbre.geom
    IS 'Géométrie de l''objet';   
    
    
--################################################################# geo_sup_ac4_avap_cloture #######################################################

-- Table: m_urbanisme_reg.geo_sup_ac4_avap_cloture

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    type character varying(2) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    long_m integer,
    geom geometry(MultiLineString,2154),
    CONSTRAINT geo_sup_ac4_avap_cloture_pkey PRIMARY KEY (gid),
    CONSTRAINT geo_sup_ac4_avap_cloture_fkey FOREIGN KEY (type)
        REFERENCES m_urbanisme_reg.lt_avap_cloture (code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture
    IS 'Table géographique contenant les clôtures identifiées de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.type
    IS 'Type de clôture (clé étrangère sur la liste de valeurs lt_avap_cloture)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.nomreg
   IS 'Nom du règlement (titre 2)';

COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.long_m
    IS 'Linéaire en mètre';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_cloture.geom
    IS 'Géométrie de l''objet';
    
    
--################################################################# geo_sup_ac4_avap_espacepaysager #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    libelle character varying(50) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    sup_ha double precision,
    geom geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_espacepaysager_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager
    IS 'Table géographique contenant les espaces paysagers de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.libelle
    IS 'Libellé de l''espace';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.sup_ha
    IS 'Surface en hectare';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager.geom
    IS 'Géométrie de l''objet';
    
--################################################################# geo_sup_ac4_avap_forti #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_forti

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    geom geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_forti_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti
    IS 'Table géographique contenant les zonages archéologiques des fortifications de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_forti.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_forti.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_forti.nomreg
    IS 'Nom du règlement (titre 3)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_forti.urlreg
    IS 'URL du règlement (titre 3)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_forti.geom
    IS 'Géométrie de l''objet';
    
    
--################################################################# geo_sup_ac4_avap_peri #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_peri

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    nomplan character varying(254) COLLATE pg_catalog."default",
    urlplan character varying(254) COLLATE pg_catalog."default",
    nomreg1 character varying(254) COLLATE pg_catalog."default",
    urlreg1 character varying(254) COLLATE pg_catalog."default",
    nomreg2 character varying(254) COLLATE pg_catalog."default",
    urlreg2 character varying(254) COLLATE pg_catalog."default",
    nomreg3 character varying(254) COLLATE pg_catalog."default",
    urlreg3 character varying(254) COLLATE pg_catalog."default",
    urlpe character varying(254) COLLATE pg_catalog."default",
    sup_ha double precision,
    geom geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_peri_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri
    IS 'Table géographique contenant le périmètre de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.gid
    IS 'Identifiant unique à l''ARC';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.nomplan
    IS 'Nom du fichier contenant le plan global';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.urlplan
    IS 'URL du fichier contenant le plan global';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.nomreg1
    IS 'Nom du règlement (titre 1)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.urlreg1
    IS 'URL du règlement (titre 1)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.nomreg2
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.urlreg2
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.nomreg3
    IS 'Nom du règlement (titre 3)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.urlreg3
    IS 'URL du règlement (titre 3)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.urlpe
    IS 'Lien d''accès à l''archive zip comprenant l''ensemble des pièces';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.sup_ha
    IS 'Surface en hectare';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_peri.geom
    IS 'Géométrie des objets';
    
    
--################################################################# geo_sup_ac4_avap_protect #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_protect

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    protec character varying(2) COLLATE pg_catalog."default",
    demol boolean,
    hauteur character varying(15) COLLATE pg_catalog."default",
    src_geom character varying(2) COLLATE pg_catalog."default",
    src_date integer,
    nomplan character varying(254) COLLATE pg_catalog."default",
    urlplan character varying(254) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    geom geometry(MultiPolygon,2154),
    observ character varying(2000) COLLATE pg_catalog."default",
    geom1 geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_protect_pkey PRIMARY KEY (gid),
    CONSTRAINT geo_sup_ac4_avap_protect_protec_fkey FOREIGN KEY (protec)
        REFERENCES m_urbanisme_reg.lt_avap_protec (code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT geo_sup_ac4_avap_protect_srcgeom_fkey FOREIGN KEY (src_geom)
        REFERENCES r_objet.lt_src_geom (code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect
    IS 'Table géographique contenant les bâtiments protégés au titre de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.gid
    IS 'Identifiant unique';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.protec
    IS 'Niveau de protection des bâtiments';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.demol
    IS 'Information si le bâtiment a été démolit (attention info de la ZPPAUP, pas mise à jour par le prestataire de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.hauteur
    IS 'Hauteur du bâtiment';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.src_geom
    IS 'Référentiel de saisie utilisé';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.src_date
    IS 'Source du Référentiel de saisie utilisé';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.nomplan
    IS 'Nom du fichier contenant le plan global';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.urlplan
    IS 'URL du fichier contenant le plan global';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.geom
    IS 'Géométrie des objets';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_protect.observ
    IS 'Observations diverses concernant l''objet';
    
    
--################################################################# geo_sup_ac4_avap_ptdevue #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_ptdevue

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    angle integer,
    geom geometry(Point,2154),
    CONSTRAINT geo_sup_ac4_avap_ptdevue_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue
    IS 'Table géographique contenant les points de vue (extrait des données aires de vue reçu du prestataire) de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.angle
    IS 'Angle de rotation de l''objet';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptdevue.geom
    IS 'Géométrie de l''objet';
    
    
--################################################################# geo_sup_ac4_avap_ptpatrimoine #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    type character varying(2) COLLATE pg_catalog."default",
    libelle character varying(254) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    geom geometry(Point,2154),
    observ character varying(2000) COLLATE pg_catalog."default",
    CONSTRAINT geo_sup_ac4_avap_ptpatrimoine_pkey PRIMARY KEY (gid),
    CONSTRAINT geo_sup_ac4_avap_ptpatrimoine_fkey FOREIGN KEY (type)
        REFERENCES m_urbanisme_reg.lt_avap_ptpatri (code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine
    IS 'Table géographique contenant le petit patrimoine identifiés pour l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.type
    IS 'Type de patrimoine (clé étrangère sur la liste de valeurs lt_avap_ptpatri)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.libelle
    IS 'Détail des patrimoines pour un type = 11 (multiples ou divers)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.geom
    IS 'Géométrie des objets';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine.observ
    IS 'Observations diverses concernant l''''objet';
    
    
--################################################################# geo_sup_ac4_avap_secteur #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_secteur

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    libelle character varying(3) COLLATE pg_catalog."default",
    nomplan character varying(254) COLLATE pg_catalog."default",
    urlplan character varying(254) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    sup_ha double precision,
    geom geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_secteur_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur
    IS 'Table géographique contenant les secteurs du périmètre de l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.gid
    IS 'Identifiant unique';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.libelle
    IS 'Libellé du secteur';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.nomplan
    IS 'Nom du fichier contenant le plan global';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.urlplan
    IS 'URL du fichier contenant le plan global';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.nomreg
    IS 'Nom du règlement (titre 3)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.urlreg
    IS 'URL du règlement (titre 3)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.sup_ha
    IS 'Surface en hectare';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_secteur.geom
    IS 'Géométrie des objets';
    
    
--################################################################# geo_sup_ac4_avap_urbainpatri #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    datappro character varying(8) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    sup_ha double precision,
    geom geometry(MultiPolygon,2154),
    CONSTRAINT geo_sup_ac4_avap_urbainpatri_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri
    IS 'Table géographique contenant l''urbain patrimonial identifiés pour l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.datappro
    IS 'Date d''approbation de l''AVAP';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.sup_ha
    IS 'Surface en hectare';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri.geom
    IS 'Géométrie des objets';
    
    
--################################################################# geo_sup_ac4_avap_vestige #######################################################
-- Table: m_urbanisme_reg.geo_sup_ac4_avap_vestige

-- DROP TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige;

CREATE TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige
(
    gid text COLLATE pg_catalog."default" NOT NULL,
    insee character varying(5) COLLATE pg_catalog."default",
    nomreg character varying(254) COLLATE pg_catalog."default",
    urlreg character varying(254) COLLATE pg_catalog."default",
    long_m integer,
    geom geometry(MultiLineString,2154),
    CONSTRAINT geo_sup_ac4_avap_vestige_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige
    IS 'Table géographique contenant les vestiges et enceintes identifiés pour l''AVAP approuvé par le Conseil Municipal de Compiègne le 6 mars 2020';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_vestige.gid
    IS 'Identifiant interne';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_vestige.insee
    IS 'Code insee de la commune';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_vestige.nomreg
    IS 'Nom du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_vestige.urlreg
    IS 'URL du règlement (titre 2)';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_vestige.long_m
    IS 'Linéaire en mètre';
COMMENT ON COLUMN m_urbanisme_reg.geo_sup_ac4_avap_vestige.geom
    IS 'Géométrie des objets';

--################################################################# geo_sup_ac1_d_avap_l #######################################################

-- Table: m_urbanisme_reg.geo_sup_ac1_d_avap_l

-- DROP TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l;

CREATE TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l
(
    id integer NOT NULL,
    geom geometry(MultiLineString,2154),
    CONSTRAINT geo_sup_ac1_d_avap_l_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l
    IS 'table servant à représenter les éléments classés ou inscrits au titre des MH de type linéaire dans le flux AVAP';


--################################################################# geo_sup_ac1_d_avap_p #######################################################

-- Table: m_urbanisme_reg.geo_sup_ac1_d_avap_p

-- DROP TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p;

CREATE TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p
(
    id integer NOT NULL,
    geom geometry(MultiPoint,2154),
    CONSTRAINT geo_sup_ac1_d_avap_p_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p
    IS 'table servant à représenter les éléments classés ou inscrits au titre des MH de type ponctuel dans le flux AVAP';

--################################################################# geo_sup_ac1_d_avap_s #######################################################

-- Table: m_urbanisme_reg.geo_sup_ac1_d_avap_s

-- DROP TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s;

CREATE TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s
(
    id integer NOT NULL,
    type character varying(20) COLLATE pg_catalog."default",
    geom geometry(MultiPolygon,2154),
    idmedia character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT geo_sup_ac1_d_avap_s_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

COMMENT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s
    IS 'table servant à représenter les éléments classés ou inscrits au titre des MH de type surfacique dans le flux AVAP';
;

