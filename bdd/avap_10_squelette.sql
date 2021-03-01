                                                                          
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

-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                        CLASSES OBJETS                                                   ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################


--################################################################# geo_immo_bien #######################################################



