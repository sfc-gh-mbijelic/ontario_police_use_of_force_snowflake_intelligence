# Police Use of Force Data - Snowflake Cortex Analyst Setup Guide

## 📋 Overview
This package provides a complete solution for analyzing Ontario police use of force data (2023) using Snowflake Cortex Analyst and Intelligence. The semantic view integrates all five CSV files with rich business context from the data dictionary.

## 📁 Files Included

### 1. `snowflake_table_definitions.sql`
- **Complete table definitions** for all 5 CSV files
- **Comprehensive semantic view** (`POLICE_USE_OF_FORCE_SEMANTIC_VIEW`)
- **Detailed setup instructions** for Cortex Analyst
- **Usage notes** and best practices

### 2. `police_use_of_force_semantic_model.yaml`
- **Ready-to-use YAML configuration** for Cortex Analyst
- **75+ dimensions and measures** for comprehensive analysis
- **Business definitions and glossary** for better AI understanding
- **Synonyms and descriptions** to improve query understanding

### 3. Original CSV Files (5 files)
- `EN_DATA_DICTIONARY_2023.csv` - Metadata and variable definitions
- `Police Use of Force - Main Records 2023.csv` - Primary incident data
- `Police Use of Force - Individual Records 2023.csv` - Individual-level details
- `Police Use of Force - Cycle Probe Records 2023.csv` - CEW usage cycles
- `Police Use of Force - Weapons Records 2023.csv` - Weapon information

## 🚀 Quick Start Guide

### Step 1: Create Tables and Load Data
```sql
-- 1. Run the table creation scripts
USE DATABASE your_database;
USE SCHEMA your_schema;

-- Execute the CREATE TABLE statements from snowflake_table_definitions.sql

-- 2. Load your CSV data using COPY INTO commands
COPY INTO EN_DATA_DICTIONARY_2023
FROM @your_stage/EN_DATA_DICTIONARY_2023.csv
FILE_FORMAT = (TYPE = CSV HEADER = TRUE SKIP_BLANK_LINES = TRUE);

COPY INTO POLICE_USE_OF_FORCE_MAIN_RECORDS_2023
FROM @your_stage/Police_Use_of_Force_Main_Records_2023.csv
FILE_FORMAT = (TYPE = CSV HEADER = TRUE SKIP_BLANK_LINES = TRUE);

-- Repeat for other tables...
```

### Step 2: Create the Semantic View
```sql
-- Execute the semantic view creation from snowflake_table_definitions.sql
-- This creates POLICE_USE_OF_FORCE_SEMANTIC_VIEW
```

### Step 3: Set Up Cortex Analyst
1. **Upload semantic model**:
   - In Snowsight: AI & ML → Cortex Analyst → Create Semantic Model
   - Upload `police_use_of_force_semantic_model.yaml`
   - Update database/schema names in the YAML file

2. **Create analyst instance**:
   ```sql
   CREATE CORTEX ANALYST police_use_of_force_analyst
   SEMANTIC_MODEL = 'police_use_of_force_semantic_model'
   DESCRIPTION = 'AI analyst for Ontario police use of force data analysis';
   ```

### Step 4: Test Your Setup
Try these sample queries with your Cortex Analyst:

- *"What are the trends in use of force incidents by race and time period?"*
- *"How often is deescalation attempted before using force?"*
- *"Which demographics are most likely to experience serious force applications?"*
- *"What is the relationship between weapon presence and injury outcomes?"*

### Step 5: Integrate with Snowflake Intelligence
1. Navigate to AI & ML → Intelligence
2. Create or modify an existing agent
3. Add your Cortex Analyst as a tool
4. Configure permissions and test integration

## 🎯 Key Features

### Rich Semantic Model
- **Pre-calculated analytics** for immediate insights
- **Business-friendly names** for better AI understanding
- **Comprehensive measures** covering injuries, deescalation, force types
- **Temporal analysis** with time periods, hours, days of week

### Integrated Data Context
- **Data dictionary integration** provides AI with deep understanding
- **Calculated risk levels** based on weapon threat and resistance
- **Force escalation patterns** analyzing deescalation attempts
- **Demographic categorizations** for policy analysis

### Advanced Analytics Ready
- **75+ dimensions** for detailed breakdowns
- **25+ measures** including rates, averages, and counts
- **Synonyms and descriptions** for natural language queries
- **Business definitions** for accurate interpretation

## 📊 Sample Analysis Areas

### Demographics & Disparities
- Force usage patterns by race, age, and gender
- Injury rates across demographic groups
- Geographic distribution by police service

### Force Effectiveness & Safety
- Deescalation success rates
- Injury outcomes by force type
- CEW usage patterns and effectiveness
- Weapon presence impact on outcomes

### Policy & Training Insights
- Time-based patterns (shifts, days, seasons)
- Multi-officer vs single-officer incidents
- Force escalation vs deescalation patterns
- Risk factor correlation analysis

### Operational Analytics
- Police service comparisons
- Assignment type analysis (patrol, tactical, etc.)
- Location type impact on force usage
- Incident type categorization

## ⚠️ Important Considerations

### Data Privacy & Security
- Implement appropriate access controls
- Consider data masking for sensitive information
- Regular security audits for compliance
- Restrict access based on legitimate need

### Performance Optimization
- Monitor query performance and costs
- Consider materialized views for frequent queries
- Optimize warehouse sizing for your usage patterns
- Regular statistics updates for query optimization

### Ongoing Maintenance
- Update semantic model as data patterns change
- Refine dimensions and measures based on user feedback
- Monitor AI query accuracy and adjust descriptions
- Regular data quality checks and validation

## 🔧 Troubleshooting

### Common Issues
1. **YAML parsing errors**: Check indentation and syntax
2. **Data type mismatches**: Verify CSV data types match table definitions
3. **Missing relationships**: Ensure BATCH_FILE_NAME linking is correct
4. **Query performance**: Consider adding indexes on key fields

### Support Resources
- Snowflake Cortex Analyst documentation
- Snowflake Intelligence setup guides
- YAML syntax validation tools
- SQL performance optimization guides

## 📈 Next Steps

1. **Load and validate your data** using the provided table definitions
2. **Test the semantic view** with direct SQL queries
3. **Configure Cortex Analyst** using the YAML model
4. **Train users** on natural language query capabilities
5. **Monitor and optimize** based on usage patterns
6. **Expand the model** as new analysis needs emerge

This comprehensive setup provides a production-ready foundation for analyzing police use of force data with advanced AI capabilities through Snowflake's Cortex Analyst and Intelligence platforms.
