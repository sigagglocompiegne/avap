 
/*AVAP V1.0*/
/*Creation des vues nécessaires à l'application web-métier */
/*avap_21_VUES_XAPPS.sql */
/*PostGIS*/
/* GeoCompiegnois - http://geo.compiegnois.fr/ */
/* Auteur : Grégory Bodet */


-- ###############################################################################################################################
-- ###                                                                                                                         ###
-- ###                                                           DROP                                                          ###
-- ###                                                                                                                         ###
-- ###############################################################################################################################

--VUES

DROP VIEW IF EXISTS x_apps.xapps_an_vmr_sup_ac4;
DROP VIEW IF EXISTS x_apps.xapps_vmr_geo_sup_ac4_avap_protect;



-- #################################################################################################################################
-- ###                                                                                                                           ###
-- ###                                                      VUES APPLICATIVES                                                    ###
-- ###                                                                                                                           ###
-- #################################################################################################################################

--################################################## xapps_an_vmr_sup_ac4 ###############################################

-- View: x_apps.xapps_an_vmr_sup_ac4

-- DROP MATERIALIZED VIEW x_apps.xapps_an_vmr_sup_ac4;

CREATE MATERIALIZED VIEW x_apps.xapps_an_vmr_sup_ac4
TABLESPACE pg_default
AS
 WITH req_tot AS (
         WITH req_60159 AS (
                 SELECT '60'::text || p.idu AS idu,
                        CASE
                            WHEN st_intersects(ac4.geom, st_buffer(p.geom, '-0.2'::numeric::double precision)) IS TRUE THEN 'oui'::text
                            ELSE 'non'::text
                        END AS ac4
                   FROM m_urbanisme_reg.geo_sup_ac4_assiette_sup_s ac4,
                    r_cadastre.geo_parcelle p
                  WHERE "left"(p.idu, 3) = '159'::text
                ), req_secteur AS (
                 SELECT '60'::text || p.idu AS idu,
                    string_agg(ac4.libelle::text, ' et '::text) AS secteur,
                    ((((((((((((((('<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_titre1_20200306.pdf" target="_blank">Règlement titre 1</a>'::text || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_titre2_20200306.pdf" target="_blank">Règlement titre 2</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_titre3_20200306.pdf" target="_blank">Règlement titre 3</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_diagnostic_20200306.pdf" target="_blank">Diagnostic</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_rapport_20200306.pdf" target="_blank">Rapport de présentation</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_20200306.pdf" target="_blank">Règlement graphique</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_centre_20200306.pdf" target="_blank">Règlement graphique (centre)</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_royallieu_20200306.pdf" target="_blank">Règlement graphique (Royallieu)</a>'::text) || '<br>'::text) || '<a href="http://geo.compiegnois.fr/documents/metiers/urba/sup/200067965_AC4_60159_20200306/Pieces_ecrites/200067965_AC4_60159_reglement_graphique_sud_20200306.pdf" target="_blank">Règlement graphique (Sud)</a>'::text AS reglement
                   FROM m_urbanisme_reg.geo_sup_ac4_avap_secteur ac4,
                    r_cadastre.geo_parcelle p
                  WHERE "left"(p.idu, 3) = '159'::text AND st_intersects(ac4.geom, st_buffer(p.geom, '-0.2'::numeric::double precision)) IS TRUE
                  GROUP BY ('60'::text || p.idu)
                ), req_protect AS (
                 SELECT '60'::text || p.idu AS idu,
                    string_agg((
                        CASE
                            WHEN ac4.protec::text = '20'::text THEN '<img src="http://geo.compiegnois.fr/documents/cms/avap_remarquable.png" alt ="">'::text
                            WHEN ac4.protec::text = '30'::text THEN '<img src="http://geo.compiegnois.fr/documents/cms/avap_interet.png" alt ="">'::text
                            WHEN ac4.protec::text = '40'::text THEN '<img src="http://geo.compiegnois.fr/documents/cms/avap_accompagnement.png" alt ="">'::text
                            WHEN ac4.protec::text = '50'::text THEN '<img src="http://geo.compiegnois.fr/documents/cms/avap_inserer.png" alt ="">'::text
                            WHEN ac4.protec::text = '60'::text THEN '<img src="http://geo.compiegnois.fr/documents/cms/avap_sansqualification.png" alt ="">'::text
                            ELSE NULL::text
                        END || ' '::text) || pr.valeur::text, '<br>'::text) AS protection
                   FROM m_urbanisme_reg.geo_sup_ac4_avap_protect ac4,
                    r_cadastre.geo_parcelle p,
                    m_urbanisme_reg.lt_avap_protec pr
                  WHERE "left"(p.idu, 3) = '159'::text AND st_intersects(ac4.geom1, p.geom) IS TRUE AND ac4.protec::text = pr.code::text
                  GROUP BY ('60'::text || p.idu)
                ), req_autre AS (
                 SELECT '60'::text || p.idu AS idu,
                    'non'::text AS ac4
                   FROM r_cadastre.geo_parcelle p
                  WHERE "left"(p.idu, 3) <> '159'::text
                )
         SELECT r.idu,
            r.ac4,
            ((((('<center><table><tr><td width="20%" border-width: 1px;><center><b>Secteur(s)</b></center></td><td width="40%"><center><b>Accès aux pièces réglementaires</b></center></td><td width="40%"><center><b>Niveau de protection <br>des bâtiments présents sur la parcelle</b></center></td></tr><tr><td><center>'::text ||
                CASE
                    WHEN s.secteur IS NULL THEN ''::text
                    ELSE s.secteur
                END) || '</center></td><td>'::text) ||
                CASE
                    WHEN s.reglement IS NULL THEN ''::text
                    ELSE s.reglement
                END) || '</td><td>'::text) ||
                CASE
                    WHEN p.protection IS NULL THEN 'Aucun bâtiment ou bâtiment(s) classé(s) au titre des monuments historiques (cf liste des SUP)'::text
                    ELSE p.protection
                END) || '</td></tr></table></center>'::text AS avap,
            '<img src="http://geo.compiegnois.fr/documents/metiers/urba/divers/geo_legende_avap/geo_legende_avap.jpg" alt="">'::text AS leg_avap
           FROM req_60159 r
             LEFT JOIN req_secteur s ON r.idu = s.idu
             LEFT JOIN req_protect p ON r.idu = p.idu
        UNION ALL
         SELECT req_autre.idu,
            req_autre.ac4,
            ''::text AS avap,
            ''::text AS leg_avap
           FROM req_autre
        )
 SELECT row_number() OVER () AS gid,
    req_tot.idu,
    req_tot.ac4,
    req_tot.avap,
    req_tot.leg_avap
   FROM req_tot
WITH DATA;


COMMENT ON MATERIALIZED VIEW x_apps.xapps_an_vmr_sup_ac4
    IS 'Vue matérialisée formatant l''affichage des informations infra-avap sur la commune de Compiègne (pour note de renseignements d''urbanisme)';

--################################################## xapps_vmr_geo_sup_ac4_avap_protect ###############################################

-- View: x_apps.xapps_vmr_geo_sup_ac4_avap_protect

-- DROP MATERIALIZED VIEW x_apps.xapps_vmr_geo_sup_ac4_avap_protect;

CREATE MATERIALIZED VIEW x_apps.xapps_vmr_geo_sup_ac4_avap_protect
TABLESPACE pg_default
AS
 SELECT geo_sup_ac4_avap_protect.gid,
    geo_sup_ac4_avap_protect.insee,
    geo_sup_ac4_avap_protect.protec,
    geo_sup_ac4_avap_protect.demol,
    geo_sup_ac4_avap_protect.hauteur,
    geo_sup_ac4_avap_protect.src_geom,
    geo_sup_ac4_avap_protect.nomplan,
    geo_sup_ac4_avap_protect.urlplan,
    geo_sup_ac4_avap_protect.nomreg,
    geo_sup_ac4_avap_protect.urlreg,
    geo_sup_ac4_avap_protect.geom
   FROM m_urbanisme_reg.geo_sup_ac4_avap_protect
  WHERE geo_sup_ac4_avap_protect.demol IS FALSE
WITH DATA;

ALTER TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect
    OWNER TO sig_create;

COMMENT ON MATERIALIZED VIEW x_apps.xapps_vmr_geo_sup_ac4_avap_protect
    IS 'Vue matérialisée filtrant la hiérarchisation des bâtiments sans les démolitions (utilisée dans les traitements et les applications GEO)';

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO edit_sig;
GRANT ALL ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO create_sig;
GRANT SELECT ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO read_sig;
GRANT ALL ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO sig_create;
GRANT ALL ON TABLE x_apps.xapps_vmr_geo_sup_ac4_avap_protect TO postgres;
