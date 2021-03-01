![picto](https://github.com/sigagglocompiegne/orga_gest_igeo/blob/master/doc/img/geocompiegnois_2020_reduit_v2.png)

# Prescriptions spécifiques (locales) pour la servitude d'utilité publique AC4 (AVAP) de la ville de Compiègne

Ensemble des éléments constituant la mise en oeuvre de la base de données de la servitude d'utilité publique AC4 (AVAP) sur la ville de Compiègne et son application dans les applications WEB de l'Agglomération de la Région de Compiègne.


- Script d'initialisation de la base de données
  * [Suivi des modifications](bdd/avap_00_trace.sql)
  * [Création  de la structure initiale](bdd/avap_10_squelette.sql)
  * [Création des vues de gestion](bdd/avap_20_vues_gestion.sql)
  * [Création des vues applicatives](bdd/avap_21_vues_xapps.sql)
  * [Création des privilèges](bdd/avap_99_grant.sql)
- [Documentation d'administration de la base](bdd/doc_admin_bd_avap.md)
- [Documentation d'administration de l'application](app/doc_admin_app_avap.md)
- [Documentation d'administration du règlement graphique AVAP](sld/doc_admin_avap.md)
- [Ressources pour la sémiologie graphique AVAP](sld/)

## Contexte

L’ARC est engagée dans un plan de modernisation numérique pour l’exercice de ses missions de services publics. L’objectif poursuivi vise à permettre à la collectivité de se doter d’outil d’aide à la décision et d’optimiser l’organisation de ses services. Ces objectifs se déclinent avec la mise en place d’outils informatiques adaptés au quotidien des services et le nécessaire retour auprès de la collectivité, des informations (données) produites et gérées par ses prestataires. 

L’ARC privilégie donc une organisation dans laquelle l’Interface Homme Machine (IHM) du métier assure l’alimentation d’un entrepôt de données territoriales. Cette stratégie « agile » permet de répondre au plus près des besoins des services dans une trajectoire soutenable assurant à la fois une bonne maitrise des flux d’information et un temps d’acculturation au sein de l’organisation.

## Voir aussi

* [Lire la documentation du standard national CNIG](http://cnig.gouv.fr/?page_id=2732)
* [Ressources sur les données Urbanisme](https://github.com/sigagglocompiegne/docurba)

## Jeu de données consolidé

Vous pouvez retrouver le jeu de données sur la ville de Compiègne en cliquant [ici](https://geo.compiegnois.fr/geonetwork/srv/fre/catalog.search#/metadata/SUP-AC4-60159-200067965-20200306).
