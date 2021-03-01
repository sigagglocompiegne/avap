                                                                          
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

DROP VIEW IF EXISTS x_apps.xapps_an_vmr_immo_bati;


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



-- DOMAINES DE VALEUR

DROP TABLE IF EXISTS m_urbanisme_reg.lt_immo_ityp CASCADE;



--SEQUENCES
/*
DROP SEQUENCE m_urbanisme_reg.geo_immo_bien_seq;
;
*/



-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                         SEQUENCE                                                        ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################


--############################################################ geo_immo_bien_seq ##################################################


--############################################################ an_immo_bien_seq ##################################################




-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                    DOMAINES DE VALEURS                                                  ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################


--############################################################ lt_immo_ityp ##################################################



-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                        CLASSES OBJETS                                                   ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################


--################################################################# geo_immo_bien #######################################################



