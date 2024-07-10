CREATE OR REPLACE TABLE fundraisers.formatted_donations AS
SELECT donation_id,
       donation_date,
       donor_name,
       CASE
            WHEN donation_date <= '2020-11-26' THEN '2020'
            WHEN donation_date BETWEEN '2020-11-27' AND '2021-11-26' THEN '2021'
            WHEN donation_date BETWEEN '2021-11-27' AND '2022-11-26' THEN '2022'
            WHEN donation_date BETWEEN '2022-11-27' AND '2023-11-26' THEN '2023'
            WHEN donation_date BETWEEN '2023-11-27' AND '2024-11-27' THEN '2024'
            ELSE 'N/A' END AS donation_year,
      donor_email,
      donor_address,
      donation_amount,
      fundraiser_id,
      fundraiser_name,
      fundraiser_team_name
  FROM (SELECT `Donation ID` AS donation_id,
                PARSE_DATETIME('%m/%d/%Y %I:%M%p', SUBSTR(`Donation Date`, 1, STRPOS(`Donation Date`, ' ') + 7)) AS donation_date,
                CONCAT(`First Name`,' ',`Last Name`) AS donor_name,
                `Donor Email` AS donor_email,
                CONCAT(`Address`, ', ', `City`, ', ', `State`, ' ', LPAD(`Zip Code`, 5, '0')) AS donor_address,
               `Amount After Fees` AS donation_amount,
               `Fundraiser ID` AS fundraiser_id,
               `Fundraiser Name` AS fundraiser_name,
               `Fundraiser Team` AS fundraiser_team_name
          FROM `fundraisers.cumulative_donations_062924`)