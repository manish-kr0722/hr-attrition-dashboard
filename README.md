# Human Resource Analytics Dashboard

An interactive Power BI dashboard analyzing employee attrition, compensation, and workforce composition using the IBM HR Analytics dataset. Built to identify why employees leave and where the organization should focus retention efforts.

# Overview

This project explores employee attrition patterns across department, job role, tenure, compensation, and engagement factors, then translates the findings into a prioritized set of actionable insights for HR leadership.

# The dashboard is organized into four pages:

 Overview — workforce composition (age, gender, marital status, department, headcount)
 Attrition — attrition rate broken down by department, job role, business travel, job involvement, and distance from home
 Compensation & Career — income by job level, income gap between leavers and stayers, promotion cadence, and career progression
 Insights — synthesized key findings with exact figures and a management recommendation summary


# Key Findings
Sales Representatives are the highest-risk role — 39.76% attrition, more than double the next-highest role (Laboratory Technician, 23.94%)
Attrition is heavily front-loaded in tenure — employees in their first 2 years leave at 29.82%, nearly 4x the rate of employees with 10+ years (8.13%)
Frequent travel nearly triples attrition risk — 24.91% for frequent travelers vs. 8.00% for non-travelers
Leavers earn ~30% less — employees who left averaged $4,787/month vs. $6,833/month for those who stayed, a gap of $2,046


Dataset Source: IBM HR Analytics Employee Attrition & Performance (Kaggle)
Size: 1,470 employee records, 35 attributes
Type: Fictional dataset created by IBM data scientists for analytics practice


# Tools & Techniques

Power BI — data modeling, DAX measures, calculated columns, conditional formatting, page navigation

# DAX highlights:
Custom measures for attrition rate, tenure buckets, and income gap analysis
Dynamic MAXX-based measure to auto-identify the highest-attrition job role
Conditional formatting rules to visually flag risk categories (≥20% attrition) across multiple charts

Design: consistent color system (navy = neutral/baseline, orange-red = risk/attrition, blue = compensation), custom page navigator, and  a dedicated insights page with color-coded findings

# Author

# Manish Kumar Last updated: August 2026
