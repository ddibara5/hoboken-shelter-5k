CREATE OR REPLACE TABLE `hoboken-shelter.race_participants.formatted_participants` AS
  SELECT `Registration ID` AS registration_id, 
          `First Name` AS first_name, 
          `Middle Name` AS middle_name, 
          `Last Name` AS last_name, 
          `Email Address` AS email_address,
          `Street Address` AS street_address,
          `City` AS city,
          `State` AS state,
          `Country` AS country,
          CONCAT(`Street Address`,', ',`City`,' ',`State`,', ',`Country`, ' ', `Zip Code`) AS full_address,
          LPAD(CAST(`Zip Code` AS STRING), 5, '0') AS zip_code,
          `Gender` AS gender, 
          `Age` AS age,
          CASE
          WHEN age BETWEEN 0 AND 18 THEN '0-18'
          WHEN age BETWEEN 18 AND 29 THEN '18-29'
          WHEN age BETWEEN 30 AND 39 THEN '30-39'
          WHEN age BETWEEN 40 AND 49 THEN '40-49'
          ELSE '50+' END AS age_bin,
          `County` AS county,
          `Unisex Cotton T-Shirt_Sweatshirt_T-Shirt` AS Giveaway, 
          `Event` AS event,
          CASE 
            WHEN event LIKE '%Virtual%' THEN 'Virtual'
            WHEN event LIKE '%In-Person%' THEN 'In-Person'
          ELSE 'N/A' END AS event_type,
          CASE 
            WHEN event LIKE '%Kids%' THEN 'Child'
            ELSE 'Adult' END AS participant_type,
          `Registration Date` AS registration_date, 
          `Race Fee` AS race_fee, 
          `Amount Paid` AS amount_paid
  FROM `hoboken-shelter.race_participants.participants_2020`
  UNION ALL
  SELECT `Registration ID` AS registration_id, 
          `First Name` AS first_name, 
          `Middle Name` AS middle_name, 
          `Last Name` AS last_name, 
          `Email Address` AS email_address,
          `Street Address` AS street_address,
          `City` AS city,
          `State` AS state,
          `Country` AS country,
          CONCAT(`Street Address`,', ',`City`,' ',`State`,', ',`Country`, ' ', `Zip Code`) AS full_address,
          LPAD(CAST(`Zip Code` AS STRING), 5, '0') AS zip_code,
          `Gender` AS gender, 
          `Age` AS age,
          CASE
          WHEN age BETWEEN 0 AND 18 THEN '0-18'
          WHEN age BETWEEN 18 AND 29 THEN '18-29'
          WHEN age BETWEEN 30 AND 39 THEN '30-39'
          WHEN age BETWEEN 40 AND 49 THEN '40-49'
          ELSE '50+' END AS age_bin, 
          `County` AS county,
          `Giveaway` AS giveaway, 
          `Event` AS event,
          CASE 
            WHEN event LIKE '%Virtual%' THEN 'Virtual'
            WHEN event LIKE '%In-Person%' THEN 'In-Person'
          ELSE 'N/A' END AS event_type,
          CASE 
            WHEN event LIKE '%Kids%' THEN 'Child'
            ELSE 'Adult' END AS participant_type,
          `Registration Date` AS registration_date, 
          `Race Fee` AS race_fee, 
          `Amount Paid` AS amount_paid 
    FROM `hoboken-shelter.race_participants.participants_2021`
  UNION ALL
  SELECT  `Registration ID` AS registration_id, 
          `First Name` AS first_name, 
          `Middle Name` AS middle_name, 
          `Last Name` AS last_name, 
          `Email Address` AS email_address,
          `Street Address` AS street_address,
          `City` AS city,
          `State` AS state,
          `Country` AS country,
          CONCAT(`Street Address`,', ',`City`,' ',`State`,', ',`Country`, ' ', `Zip Code`) AS full_address,
          LPAD(CAST(`Zip Code` AS STRING), 5, '0') AS zip_code,
          `Gender` AS gender, 
          `Age` AS age,
          CASE
          WHEN age BETWEEN 0 AND 18 THEN '0-18'
          WHEN age BETWEEN 18 AND 29 THEN '18-29'
          WHEN age BETWEEN 30 AND 39 THEN '30-39'
          WHEN age BETWEEN 40 AND 49 THEN '40-49'
          ELSE '50+' END AS age_bin, 
          `County` AS county,
          `Giveaway` AS giveaway, 
          `Event` AS event,
          CASE 
            WHEN event LIKE '%Virtual%' THEN 'Virtual'
            WHEN event LIKE '%In-Person%' THEN 'In-Person'
          ELSE 'N/A' END AS event_type,
          CASE 
            WHEN event LIKE '%Kids%' THEN 'Child'
            ELSE 'Adult' END AS participant_type, 
          `Registration Date` AS registration_date, 
          `Race Fee` AS race_fee, 
          `Amount Paid` AS amount_paid 
    FROM `hoboken-shelter.race_participants.participants_2022`
  UNION ALL  
  SELECT  `Registration ID` AS registration_id, 
          `First Name` AS first_name, 
          `Middle Name` AS middle_name, 
          `Last Name` AS last_name, 
          `Email Address` AS email_address,
          `Street Address` AS street_address,
          `City` AS city,
          `State` AS state,
          `Country` AS country,
          CONCAT(`Street Address`,', ',`City`,' ',`State`,', ',`Country`, ' ', `Zip Code`) AS full_address,
          LPAD(CAST(`Zip Code` AS STRING), 5, '0') AS zip_code,
          `Gender` AS gender, 
          `Age` AS age,
          CASE
          WHEN age BETWEEN 0 AND 18 THEN '0-18'
          WHEN age BETWEEN 18 AND 29 THEN '18-29'
          WHEN age BETWEEN 30 AND 39 THEN '30-39'
          WHEN age BETWEEN 40 AND 49 THEN '40-49'
          ELSE '50+' END AS age_bin, 
          `County` AS county,
          `Giveaway` AS giveaway, 
          `Event` AS event,
          CASE 
            WHEN event LIKE '%Virtual%' THEN 'Virtual'
            WHEN event LIKE '%In-Person%' THEN 'In-Person'
          ELSE 'N/A' END AS event_type,
          CASE 
            WHEN event LIKE '%Kids%' THEN 'Child'
            ELSE 'Adult' END AS participant_type, 
          `Registration Date` AS registration_date, 
          `Race Fee` AS race_fee, 
          `Amount Paid` AS amount_paid  
    FROM `hoboken-shelter.race_participants.participants_2023`
  UNION ALL  
  SELECT  `Registration ID` AS registration_id, 
        `First Name` AS first_name, 
        `Middle Name` AS middle_name, 
        `Last Name` AS last_name, 
        `Email Address` AS email_address,
        `Street Address` AS street_address,
        `City` AS city,
        `State` AS state,
        `Country` AS country,
        CONCAT(`Street Address`,', ',`City`,' ',`State`,', ',`Country`, ' ', `Zip Code`) AS full_address,
        LPAD(CAST(`Zip Code` AS STRING), 5, '0') AS zip_code,
        `Gender` AS gender, 
        `Age` AS age,
        CASE
         WHEN age BETWEEN 0 AND 18 THEN '0-18'
         WHEN age BETWEEN 18 AND 29 THEN '18-29'
         WHEN age BETWEEN 30 AND 39 THEN '30-39'
         WHEN age BETWEEN 40 AND 49 THEN '40-49'
         ELSE '50+' END AS age_bin, 
        `County` AS county,
        `Giveaway` AS giveaway, 
        `Event` AS event,
        CASE 
          WHEN event LIKE '%Virtual%' THEN 'Virtual'
          WHEN event LIKE '%In-Person%' THEN 'In-Person'
        ELSE 'N/A' END AS event_type,
        CASE 
          WHEN event LIKE '%Kids%' THEN 'Child'
          ELSE 'Adult' END AS participant_type, 
        `Registration Date` AS registration_date, 
        `Race Fee` AS race_fee, 
        `Amount Paid` AS amount_paid  
  FROM `hoboken-shelter.race_participants.participants_2024`