# CRM Sales Dashboard

## Overview

This project was completed in **September 2026** as a **Maven Analytics Guided Project**.

The goal was to build an interactive sales dashboard for a sales manager to monitor CRM pipeline performance.

The original dashboard was created in **Google Sheets**.

The Excel file included in this repository is an exported snapshot of that Google Sheets workbook so the project can be stored and reviewed on GitHub.

## Project type

**Guided Project**

This was not a fully self-defined business case.

The business scenario and source datasets were provided by Maven Analytics. I completed the data preparation, analysis and dashboard work using the provided materials.

## Tools

- Google Sheets
- Pivot Tables
- XLOOKUP
- SUMIFS
- COUNTIFS
- IF / IFS
- IFERROR
- INDEX / MATCH
- Charts
- Filters / slicers
- Basic CRM sales analysis

## Dataset

The project uses several related CRM datasets:

- `sales_pipeline.csv`
- `sales_teams.csv`
- `accounts.csv`
- `products.csv`
- `data_dictionary.csv`

The sales pipeline dataset contains approximately **8,800 opportunity records**.

The tables contain information about:

- sales opportunities
- sales agents
- managers
- regional offices
- customer accounts
- company sectors
- company size
- location
- products
- deal stages
- close dates
- sales values

## Data preparation

I enriched the sales pipeline using information from the other source tables.

Examples include adding:

- manager
- regional office
- account sector
- company size
- company location

I used lookup and conditional formulas such as:

- `XLOOKUP`
- `IFS`
- `IFERROR`
- `INDEX / MATCH`

Company size was also categorized into business segments such as:

- SMB
- Mid-Market
- Enterprise

## Analysis

The dashboard summarizes sales performance across several dimensions.

### Industry

I analyzed:

- opportunities won
- total sales value
- close rate
- average deal value

by customer industry.

### Company size

I compared sales performance across:

- SMB
- Mid-Market
- Enterprise

### Location

I analyzed sales performance by customer country/location.

### Sales team

The workbook also includes analysis of sales representatives and sales performance.

## Main KPIs

The dashboard includes metrics such as:

- total sales value
- opportunities won
- close rate
- average deal value
- top-performing sector
- sales performance by company size
- sales performance by location

## Dashboard files

### Original version

The original working version was built in **Google Sheets**.

### GitHub version

`dashboard/CRM_Sales_Dashboard.xlsx`

This Excel file is an exported snapshot of the Google Sheets dashboard.

Because Google Sheets and Microsoft Excel do not always interpret formulas, charts and interactive controls in exactly the same way, the exported `.xlsx` file should not be treated as the authoritative version if a difference appears between the two formats.

## Source files

The original input files are stored under:

`data/`

These files are kept separately from the dashboard so the analysis can be reproduced.

## What I learned

This project gave me practical experience with:

- combining multiple related business datasets;
- using lookup formulas to enrich a transaction table;
- validating and summarizing CRM data;
- building sales KPIs;
- using Pivot Tables for analysis;
- creating an interactive management dashboard;
- translating raw sales pipeline data into business-facing metrics.

## Current limitations

Because this was a guided project, some important parts of the problem definition and dataset design were already provided.

The dashboard also relies heavily on spreadsheet formulas and Pivot Tables.

For a larger production dataset, I would prefer a workflow such as:

SQL / data model  
→ validated KPI layer  
→ dashboard

rather than putting most transformation logic directly inside a spreadsheet.

## What I would improve next

If I continued this project, I would:

1. Create a clearer data-quality checklist before analysis.
2. Standardize all labels and chart titles.
3. Document KPI definitions more explicitly.
4. Separate data preparation from presentation more clearly.
5. Add quarter-over-quarter performance analysis.
6. Add target vs. actual sales analysis if target data became available.
7. Rebuild the core analysis in SQL and use the spreadsheet primarily for reporting.
8. Add a dashboard preview image to this repository.

## Note

This project is included as evidence of my spreadsheet-based business analysis skills.

It should be evaluated as a completed **guided analytics project**, not as an independently sourced commercial consulting project.
