# Ontario Police Use of Force Analysis with Snowflake Cortex Analyst

## 📊 Overview

This repository contains a complete solution for analyzing Ontario police use of force data (2020-2023) using Snowflake Cortex Analyst and Intelligence. The project provides semantic data modeling, AI-powered analysis capabilities, intelligent agent responses, PDF technical report search capabilities, and sophisticated statistical reasoning frameworks for law enforcement accountability and policy insights.

## 🗂️ Dataset

**Source**: Ontario Police Use of Force Data (2020-2023)

### 2023 Current Data
- **Main Records**: ~10,900 incident records
- **Individual Records**: ~12,800 individual involvement records  
- **Weapons Records**: ~8,700 weapon presence records
- **CEW Cycle Records**: ~1,100 conducted energy weapon usage records
- **Data Dictionary**: 730 metadata definitions

### 2020-2022 Historical Data
- **Aggregate Summary**: Multi-year trends by category and measure
- **Detailed Dataset**: Historical incident records with comprehensive force tracking

**Geographic Coverage**: Ontario, Canada (Municipal Police + Ontario Provincial Police)
**Temporal Coverage**: 2020-2023 (4 years of comprehensive data)

## 🏗️ Architecture

```
CSV Data Files → Snowflake Tables → Semantic View → Cortex Analyst → Intelligence Agent
PDF Reports   → Stage → Parse → Chunk → Search Service → Enhanced Analysis
```

### Key Components:
- **Snowflake Data Warehouse**: Stores and processes police use of force data
- **Semantic Data Model**: YAML configuration for AI understanding
- **Cortex Analyst**: AI-powered analytical engine for structured data
- **Cortex Search Service**: AI-powered PDF technical report search
- **Intelligence Agent**: Natural language query interface with advanced reasoning
- **Integrated Analysis**: Combined insights from structured data and document search

## 📁 Repository Structure

```
├── snowflake_table_definitions.sql          # Complete table schemas + semantic view + search service
├── police_use_of_force_semantic_model.yaml  # Cortex Analyst configuration
├── agent_response_instructions.md           # AI agent behavior guidelines
├── CORTEX_ANALYST_SAMPLE_QUERIES.md         # 215 lines of comprehensive sample queries
├── documentation/                           # Detailed setup and usage guides
│   ├── agent_planning_instructions.txt      # Statistical reasoning framework
│   ├── agent_response_instructions.md       # Agent behavior configuration
│   ├── agent_sample_prompts.md              # 50+ example queries for testing
│   └── SETUP_GUIDE.md                       # Implementation walkthrough
├── examples/                                # Sample queries and use cases
├── data/                                    # CSV data files (2020-2023)
│   ├── EN_DATA_DICTIONARY_2023.csv          # Metadata definitions
│   ├── Police Use of Force - *.csv          # 2023 incident data (5 files)
│   ├── useofforce_agrregatesummarybyyear_2020-2022.csv    # Historical aggregates
│   └── useofforce_detaileddataset_2020-2022.csv          # Historical detailed data
├── .gitignore                              # Data protection configuration
└── README.md                               # This file
```

## 🚀 Quick Start

### Prerequisites
- Snowflake account with Cortex Analyst and Search Services enabled
- Ontario Police Use of Force CSV data files (2020-2023)
- PDF technical reports (optional, for enhanced search capabilities)
- Appropriate data access permissions

### 1. Set Up Snowflake Tables
```sql
-- Run the table creation scripts
USE DATABASE your_database;
USE SCHEMA your_schema;

-- Execute snowflake_table_definitions.sql
-- This creates 7 tables + 1 comprehensive semantic view + PDF search service
-- Includes both 2023 current data and 2020-2022 historical data integration
```

### 2. Load Data
```sql
-- Create stage and upload CSV files
CREATE STAGE uof_csv_stage;

-- Use Snowsight Load Data wizard or COPY INTO commands
-- to load your 7 CSV files into the tables (5 x 2023 + 2 x historical)

-- Optional: Load PDF technical reports
-- Upload PDFs to UOF_TECHNICAL_REPORTS_STAGE for enhanced search capabilities
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

### AI-Powered Analysis with Statistical Rigor
- **Natural language queries** in plain English
- **Advanced statistical reasoning** with built-in safeguards
- **Progressive analysis strategies** from descriptive to causal inference
- **Automatic significance testing** and confidence interval calculations
- **Multi-dimensional disparity analysis** with proper controls

### Sophisticated Agent Intelligence
- **Query decomposition** for complex multi-variable analysis
- **Statistical planning framework** optimized for police data
- **Ethical sensitivity protocols** for racial disparity research
- **Quality assurance standards** ensuring analytical rigor

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

## 🔒 Data Privacy & Ethics

### Important Considerations
- **Sensitive Data**: Contains information about police-civilian interactions
- **Privacy Protection**: No personally identifiable information
- **Analytical Purpose**: Designed for policy analysis and accountability
- **Statistical Objectivity**: AI agent maintains neutral, evidence-based approach

### Responsible Usage
- Use for policy research and accountability analysis
- Respect privacy of all individuals involved
- Acknowledge limitations in causal inference
- Consider broader context of police-community relations
- Apply appropriate statistical rigor to sensitive analyses

## 🛠️ Technical Requirements

### Snowflake Environment
- **Cortex Analyst**: Enabled in your account
- **Intelligence**: Agent creation capabilities
- **Warehouse**: Sufficient compute for complex analytical queries
- **Permissions**: Data loading and semantic model deployment

### Data Files Needed

#### 2023 Current Data (5 files)
- `EN_DATA_DICTIONARY_2023.csv`
- `Police Use of Force - Main Records 2023.csv`
- `Police Use of Force - Individual Records 2023.csv` 
- `Police Use of Force - Cycle Probe Records 2023.csv`
- `Police Use of Force - Weapons Records 2023.csv`

#### 2020-2022 Historical Data (2 files)
- `useofforce_agrregatesummarybyyear_2020-2022.csv`
- `useofforce_detaileddataset_2020-2022.csv`

#### Optional PDF Reports
- Technical reports, research studies, policy documents (for search service)

## 📖 Documentation

- **[Agent Instructions](agent_response_instructions.md)**: AI behavior guidelines
- **[Sample Queries](CORTEX_ANALYST_SAMPLE_QUERIES.md)**: 215 lines of comprehensive sample queries and use cases
- **[Planning Framework](documentation/agent_planning_instructions.txt)**: Statistical reasoning protocol
- **[Additional Prompts](documentation/agent_sample_prompts.md)**: 50+ comprehensive test questions
- **[Setup Guide](documentation/SETUP_GUIDE.md)**: Complete implementation walkthrough
- **[Table Definitions](snowflake_table_definitions.sql)**: Complete SQL schemas with search service
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
- Comparative analysis frameworks with other jurisdictions

## 🆕 Latest Features

### PDF Technical Report Search
- **Cortex Search Service**: AI-powered search through technical reports and policy documents
- **Document Categorization**: Automatic classification of reports (Policy, Research, Guidelines, etc.)
- **Integrated Analysis**: Combine structured data insights with document search results
- **Chunked Processing**: Documents split into searchable 2000-character chunks with overlap

### Historical Data Integration (2020-2022)
- **Trend Analysis**: Multi-year comparisons with 4 years of comprehensive data
- **Unified Semantic View**: Seamlessly query across 2020-2023 timeframe using UNION ALL
- **Comprehensive Coverage**: Both aggregate summaries and detailed incident records
- **Data Source Indicators**: Clear labeling of historical vs. current data in results

### Enhanced Data Handling
- **Flexible Data Types**: VARCHAR columns for mixed data (text/numeric) in historical tables
- **Error-Resistant Loading**: Comprehensive NULL handling for problematic CSV values
- **Data Quality Features**: Built-in data profiling and validation capabilities

## ⚠️ Disclaimers

- **Data Accuracy**: Analysis based on reported incidents only
- **Statistical Inference**: Correlation does not imply causation
- **Policy Neutrality**: Tool for analysis, not policy recommendation
- **Professional Use**: Intended for qualified researchers and analysts
- **Ongoing Validation**: Results should be validated with domain experts

## 📄 License

This project is intended for educational and research purposes related to police accountability and public policy analysis.

## 📞 Support

For technical implementation questions or statistical methodology assistance, refer to the comprehensive documentation provided in this repository.

---

**Built with Snowflake Cortex Analyst & Search • Enhanced with PDF Document Intelligence • 4 Years of Historical Data • Supporting Evidence-Based Police Accountability Research**