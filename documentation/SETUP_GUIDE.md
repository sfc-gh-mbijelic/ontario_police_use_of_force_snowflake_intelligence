# Police Use of Force Data - Snowflake Cortex Analyst Setup Guide

## 📋 Overview
This package provides a complete solution for analyzing Ontario police use of force data (2020-2023) using Snowflake Cortex Analyst, Search Services, and Intelligence. The solution integrates historical and current CSV data, PDF document search capabilities, and rich business context for comprehensive police accountability analysis.

## 📁 Files Included

### 1. `snowflake_table_definitions.sql`
- **Complete table definitions** for all 7 CSV files (5 current + 2 historical)
- **Comprehensive semantic view** (`UOF_SEMANTIC_VIEW`) with historical integration
- **PDF search service setup** (`UOF_TECHNICAL_REPORTS_SEARCH_SERVICE`)
- **Detailed setup instructions** for Cortex Analyst and Search Services
- **Usage notes** and best practices

### 2. `police_use_of_force_semantic_model.yaml`
- **Ready-to-use YAML configuration** for Cortex Analyst
- **75+ dimensions and measures** for comprehensive analysis
- **Business definitions and glossary** for better AI understanding
- **Synonyms and descriptions** to improve query understanding

### 3. CSV Data Files (7 files total)

#### 2023 Current Data (5 files)
- `EN_DATA_DICTIONARY_2023.csv` - Metadata and variable definitions
- `Police Use of Force - Main Records 2023.csv` - Primary incident data
- `Police Use of Force - Individual Records 2023.csv` - Individual-level details
- `Police Use of Force - Cycle Probe Records 2023.csv` - CEW usage cycles
- `Police Use of Force - Weapons Records 2023.csv` - Weapon information

#### 2020-2022 Historical Data (2 files)
- `useofforce_agrregatesummarybyyear_2020-2022.csv` - Multi-year trend summaries
- `useofforce_detaileddataset_2020-2022.csv` - Historical detailed incident records

### 4. PDF Technical Reports (Optional)
- Policy documents, research studies, training materials
- Automatically categorized and chunked for AI search
- Integrated with structured data analysis

## 🚀 Quick Start Guide

### Step 1: Create Tables and Load Data
```sql
-- 1. Run the table creation scripts
USE DATABASE your_database;
USE SCHEMA your_schema;

-- Execute ALL CREATE TABLE statements from snowflake_table_definitions.sql
-- This creates 7 tables total:
-- - 5 tables for 2023 data
-- - 2 tables for 2020-2022 historical data

-- 2. Load your 2023 CSV data
COPY INTO EN_DATA_DICTIONARY_2023
FROM @your_stage/EN_DATA_DICTIONARY_2023.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 SKIP_BLANK_LINES = TRUE);

COPY INTO UOF_MAIN_RECORDS_2023
FROM @your_stage/Police_Use_of_Force_Main_Records_2023.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 SKIP_BLANK_LINES = TRUE);

COPY INTO UOF_INDIVIDUAL_RECORDS_2023
FROM @your_stage/Police_Use_of_Force_Individual_Records_2023.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 SKIP_BLANK_LINES = TRUE);

COPY INTO UOF_CYCLE_PROBE_RECORDS_2023
FROM @your_stage/Police_Use_of_Force_Cycle_Probe_Records_2023.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 SKIP_BLANK_LINES = TRUE);

COPY INTO UOF_WEAPONS_RECORDS_2023
FROM @your_stage/Police_Use_of_Force_Weapons_Records_2023.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 SKIP_BLANK_LINES = TRUE);

-- 3. Load your 2020-2022 historical data
COPY INTO UOF_AGGREGATE_SUMMARY_2020_2022
FROM @your_stage/useofforce_agrregatesummarybyyear_2020-2022.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 NULL_IF = ('', 'NA', '#N/A') ON_ERROR = 'CONTINUE');

COPY INTO UOF_DETAILED_DATASET_2020_2022
FROM @your_stage/useofforce_detaileddataset_2020-2022.csv
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 NULL_IF = ('', 'NA', '1NA', '#N/A') ON_ERROR = 'CONTINUE');
```

### Step 2: Set Up PDF Search Service (Optional)
```sql
-- 1. Create the PDF processing tables and search service
-- Execute the PDF processing section from snowflake_table_definitions.sql

-- 2. Upload PDF files to the stage
PUT file://path/to/your/pdf/files/* @UOF_TECHNICAL_REPORTS_STAGE;

-- 3. Process and chunk the PDFs
INSERT INTO UOF_TECHNICAL_REPORTS_RAW
SELECT RELATIVE_PATH, 
       TO_VARCHAR(SNOWFLAKE.CORTEX.PARSE_DOCUMENT('@UOF_TECHNICAL_REPORTS_STAGE', RELATIVE_PATH, {'mode': 'LAYOUT'}):content)
FROM DIRECTORY('@UOF_TECHNICAL_REPORTS_STAGE');

-- 4. The search service will automatically index the chunked content
```

### Step 3: Create the Integrated Semantic View
```sql
-- Execute the semantic view creation from snowflake_table_definitions.sql
-- This creates UOF_SEMANTIC_VIEW with historical + current data integration
-- The view automatically combines 2020-2023 data using UNION ALL
```

### Step 4: Set Up Cortex Analyst
1. **Upload semantic model**:
   - In Snowsight: AI & ML → Cortex Analyst → Create Semantic Model
   - Upload `police_use_of_force_semantic_model.yaml`
   - Update database/schema names in the YAML file to match your environment

2. **Create analyst instance**:
   ```sql
   CREATE CORTEX ANALYST police_use_of_force_analyst
   SEMANTIC_MODEL = 'police_use_of_force_semantic_model'
   DESCRIPTION = 'AI analyst for Ontario police use of force data analysis (2020-2023)';
   ```

### Step 5: Test Your Setup
Try these sample queries with your Cortex Analyst:

#### Historical Trend Analysis
- *"Compare use of force trends between 2020 and 2023 by racial demographics"*
- *"How have injury rates changed from 2020 to 2023?"*
- *"What are the year-over-year trends in CEW usage?"*

#### Current Analysis (2023)
- *"How often is deescalation attempted before using force in 2023?"*
- *"Which demographics are most likely to experience serious force applications?"*
- *"What is the relationship between weapon presence and injury outcomes?"*

#### PDF Document Search (if configured)
- *"Search for policy documents about deescalation techniques"*
- *"Find research studies on racial disparities in police use of force"*

### Step 6: Integrate with Snowflake Intelligence
1. Navigate to AI & ML → Intelligence
2. Create or modify an existing agent
3. Add your Cortex Analyst as a tool
4. Configure the Search Service for document queries
5. Use the agent response instructions from `agent_response_instructions.md`
6. Configure permissions and test integration with both structured data and document search

## 🎯 Key Features

### Historical Data Integration (2020-2023)
- **4 years of comprehensive data** in unified semantic view
- **Trend analysis capabilities** across multiple years
- **Data source labeling** (Historical vs Current) for context
- **Seamless querying** across all timeframes using UNION ALL

### PDF Document Search Service
- **AI-powered search** through technical reports and policy documents
- **Automatic categorization** (Policy, Research, Guidelines, Training, etc.)
- **Chunked processing** with 2000-character chunks and 300-character overlap
- **Integrated analysis** combining structured data with document insights

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
- **Flexible data types** handling mixed text/numeric values in historical data

## 📊 Sample Analysis Areas

### Historical Trend Analysis (2020-2023)
- **Multi-year comparisons** of force usage patterns by demographics
- **Injury rate trends** over 4-year period
- **Policy impact assessment** before/after implementation
- **Seasonal and yearly variations** in incident patterns

### Demographics & Disparities
- Force usage patterns by race, age, and gender across all years
- Injury rates across demographic groups with historical context
- Geographic distribution by police service over time
- Intersectional analysis (race × age × force type) with trend data

### Force Effectiveness & Safety
- Deescalation success rates and trends
- Injury outcomes by force type with historical comparison
- CEW usage patterns and effectiveness over time
- Weapon presence impact on outcomes across years

### PDF Document Intelligence
- **Policy document search** for relevant guidelines and procedures
- **Research study integration** with statistical analysis
- **Training material correlation** with incident outcomes
- **Best practice identification** from academic and policy sources

### Policy & Training Insights
- Time-based patterns (shifts, days, seasons) with multi-year data
- Multi-officer vs single-officer incidents historical trends
- Force escalation vs deescalation patterns over time
- Risk factor correlation analysis with policy document support

### Operational Analytics
- Police service comparisons across 4 years
- Assignment type analysis (patrol, tactical, etc.) with trends
- Location type impact on force usage over time
- Incident type categorization with historical context

## ⚠️ Important Considerations

### Data Privacy & Security
- Implement appropriate access controls for sensitive police data
- Consider data masking for personally identifiable information
- Regular security audits for compliance with privacy regulations
- Restrict access based on legitimate need and role-based permissions
- **PDF documents** may contain sensitive information - review before uploading

### Performance Optimization
- Monitor query performance and costs across 4 years of data
- Consider materialized views for frequent historical trend queries
- Optimize warehouse sizing for large dataset analysis
- Regular statistics updates for query optimization
- **Search service queries** may require additional compute resources

### Historical Data Considerations
- **Data quality variations** between 2020-2022 and 2023 datasets
- **Schema differences** handled by VARCHAR data types in historical tables
- **Missing fields** in historical data default to 'Unknown' values
- **Null handling** for mixed data types (text/numeric) in historical files

### PDF Document Management
- **Document categorization** accuracy depends on file naming conventions
- **Chunking strategy** may need adjustment based on document types
- **Search performance** scales with document volume
- **Content quality** affects search relevance and AI understanding

### Ongoing Maintenance
- Update semantic model as data patterns change over time
- Refine dimensions and measures based on user feedback
- Monitor AI query accuracy across both structured and document data
- Regular data quality checks and validation for new data loads
- **Search service maintenance** including reindexing and optimization

## 🔧 Troubleshooting

### Common Issues

#### Data Loading Problems
1. **Historical data type errors**: Use VARCHAR columns for mixed data in UOF_DETAILED_DATASET_2020_2022
2. **NULL value handling**: Include comprehensive NULL_IF clauses for historical data
3. **CSV format inconsistencies**: Use SKIP_HEADER = 1 and ON_ERROR = 'CONTINUE'
4. **Mixed text/numeric values**: Historical data contains values like '1NA', 'Domestic Disturbance' in numeric fields

#### Semantic Model Issues
5. **YAML parsing errors**: Check indentation and syntax in semantic model
6. **Historical data integration**: Ensure UNION ALL works correctly in UOF_SEMANTIC_VIEW
7. **Missing relationships**: Verify BATCH_FILE_NAME linking across 2020-2023 data
8. **Query performance**: Consider adding indexes on key fields for large historical datasets

#### PDF Search Service Problems
9. **Document parsing failures**: Check PDF format compatibility with CORTEX.PARSE_DOCUMENT
10. **Search service creation errors**: Verify DIRECTORY = (ENABLE = TRUE) on stage
11. **Chunking issues**: Adjust chunk size and overlap parameters as needed
12. **Search relevance problems**: Review document categorization and content quality

#### Performance Issues
13. **Large query timeouts**: Historical data increases query complexity
14. **Search service latency**: PDF indexing may take time for large document sets
15. **Memory limitations**: Union of historical + current data requires sufficient compute

### Support Resources
- Snowflake Cortex Analyst documentation
- Snowflake Cortex Search Service guides
- Snowflake Intelligence setup guides
- YAML syntax validation tools
- SQL performance optimization guides
- PDF processing troubleshooting documentation

## 📈 Next Steps

1. **Load and validate your data** using the provided table definitions (both current and historical)
2. **Test the integrated semantic view** with direct SQL queries across 2020-2023 timeframe
3. **Configure PDF search service** if you have technical reports or policy documents
4. **Set up Cortex Analyst** using the YAML model with historical data support
5. **Train users** on natural language query capabilities for both structured and document data
6. **Implement historical trend analysis** workflows for policy impact assessment
7. **Monitor and optimize** performance for large dataset queries
8. **Expand the model** as new analysis needs emerge and additional years of data become available

## 🏆 Advanced Implementation Options

### Multi-Year Analysis Workflows
- Set up automated data refresh processes for annual data updates
- Create dashboard templates for year-over-year comparisons
- Implement policy change impact analysis frameworks

### Document Intelligence Integration
- Establish document upload and categorization workflows
- Create hybrid analysis combining statistical findings with policy research
- Implement automated document relevance scoring

### Production Deployment
- Configure role-based access controls for different user types
- Set up monitoring and alerting for data quality and system performance
- Implement audit logging for accountability research compliance

This comprehensive setup provides a production-ready foundation for analyzing police use of force data with advanced AI capabilities, historical context, and document intelligence through Snowflake's Cortex Analyst, Search Services, and Intelligence platforms.
