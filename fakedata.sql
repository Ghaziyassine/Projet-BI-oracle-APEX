DECLARE
  TYPE num_table IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
  prestataire_ids num_table;
  NB_PRESTATAIRES CONSTANT PLS_INTEGER := 20;
  NB_ENTRIES_PER_PRESTATAIRE CONSTANT PLS_INTEGER := 5;
  SCALE CONSTANT NUMBER := 1e6;

  -- Arrays for realistic Moroccan names
  TYPE name_array IS TABLE OF VARCHAR2(100) INDEX BY PLS_INTEGER;
  last_names name_array;
  first_names name_array;

BEGIN
  -- Initialize name arrays
  last_names(1) := 'El Idrissi'; last_names(2) := 'Bennani'; last_names(3) := 'Alaoui'; 
  last_names(4) := 'Amrani'; last_names(5) := 'Choukri'; last_names(6) := 'Haddad'; 
  last_names(7) := 'Lahlou'; last_names(8) := 'Zeroual'; last_names(9) := 'Mansouri'; 
  last_names(10) := 'Tazi'; last_names(11) := 'Fassi'; last_names(12) := 'Berrada'; 
  last_names(13) := 'Rachidi'; last_names(14) := 'Kabbaj'; last_names(15) := 'Saidi';

  first_names(1) := 'Mohammed'; first_names(2) := 'Fatima'; first_names(3) := 'Ahmed'; 
  first_names(4) := 'Aicha'; first_names(5) := 'Youssef'; first_names(6) := 'Khadija'; 
  first_names(7) := 'Hassan'; first_names(8) := 'Zineb'; first_names(9) := 'Omar'; 
  first_names(10) := 'Rachida'; first_names(11) := 'Said'; first_names(12) := 'Naima'; 
  first_names(13) := 'Abdelilah'; first_names(14) := 'Laila'; first_names(15) := 'Ibrahim';

  ----------------------------------------------------------------
  -- 1. Insert REGION (unchanged)
  ----------------------------------------------------------------
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (1, 'Casablanca', -7.6154715, 33.5577835, 1200, 'Casablanca-Setat');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (2, 'EL JADIDA', -8.5448643, 33.2335172, 20, 'DOUKALA-ABDA');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (3, 'Rabat',  -6.83255, 34.01325, 800, 'Rabat-Salé-Kénitra');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (4, 'Fes',  -5.00028, 34.03313, 1000, 'Fès-Meknès');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (5, 'Marrakech', -7.98108, 31.62947, 900, 'Marrakech-Safi');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (6, 'Tangier',  -5.79975, 35.76727,850, 'Tanger-Tétouan-Al Hoceïma');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (7, 'Meknes',  -5.54727,33.89352, 700, 'Fès-Meknès');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (8, 'Agadir',  -9.59815,30.42018, 600, 'Souss-Massa');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (9, 'Oujda',  -1.90858,34.68139, 650, 'Oriental');
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (10, 'Kenitra',  -6.58020,34.26101, 600, 'Rabat-Salé-Kénitra');
  ----------------------------------------------------------------
  -- 3. Insert PALIER (unchanged)
  ----------------------------------------------------------------
  INSERT INTO PALIER (PALIER_ID, NOM, MAX, MIN, COUT_MOYEN)
  VALUES (1, 'PALIER1', 20000, 0, 10000);
  INSERT INTO PALIER (PALIER_ID, NOM, MAX, MIN, COUT_MOYEN)
  VALUES (2, 'PALIER2', 100000, 20000, 50000);

  ----------------------------------------------------------------
  -- 4. Insert PRESTATAIRE with realistic NOM, PRENOM, and MATRICULE
  ----------------------------------------------------------------
  FOR i IN 1 .. NB_PRESTATAIRES LOOP
    DECLARE
      lat_int   NUMBER;
      lon_int   NUMBER;
      latitude  NUMBER;
      longitude NUMBER;
      v_nom     VARCHAR2(100);
      v_prenom  VARCHAR2(100);
      v_matricule VARCHAR2(10);
    BEGIN
      -- Generate latitude as an integer representation, ensure last digit isn't 0
      LOOP
        lat_int := TRUNC(DBMS_RANDOM.VALUE(33.500000 * SCALE, 33.600000 * SCALE));
        IF MOD(lat_int, 10) != 0 THEN
          EXIT;
        END IF;
      END LOOP;
      latitude := lat_int / SCALE;

      -- Generate longitude as an integer representation, ensure last digit isn't 0
      LOOP
        lon_int := TRUNC(DBMS_RANDOM.VALUE(-7.71000 * SCALE, -7.50000 * SCALE));
        IF MOD(lon_int, 10) != 0 THEN
          EXIT;
        END IF;
      END LOOP;
      longitude := lon_int / SCALE;

      -- Select random realistic names
      v_nom := last_names(TRUNC(DBMS_RANDOM.VALUE(1, 16))); -- Random index 1-15
      v_prenom := first_names(TRUNC(DBMS_RANDOM.VALUE(1, 16)));
      -- Generate unique matricule (PRST0001 to PRST0020)
      v_matricule := 'PRST' || LPAD(i, 4, '0');

      INSERT INTO PRESTATAIRE 
        (NOM, PRENOM, DATE_INSCRIPTION, REGION_ID, LONGITUDE, LATITUDE, NBR_MISSION, MATRICULE)
      VALUES (v_nom, v_prenom, SYSDATE, 1, longitude, latitude, 10 * i, v_matricule)
      RETURNING PRESTATAIRE_ID INTO prestataire_ids(i);
    END;
  END LOOP;

  
  ----------------------------------------------------------------
  -- 6. Insert EVALUATION (3 evaluations per prestataire)
  ----------------------------------------------------------------
  FOR i IN 1 .. NB_PRESTATAIRES LOOP
    FOR j IN 1 .. 3 LOOP
      DECLARE
        v_date_evaluation DATE;
        v_taux_respet_delais NUMBER;
        v_taux_incident NUMBER;
        v_taux_missionnement NUMBER;
        v_taux_respect_coutmoy NUMBER;
        v_taux_de_rectifation NUMBER;
        v_score FLOAT;
      BEGIN
        -- Set evaluation date to July 1 of 2023, 2024, 2025
        v_date_evaluation := CASE j
                             WHEN 1 THEN TO_DATE('2023-07-01', 'YYYY-MM-DD')
                             WHEN 2 THEN TO_DATE('2024-07-01', 'YYYY-MM-DD')
                             WHEN 3 THEN TO_DATE('2025-07-01', 'YYYY-MM-DD')
                           END;
        -- Generate taux values in (0, 10) with 3 decimal places
        v_taux_respet_delais := ROUND(DBMS_RANDOM.VALUE(70, 99.99), 3);
        v_taux_incident := ROUND(DBMS_RANDOM.VALUE(1.1, 20.1), 3);
        v_taux_missionnement := ROUND(DBMS_RANDOM.VALUE(50, 99.9), 3);
        v_taux_respect_coutmoy := ROUND(DBMS_RANDOM.VALUE(80.1, 99.9), 3);
        v_taux_de_rectifation := ROUND(DBMS_RANDOM.VALUE(1.1, 20.9), 3);
        -- Calculate score as sum of taux values * 2
        v_score := (0.3 * v_taux_respet_delais / 100 +
            0.2 * (1 - v_taux_incident / 100) +
            0.25 * v_taux_missionnement / 100 +
            0.15 * v_taux_respect_coutmoy / 100 +
            0.1 * (1 - v_taux_de_rectifation / 100)) * 100;
        INSERT INTO EVALUATION 
          (SCORE, PRESTATAIRE_ID, DATE_EVALUATION, TAUX_RESPET_DELAIS, NBR_MISSION_RETARD, 
           TAUX_INCIDENT, TAUX_MISSIONNEMENT, TAUX_RESPECT_COUTMOY, TAUX_DE_RECTIFATION)
        VALUES (
          v_score,
          prestataire_ids(i),
          v_date_evaluation,
          v_taux_respet_delais,
          TRUNC(DBMS_RANDOM.VALUE(0, 11)),
          v_taux_incident,
          v_taux_missionnement,
          v_taux_respect_coutmoy,
          v_taux_de_rectifation
        );
      END;
    END LOOP;
  END LOOP;


  ----------------------------------------------------------------
  -- 5. Insert FORFAIT / GA / PN with sequential date assignments (unchanged)
  ----------------------------------------------------------------
  DECLARE
    MAX_FORFAIT_PER_PRESTATAIRE CONSTANT PLS_INTEGER := 100;
    MAX_GA_PER_PRESTATAIRE      CONSTANT PLS_INTEGER := 50;
    MAX_PN_PER_PRESTATAIRE      CONSTANT PLS_INTEGER := 50;
    nb_forfait PLS_INTEGER;
    nb_ga      PLS_INTEGER;
    nb_pn      PLS_INTEGER;
  BEGIN
    FOR i IN 1 .. NB_PRESTATAIRES LOOP
      -- Generate random number of missions for this prestataire
      nb_forfait := TRUNC(DBMS_RANDOM.VALUE(0, MAX_FORFAIT_PER_PRESTATAIRE + 1));
      nb_ga      := TRUNC(DBMS_RANDOM.VALUE(0, MAX_GA_PER_PRESTATAIRE + 1));
      nb_pn      := TRUNC(DBMS_RANDOM.VALUE(0, MAX_PN_PER_PRESTATAIRE + 1));

      -- FORFAIT
      FOR j IN 1 .. nb_forfait LOOP
        DECLARE
          base_date DATE := TRUNC(SYSDATE - DBMS_RANDOM.VALUE(1, 600));
          date_prise_photo DATE := base_date;
          date_missionnement DATE := date_prise_photo + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_pub_devis DATE := date_missionnement + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_validation_devis DATE := date_pub_devis + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_publication_rapport DATE := date_validation_devis + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_confirmation_rdv DATE := date_missionnement + TRUNC(DBMS_RANDOM.VALUE(1, date_publication_rapport - date_missionnement));
        BEGIN
          INSERT INTO FORFAIT 
            (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_VALIDATION_DEVIS, DATE_PUB_DEVIS, 
             DATE_PUBLICATION_RAPPORT, REGION_ID, PESTATAIRE_MATRICULE, DATE_MISSIONNEMENT, 
             DATE_CONFIRMATION_RDV, PRESTATAIRE_ID)
          VALUES (1, 0, 1000 + j, date_prise_photo, date_validation_devis, date_pub_devis, 
                  date_publication_rapport, 1, 'MAT' || i, date_missionnement, 
                  date_confirmation_rdv, prestataire_ids(i));
        END;
      END LOOP;

      -- GA
      FOR j IN 1 .. nb_ga LOOP
        DECLARE
          base_date DATE := TRUNC(SYSDATE - DBMS_RANDOM.VALUE(1, 600));
          date_prise_photo DATE := base_date;
          date_immobilisation DATE := date_prise_photo + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_pub_devis DATE := date_immobilisation + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_validation_devis DATE := date_pub_devis + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_publication_rapport DATE := date_validation_devis + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_pub_facture DATE := date_prise_photo + TRUNC(DBMS_RANDOM.VALUE(1, date_publication_rapport - date_prise_photo));
        BEGIN
          INSERT INTO GA
            (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
             REGION_ID, MATRICULE, DATE_PUB_FACTURE, DATE_VALIDATION_DEVIS, DATE_PUB_DEVIS,
             DATE_IMMOBILISATION, PRESTATAIRE_ID)
          VALUES (1, 0, 1200 + j, date_prise_photo, date_publication_rapport,
                  1, 'MATGA' || i || '_' || j, date_pub_facture, date_validation_devis, 
                  date_pub_devis, date_immobilisation, prestataire_ids(i));
        END;
      END LOOP;

      -- PN
      FOR j IN 1 .. nb_pn LOOP
        DECLARE
          base_date DATE := TRUNC(SYSDATE - DBMS_RANDOM.VALUE(1, 600));
          date_prise_photo DATE := base_date;
          date_missionnement DATE := date_prise_photo + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_pub_devis DATE := date_missionnement + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_validation_devis DATE := date_pub_devis + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_publication_rapport DATE := date_validation_devis + TRUNC(DBMS_RANDOM.VALUE(1, 6));
          date_confirmation_rdv DATE := date_missionnement + TRUNC(DBMS_RANDOM.VALUE(1, date_publication_rapport - date_missionnement));
        BEGIN
          INSERT INTO PN
            (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
             REGION_ID, MATRICULE, DATE_MISSIONNEMENT, DATE_CONFIRMATIONRDV, 
             DATE_VALIDATION_DEVIS, DATE_PUB_DEVIS, PALIER_ID, PRESTATAIRE_ID)
          VALUES (1, 0, 1100 + j, date_prise_photo, date_publication_rapport,
                  1, 'MATPN' || i || '_' || j, date_missionnement, date_confirmation_rdv, 
                  date_validation_devis, date_pub_devis, 1, prestataire_ids(i));
        END;
      END LOOP;
    END LOOP;
  END;

  COMMIT;
END;
/