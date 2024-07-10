CREATE OR REPLACE TABLE fundraisers.formatted_fundraisers AS 
  SELECT `Fundraiser ID` AS fundraiser_id, 
          `Fundraiser Created Date` AS fundraiser_created_date,
          `Fundraiser` AS fundraiser_name,
          `Fundraiser Type` AS fundraiser_type,
          CASE
            WHEN `Fundraiser Created Date` <= '2020-11-26' THEN '2020'
            WHEN `Fundraiser Created Date` BETWEEN '2020-11-27' AND '2021-11-26' THEN '2021'
            WHEN `Fundraiser Created Date` BETWEEN '2021-11-27' AND '2022-11-26' THEN '2022'
            WHEN `Fundraiser Created Date` BETWEEN '2022-11-27' AND '2023-11-26' THEN '2023'
            WHEN `Fundraiser Created Date` BETWEEN '2023-11-27' AND '2024-11-27' THEN '2024'
            ELSE 'N/A' END AS race_year,
          `Team Fundraiser` AS fundraiser_team_name,
          INITCAP(CONCAT(`Captain First Name`, ' ', `Captain Last Name`)) AS captain_full_name, 
          `Goal Amount` AS goal_amount,
          `Donations` AS donations,
          `Collected Amount` AS collected_amount,
          `Linked Registration ID` AS registration_id,
          `Registration Date` AS registration_date,
          `Included Fundraiser #1` AS included_fundraiser_1,
          `Included Fundraiser #2` AS included_fundraiser_2,
          `Included Fundraiser #3` AS included_fundraiser_3,
          `Included Fundraiser #4` AS included_fundraiser_4,
          `Included Fundraiser #5` AS included_fundraiser_5,
          `Included Fundraiser #6` AS included_fundraiser_6,
          `Included Fundraiser #7` AS included_fundraiser_7
    FROM `fundraisers.cumulative_fundraisers_062924`