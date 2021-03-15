/*AVAP V1.0*/
/*Creation droits sur l'ensemble des objets */
/*avap_99_GRANT.sql */
/*PostGIS*/
/*GeoCompiegnois - http://geo.compiegnois.fr/ */
/*Auteur : Grégory Bodet */

-- ####################################################################################################################################################
-- ###                                                                                                                                              ###
-- ###                                                                        GRANT                                                                  ###
-- ###                                                                                                                                              ###
-- ####################################################################################################################################################


-- #################################################################### SEQUENCE  ####################################################################
ALTER SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq
    OWNER TO create_sig;

GRANT ALL ON SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq TO PUBLIC;
GRANT ALL ON SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq TO create_sig;

-- #################################################################### DOMAINE DE VALEUR  ####################################################################

ALTER TABLE m_urbanisme_reg.lt_avap_cloture
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_cloture TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.lt_avap_cloture TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_cloture TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.lt_avap_cloture TO sig_edit;

ALTER TABLE m_urbanisme_reg.lt_avap_protec
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_protec TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.lt_avap_protec TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_protec TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.lt_avap_protec TO sig_edit;

ALTER TABLE m_urbanisme_reg.lt_avap_ptpatri
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO sig_edit;

-- #################################################################### TABLE  ####################################################################

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO sig_create;
GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO sig_read;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO create_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO sig_edit;
ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO sig_edit;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO sig_edit;



ALTER TABLE m_urbanisme_reg.an_sup_ac4_geo_protect
    OWNER to create_sig;

GRANT ALL ON TABLE m_urbanisme_reg.an_sup_ac4_geo_protect TO sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.an_sup_ac4_geo_protect TO sig_read;

GRANT ALL ON TABLE m_urbanisme_reg.an_sup_ac4_geo_protect TO create_sig;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.an_sup_ac4_geo_protect TO sig_edit;

-- ########################################################### FONCTION  ####################################################################

Sans objet

-- ########################################################### VUE DE GESTION  ####################################################################

Sans objet

-- ########################################################### VUE APPLICATIVE ####################################################################

ALTER TABLE x_apps.xapps_an_vmr_sup_ac4
    OWNER TO create_sig;

GRANT SELECT ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO sig_create;
GRANT SELECT ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO sig_read;
GRANT SELECT ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO sig_edit;
GRANT SELECT ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO create_sig;



