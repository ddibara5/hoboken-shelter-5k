# Hoboken Shelter 5k Analytics

## Overview

This project involves the creation of an analytics dashboard to support the Hoboken Homeless Shelter's annual 5k race. By utilizing data visualization tools and SQL, the project delves into various aspects of participant data, fundraising achievements, and donation statistics. Through structured queries and interactive visualizations, the dashboard uncovers trends, anomalies, and correlations within the event data. This project demonstrates comprehensive data management, analysis, and visualization skills, aimed at enhancing event planning and securing sponsorships.

## Dataset

Raw data was provided by the Hoboken Shelter through their analytics platform on RunSignUp.com. The race webpage can be viewed [here](https://www.hobokenshelter.org/hobooken5k).

## Tools
- Google BigQuery for Data Analysis
- Looker Studio for Visualization - [Dashboard [Anonymized]](https://lookerstudio.google.com/reporting/47ac6e02-4417-47b4-a7e8-24c5a4691bf1)

## Code Overview
| File Name | Description | Skills Demonstrated | 
|-----------|-------------|---------------------|
| Donations & Fundraiser Join | Joined together two formatted tables with race donation and fundraiser information. Established groupings for fundraiser type, race year and team names for dashboard visualization & filtering | Case statements, Complex Joins | 
| Donations Formatting | Formatted raw donations data to establish accurate race year for dashboard filtering. Also created consistent formatting for all datetime fields for downstream joining| Case Statements, Date Functions | 
| Fundraiser Formatting | Formatted raw fundraiser data to establish accurate race year for dashboard filtering. Also created consistent formatting for all datetime fields for downstream joining| Case Statements, Date Functions | 
| Participant Formatting | Joined multiple annual participant reports to create an aggregated list of all participants, allowing for year-over-year comparisons. Also established age bins for additional participant groupings | Union Statements, Case Statements |

## Dashboard Highlights

![image](https://github.com/ddibara5/hoboken-shelter-5k/assets/169186597/d1a5cb2c-7b06-4c21-9959-0c4a7b72d8b5)



