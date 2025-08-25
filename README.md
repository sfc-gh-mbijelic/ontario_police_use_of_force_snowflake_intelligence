# Ontario Police Use of Force Analysis with Snowflake Cortex Analyst

## 📊 Overview

This repository contains a complete solution for analyzing Ontario police use of force data (2023) using Snowflake Cortex Analyst and Intelligence. The project provides semantic data modeling, AI-powered analysis capabilities, and intelligent agent responses for law enforcement accountability and policy insights.

## 🗂️ Dataset

**Source**: Ontario Police Use of Force Data 2023
- **Main Records**: ~10,900 incident records
- **Individual Records**: ~12,800 individual involvement records  
- **Weapons Records**: ~8,700 weapon presence records
- **CEW Cycle Records**: ~1,100 conducted energy weapon usage records
- **Data Dictionary**: 730 metadata definitions

**Geographic Coverage**: Ontario, Canada (Municipal Police + Ontario Provincial Police)

## 🏗️ Architecture

```
CSV Data Files → Snowflake Tables → Semantic View → Cortex Analyst → Intelligence Agent
```

### Key Components:
- **Snowflake Data Warehouse**: Stores and processes police use of force data
- **Semantic Data Model**: YAML configuration for AI understanding
- **Cortex Analyst**: AI-powered analytical engine
- **Intelligence Agent**: Natural language query interface

## 📁 Repository Structure

```
├── snowflake_table_definitions.sql     # Complete table schemas + semantic view
├── police_use_of_force_semantic_model.yaml  # Cortex Analyst configuration
├── agent_response_instructions.md      # AI agent behavior guidelines
├── agent_sample_prompts.md            # 50+ example queries for testing
├── SETUP_GUIDE.md                     # Step-by-step implementation guide
└── README.md                          # This file
```

## 🚀 Quick Start

### Prerequisites
- Snowflake account with Cortex Analyst enabled
- Ontario Police Use of Force CSV data files (2023)
- Appropriate data access permissions

### 1. Set Up Snowflake Tables
```sql
-- Run the table creation scripts
USE DATABASE your_database;
USE SCHEMA your_schema;

-- Execute snowflake_table_definitions.sql
-- This creates 5 tables + 1 comprehensive semantic view
```

### 2. Load Data
```sql
-- Create stage and upload CSV files
CREATE STAGE uof_csv_stage;

-- Use Snowsight Load Data wizard or COPY INTO commands
-- to load your 5 CSV files into the tables
```

### 3. Deploy Semantic Model
1. Upload `police_use_of_force_semantic_model.yaml` to Cortex Analyst
2. Update database/schema names in the YAML file
3. Test the semantic model with basic queries

### 4. Create Intelligence Agent
1. Create new agent in Snowflake Intelligence
2. Connect to your Cortex Analyst semantic model  
3. Use `agent_response_instructions.md` for system prompts
4. Test with queries from `agent_sample_prompts.md`

## 🎯 Key Features

### Advanced Semantic Modeling
- **75+ dimensions** for comprehensive analysis
- **8 fact measures** for direct data access
- **Rich synonyms** for natural language understanding
- **Business context** integration from data dictionary

### AI-Powered Analysis
- **Natural language queries** in plain English
- **Automatic aggregations** and calculations
- **Contextual responses** for sensitive law enforcement data
- **Multi-dimensional analysis** across demographics, time, geography

### Sample Analysis Questions
- *"What are the trends in use of force incidents by race and time period?"*
- *"How often is deescalation attempted before using force?"*
- *"Which demographics are most likely to experience serious force applications?"*
- *"What is the relationship between weapon presence and injury outcomes?"*

## 📈 Analysis Capabilities

### Demographic Analysis
- Race, age, gender breakdowns
- Disparity identification and measurement
- Cross-demographic pattern analysis

### Force Type & Escalation
- Physical control vs. intermediate vs. lethal weapons
- Deescalation attempt tracking and effectiveness
- Force continuum progression analysis

### Temporal Patterns
- Time of day, day of week, seasonal trends
- Shift-based analysis
- Emergency response timing

### Geographic Insights
- Police service comparisons
- Municipal vs. provincial policing patterns
- Location type impact analysis

### Officer Safety & Outcomes
- Injury rates (officers and individuals)
- Medical treatment requirements
- Multi-officer incident patterns

## 🛠️ Technical Requirements

### Snowflake Environment
- **Cortex Analyst**: Enabled in your account
- **Intelligence**: Agent creation capabilities
- **Warehouse**: Sufficient compute for analytical queries
- **Permissions**: Data loading and semantic model deployment

### Data Files Needed
- `EN_DATA_DICTIONARY_2023.csv`
- `Police Use of Force - Main Records 2023.csv`
- `Police Use of Force - Individual Records 2023.csv` 
- `Police Use of Force - Cycle Probe Records 2023.csv`
- `Police Use of Force - Weapons Records 2023.csv`

## 📖 Documentation

- **[Setup Guide](SETUP_GUIDE.md)**: Complete implementation walkthrough
- **[Agent Instructions](agent_response_instructions.md)**: AI behavior guidelines
- **[Sample Prompts](agent_sample_prompts.md)**: 50+ test questions
- **[Table Definitions](snowflake_table_definitions.sql)**: Complete SQL schemas
- **[Semantic Model](police_use_of_force_semantic_model.yaml)**: Cortex Analyst config

## 🤝 Contributing

This project supports police accountability and evidence-based policy making. Contributions that improve analysis capabilities, data quality, or user experience are welcome.

### Areas for Enhancement
- Additional analytical dimensions
- Improved natural language processing
- Enhanced visualization capabilities
- Comparative analysis with other jurisdictions

## ⚠️ Disclaimers

- **Data Accuracy**: Analysis based on reported incidents only
- **No Causal Claims**: Correlation does not imply causation
- **Policy Neutrality**: Tool for analysis, not policy recommendation
- **Professional Use**: Intended for qualified researchers and analysts

## 📄 License

This project is intended for educational and research purposes related to police accountability and public policy analysis.

## 📞 Support

For technical implementation questions or data analysis assistance, refer to the comprehensive documentation provided in this repository.

---

**Built with Snowflake Cortex Analyst • Designed for Police Accountability Research • Supporting Evidence-Based Policy Making**
