CREATE OR REPLACE TABLE `hoboken-shelter.fundraisers.donations_fundraiser_join` AS 
  SELECT d.donation_id, d.donation_date, d.donation_year, d.donor_name, d.donation_amount,  --Donation Info
       d.fundraiser_id, 
       CASE WHEN f.fundraiser_type IS NOT NULL THEN f.fundraiser_type ELSE 'No Fundraiser' END AS fundraiser_type, 
       CASE WHEN f.fundraiser_name IS NOT NULL THEN f.fundraiser_name ELSE d.fundraiser_name END AS fundraiser_name,
       CASE WHEN f.fundraiser_team_name IS NOT NULL THEN f.fundraiser_team_name ELSE d.fundraiser_team_name END AS fundraiser_team_name,  
       f.captain_full_name, f.goal_amount, f.donations, f.collected_amount, -- Fundraiser info
       f.included_fundraiser_1, f.included_fundraiser_2, f.included_fundraiser_3, f.included_fundraiser_4, f.included_fundraiser_5, f.included_fundraiser_6, f.included_fundraiser_7, -- Team Fundraiser Info
       f.registration_date, f.registration_id, -- Race Registration Info
  FROM `hoboken-shelter.fundraisers.formatted_donations` AS d 
  FULL OUTER JOIN `hoboken-shelter.fundraisers.formatted_fundraisers` AS f
    ON d.fundraiser_id = f.fundraiser_id
 ORDER BY donation_year ASC