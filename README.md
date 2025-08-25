# Ontario Police Use of Force Analysis with Snowflake Cortex Analyst

## 📊 Overview

This repository contains a complete solution for analyzing Ontario police use of force data (2023) using Snowflake Cortex Analyst and Intelligence. The project provides semantic data modeling, AI-powered analysis capabilities, intelligent agent responses, and sophisticated statistical reasoning frameworks for law enforcement accountability and policy insights.

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
- **Intelligence Agent**: Natural language query interface with advanced reasoning

## 📁 Repository Structure

```
├── snowflake_table_definitions.sql          # Complete table schemas + semantic view
├── police_use_of_force_semantic_model.yaml  # Cortex Analyst configuration
├── agent_response_instructions.md           # AI agent behavior guidelines
├── agent_sample_prompts.md                  # 50+ example queries for testing
├── agent_planning_instructions.txt          # Statistical reasoning framework
├── SETUP_GUIDE.md                          # Step-by-step implementation guide
├── examples/                                # Sample queries and use cases
├── .gitignore                              # Data protection configuration
└── README.md                               # This file
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
4. Implement `agent_planning_instructions.txt` for statistical reasoning
5. Test with queries from `agent_sample_prompts.md`

## 🎯 Key Features

### Advanced Semantic Modeling
- **75+ dimensions** for comprehensive analysis
- **8 fact measures** for direct data access
- **Rich synonyms** for natural language understanding
- **Business context** integration from data dictionary

### Sample Analysis Capabilities
- *"Compare injury rates between racial groups while controlling for resistance level, weapon presence, and time of day"*
- *"How do racial disparities in CEW usage vary by police service and officer backup presence?"*
- *"What combinations of factors are most predictive of serious injury outcomes?"*
- *"Analyze the statistical significance of deescalation effectiveness across demographic groups"*

## 📈 Analysis Capabilities

### Demographic Disparity Analysis
- **Intersectional analysis** (race × age × gender × force type)
- **Statistical significance testing** with confidence intervals
- **Controlled comparisons** accounting for confounding variables
- **Effect size calculations** beyond simple p-values

### Force Type & Escalation Analysis
- **Force continuum progression** tracking
- **Deescalation effectiveness measurement** with statistical controls
- **Proportionality assessment** between threat and response
- **Multi-step escalation pattern identification**

### Temporal & Geographic Patterns
- **Time-series analysis** with seasonal trend detection
- **Geographic disparity measurement** across police services
- **Shift and assignment type** impact analysis
- **Location-based risk factor** assessment

### Advanced Statistical Methods
- **Multi-variable regression** analysis capabilities
- **Interaction effect testing** for complex relationships
- **Sample size adequacy** verification and power analysis
- **Robustness checking** with alternative specifications

## 🧠 Agent Intelligence Framework

### Statistical Reasoning Protocol
- **Query complexity classification** (Simple → Complex → Advanced)
- **Progressive analysis building** from descriptive to analytical
- **Automatic confounder identification** and control strategies
- **Statistical safeguards** preventing common analytical errors

### Ethical Analysis Guidelines
- **Sensitivity checkpoints** for racial disparity research
- **Context-aware interpretation** of sensitive findings
- **Bias-aware methodology** acknowledging data limitations
- **Solution-oriented framing** supporting accountability goals

### Quality Assurance Standards
- **Sample size verification** for all subgroup analyses
- **Base rate contextualization** for disparity findings
- **Confidence interval reporting** for rate comparisons
- **Multiple testing corrections** when appropriate

## 📖 Documentation

- **[Setup Guide](SETUP_GUIDE.md)**: Complete implementation walkthrough
- **[Agent Instructions](agent_response_instructions.md)**: AI behavior guidelines
- **[Planning Framework](agent_planning_instructions.txt)**: Statistical reasoning protocol
- **[Sample Prompts](agent_sample_prompts.md)**: 50+ comprehensive test questions
- **[Table Definitions](snowflake_table_definitions.sql)**: Complete SQL schemas
- **[Semantic Model](police_use_of_force_semantic_model.yaml)**: Cortex Analyst config

## 🎯 Advanced Query Examples

### Basic Analysis
```
"How many use of force incidents were reported by each police service in 2023?"
"What is the demographic breakdown of individuals involved in incidents?"
```

### Statistical Disparity Analysis
```
"Compare CEW usage rates between racial groups with 95% confidence intervals"
"Test for statistical significance of injury rate differences by demographics"
```

### Multi-Variable Control Analysis
```
"Analyze racial disparities in force escalation while controlling for age, resistance level, and weapon presence"
"How do deescalation success rates vary by officer experience and incident context?"
```

### Interaction Effect Analysis
```
"Does the relationship between weapon presence and force type vary by individual demographics?"
"Test for interaction effects between time of day and police service type on force outcomes"
```

## 🤝 Contributing

This project supports police accountability and evidence-based policy making. Contributions that improve analysis capabilities, statistical rigor, or user experience are welcome.

### Areas for Enhancement
- Additional statistical methods and robustness checks
- Enhanced natural language processing for complex queries
- Expanded visualization capabilities
