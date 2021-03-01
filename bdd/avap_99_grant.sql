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
    OWNER TO sig_create;

GRANT ALL ON SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq TO PUBLIC;
GRANT ALL ON SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq TO create_sig;
GRANT ALL ON SEQUENCE m_urbanisme_reg.an_sup_ac4_avap_media_gid_seq TO sig_create;

-- #################################################################### DOMAINE DE VALEUR  ####################################################################

ALTER TABLE m_urbanisme_reg.lt_avap_cloture
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.lt_avap_cloture TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_cloture TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.lt_avap_cloture TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_cloture TO create_sig;

ALTER TABLE m_urbanisme_reg.lt_avap_protec
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.lt_avap_protec TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_protec TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.lt_avap_protec TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_protec TO create_sig;

ALTER TABLE m_urbanisme_reg.lt_avap_ptpatri
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.lt_avap_ptpatri TO create_sig;

-- #################################################################### TABLE  ####################################################################

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO create_sig;


ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_assiette_sup_s TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_airedevue TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_alignarbre TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_cloture TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_espacepaysager TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_forti TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_peri TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_protect TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO sig_create;
GRANT INSERT,SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptdevue TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_ptpatrimoine TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_secteur TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_urbainpatri TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_avap_vestige TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac4_generateur_sup_s TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_l TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_p TO create_sig;

ALTER TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s
    OWNER to sig_create;

GRANT SELECT ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO read_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO sig_create;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO edit_sig;
GRANT ALL ON TABLE m_urbanisme_reg.geo_sup_ac1_d_avap_s TO create_sig;

-- ########################################################### FONCTION  ####################################################################

Sans objet

-- ########################################################### VUE DE GESTION  ####################################################################

Sans objet

-- ########################################################### VUE APPLICATIVE ####################################################################

ALTER TABLE x_apps.xapps_an_vmr_sup_ac4
    OWNER TO sig_create;

GRANT ALL ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO sig_create;
GRANT SELECT ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO read_sig;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO edit_sig;
GRANT ALL ON TABLE x_apps.xapps_an_vmr_sup_ac4 TO create_sig;

ALTER TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect
    OWNER TO sig_create;

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO edit_sig;
GRANT ALL ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO create_sig;
GRANT SELECT ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO read_sig;
GRANT ALL ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO sig_create;
GRANT ALL ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO postgres;

