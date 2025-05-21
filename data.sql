DECLARE
  TYPE num_table IS TABLE OF NUMBER INDEX BY PLS_INTEGER;

  prestataire_ids num_table;

  NB_PRESTATAIRES CONSTANT PLS_INTEGER := 20;
  NB_ENTRIES_PER_PRESTATAIRE CONSTANT PLS_INTEGER := 5;

  -- Constants for scaling (1e6 = 1,000,000)
  SCALE CONSTANT NUMBER := 1e6;

BEGIN
  ----------------------------------------------------------------
  -- 1. Insert REGION (unchanged)
  ----------------------------------------------------------------
  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (1, 'Casablanca', -7.6154715, 33.5577835, 1200, 'Casablanca-Setat');

  INSERT INTO region (REGION_ID, NOM, LONGITUDE, LATITUDE, NM_MISSION, REGION)
  VALUES (2, 'EL JADIDA', -8.5448643, 33.2335172, 20, 'DOUKALA-ABDA');

 
  ----------------------------------------------------------------
  -- 3. Insert PALIER (unchanged)
  ----------------------------------------------------------------
  INSERT INTO PALIER (PALIER_ID, NOM, MAX, MIN, COUT_MOYEN)
  VALUES (1, 'PALIER1', 20000, 0, 10000);

  INSERT INTO PALIER (PALIER_ID, NOM, MAX, MIN, COUT_MOYEN)
  VALUES (2, 'PALIER2', 100000, 20000, 50000);

  ----------------------------------------------------------------
  -- 4. Insert PRESTATAIRE with custom coordinate generation
  ----------------------------------------------------------------
  FOR i IN 1 .. NB_PRESTATAIRES LOOP
    DECLARE
      lat_int   NUMBER;
      lon_int   NUMBER;
      latitude  NUMBER;
      longitude NUMBER;
    BEGIN
      -- Generate latitude as an integer representation, ensure last digit isn't 0.
      LOOP
        lat_int := TRUNC(DBMS_RANDOM.VALUE(33.500000 * SCALE, 33.600000 * SCALE));
        IF MOD(lat_int, 10) != 0 THEN
          EXIT;
        END IF;
      END LOOP;
      latitude := lat_int / SCALE;

      -- Generate longitude as an integer representation, ensure last digit isn't 0.
      LOOP
        lon_int := TRUNC(DBMS_RANDOM.VALUE(-7.71000 * SCALE, -7.50000 * SCALE));
        IF MOD(lon_int, 10) != 0 THEN
          EXIT;
        END IF;
      END LOOP;
      longitude := lon_int / SCALE;

      INSERT INTO PRESTATAIRE 
        (NOM, PRENOM, DATE_INSCRIPTION, REGION_ID, LONGITUDE, LATITUDE, NBR_MISSION, MATRICULE)
      VALUES ('PrestataireNom ' || i, 
              'PrestatairePrenom ' || i, 
              SYSDATE, 
              1, 
              longitude, 
              latitude, 
              10 * i, 
              'MAT' || i)
      RETURNING PRESTATAIRE_ID INTO prestataire_ids(i);
    END;
  END LOOP;

  ----------------------------------------------------------------
  -- 5. Insert FORFAIT / GA / PN with individual entry controls
  ----------------------------------------------------------------

  -- ✅ Separate constants for each mission type
--   DECLARE
--     NB_FORFAIT_PER_PRESTATAIRE  CONSTANT PLS_INTEGER := 60 ;
--     NB_GA_PER_PRESTATAIRE       CONSTANT PLS_INTEGER := 15;
--     NB_PN_PER_PRESTATAIRE       CONSTANT PLS_INTEGER := 44;
--   BEGIN
--     FOR i IN 1..NB_PRESTATAIRES LOOP
--       -- FORFAIT entries
--       FOR j IN 1..NB_FORFAIT_PER_PRESTATAIRE LOOP
--         INSERT INTO FORFAIT 
--           (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
--            REGION_ID, PESTATAIRE_MATRICULE, DATE_MISSIONNEMENT, DATE_CONFIRMATION_RDV,
--            ASSURE_ID, PRESTATAIRE_ID, NOTE_ASSURE, COMMENTAIRE_ASSURE)
--         VALUES (1, 0, 1000 + j, SYSDATE, SYSDATE,
--                 1, 'MAT' || i, SYSDATE, SYSDATE,
--                 assure_ids(i), prestataire_ids(i), 90 + j, 'Forfait remark ' || j);
--       END LOOP;

--       -- GA entries
--       FOR j IN 1..NB_GA_PER_PRESTATAIRE LOOP
--         INSERT INTO GA
--           (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
--            REGION_ID, MATRICULE, DATE_PUB_FACTURE, DATE_VALIDATION_DEVIS, DATEDATE_PUB_DEVIS,
--            DATE_IMMOBILISATION, ASSURE_ID, PRESTATAIRE_ID, "NOTE-ASSURE", COMMENTAIRE_ASSURE)
--         VALUES (1, 0, 1200 + j, SYSDATE, SYSDATE,
--                 1, 'MATGA' || i || '_' || j, SYSDATE, SYSDATE, SYSDATE, SYSDATE,
--                 assure_ids(i), prestataire_ids(i), 85 + j, 'GA remark ' || j);
--       END LOOP;

--       -- PN entries
--       FOR j IN 1..NB_PN_PER_PRESTATAIRE LOOP
--         INSERT INTO PN
--           (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
--            REGION_ID, MATRICULE, DATE_MISSIONNEMENT, DATE_CONFIRMATIONRDV, DATE_VALIDATION_DEVIS,
--            DATE_PUB_DEVIS, PALIER_ID, ASSURE_ID, PRESTATAIRE_ID, NOTE_ASSURE, COMMENTAIRE_ASSURE)
--         VALUES (1, 0, 1100 + j, SYSDATE, SYSDATE,
--                 1, 'MATPN' || i || '_' || j, SYSDATE, SYSDATE, SYSDATE, SYSDATE,
--                 1, assure_ids(i), prestataire_ids(i), 88 + j, 'PN remark ' || j);
--       END LOOP;
--     END LOOP;
--   END;

---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ----------------------------------------------------------------
  -- 5. Insert FORFAIT / GA / PN with random assignments
  ----------------------------------------------------------------
  -- ✅ Separate constants for each mission type

  DECLARE
    MAX_FORFAIT_PER_PRESTATAIRE  CONSTANT PLS_INTEGER := 100;
    MAX_GA_PER_PRESTATAIRE       CONSTANT PLS_INTEGER := 50;
    MAX_PN_PER_PRESTATAIRE       CONSTANT PLS_INTEGER := 50;

    nb_forfait PLS_INTEGER;
    nb_ga      PLS_INTEGER;
    nb_pn      PLS_INTEGER;
  BEGIN
    FOR i IN 1..NB_PRESTATAIRES LOOP
      -- Generate random number of missions for this prestataire
      nb_forfait := TRUNC(DBMS_RANDOM.VALUE(0, MAX_FORFAIT_PER_PRESTATAIRE + 1));
      nb_ga      := TRUNC(DBMS_RANDOM.VALUE(0, MAX_GA_PER_PRESTATAIRE + 1));
      nb_pn      := TRUNC(DBMS_RANDOM.VALUE(0, MAX_PN_PER_PRESTATAIRE + 1));

      -- FORFAIT
      FOR j IN 1..nb_forfait LOOP
        INSERT INTO FORFAIT 
          (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_VALIDATION_DEVIS, DATE_PUB_DEVIS,DATE_PUBLICATION_RAPPORT, 
           REGION_ID, PESTATAIRE_MATRICULE, DATE_MISSIONNEMENT, DATE_CONFIRMATION_RDV
           , PRESTATAIRE_ID )
        VALUES (1, 0, 1000 + j, SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600),SYSDATE - DBMS_RANDOM.VALUE(1, 600) ,SYSDATE - DBMS_RANDOM.VALUE(1, 600),
                1, 'MAT' || i, SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600),
                 prestataire_ids(i));
      END LOOP;

      -- GA
      FOR j IN 1..nb_ga LOOP
        INSERT INTO GA
          (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
           REGION_ID, MATRICULE, DATE_PUB_FACTURE, DATE_VALIDATION_DEVIS, DATE_PUB_DEVIS,
           DATE_IMMOBILISATION, PRESTATAIRE_ID)
        VALUES (1, 0, 1200 + j, SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600),
                1, 'MATGA' || i || '_' || j, SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600),
                 prestataire_ids(i));
      END LOOP;

      -- PN
      FOR j IN 1..nb_pn LOOP
        INSERT INTO PN
          (STATUS, FRAUDE, COUT_EXPERT, DATE_PRISE_PHOTO, DATE_PUBLICATION_RAPPORT,
           REGION_ID, MATRICULE, DATE_MISSIONNEMENT, DATE_CONFIRMATIONRDV, DATE_VALIDATION_DEVIS,
           DATE_PUB_DEVIS, PALIER_ID, PRESTATAIRE_ID)
        VALUES (1, 0, 1100 + j, SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600),
                1, 'MATPN' || i || '_' || j, SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600), SYSDATE - DBMS_RANDOM.VALUE(1, 600),
                1,  prestataire_ids(i));
      END LOOP;
    END LOOP;
  END;


  COMMIT;
END;