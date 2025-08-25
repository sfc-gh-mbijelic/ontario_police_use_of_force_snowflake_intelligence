-- Snowflake Table Definitions for Police Use of Force Dataset 2023
-- Generated based on CSV file analysis

-- =============================================================================
-- 1. EN_DATA_DICTIONARY_2023 Table
-- This table contains metadata about variables in the other tables
-- =============================================================================
CREATE OR REPLACE TABLE EN_DATA_DICTIONARY_2023 (
    FILE_NAME VARCHAR(100),
    VARIABLE_NAME VARCHAR(200),
    VARIABLE_LABEL VARCHAR(500),
    VARIABLE_DEFINITION TEXT,
    DATA_VALUES TEXT,
    REQUIREMENT_STATUS_IN_USE_OF_FORCE_REPORT VARCHAR(50),
    ADDITIONAL_NOTES TEXT,
    DATA_TYPE VARCHAR(50),
    DATA_FORMAT VARCHAR(100),
    MEASUREMENT_LEVEL VARCHAR(50),
    RECODED_VARIABLE_FLAG VARCHAR(10),
    RECODED_VARIABLE_NOTES TEXT
);

-- =============================================================================
-- 2. POLICE_USE_OF_FORCE_CYCLE_PROBE_RECORDS_2023 Table
-- This table contains conducted energy weapon cartridge probe cycle data
-- =============================================================================
CREATE OR REPLACE TABLE UOF_CYCLE_PROBE_RECORDS_2023 (
    _ID INTEGER,
    BATCH_FILE_NAME VARCHAR(50),
    INDIV_INDEX INTEGER,
    CONDUCTED_ENERGY_WEAPON_CARTRIDGE_PROBE_CARTRIDGE_PROBE_CYCLES_CYC VARCHAR(100)
);

-- =============================================================================
-- 3. POLICE_USE_OF_FORCE_INDIVIDUAL_RECORDS_2023 Table
-- This table contains detailed individual-level data for use of force incidents
-- =============================================================================
CREATE OR REPLACE TABLE UOF_INDIVIDUAL_RECORDS_2023 (
    _ID INTEGER,
    BATCH_FILE_NAME VARCHAR(50),
    INDIV_INDEX INTEGER,
    RACE VARCHAR(50),
    DIFFICULTY_PERCEIVING VARCHAR(10),
    AGE_CATEGORY VARCHAR(20),
    GENDER VARCHAR(20),
    DISTANCE_BETWEEN_OFFICER_AND_INDIV VARCHAR(100),
    
    -- Reason for Use of Force (Boolean flags - 1 or NULL)
    REASON_USE_OF_FORCE_EFFECT_ARREST INTEGER,
    REASON_USE_OF_FORCE_PREVENT_OFFENCE INTEGER,
    REASON_USE_OF_FORCE_PREVENT_ESCAPE INTEGER,
    REASON_USE_OF_FORCE_PROTECT_OTHER_OFFICERS INTEGER,
    REASON_USE_OF_FORCE_PROTECT_PUBLIC INTEGER,
    REASON_USE_OF_FORCE_PROTECT_SELF INTEGER,
    REASON_USE_OF_FORCE_PROTECT_INDIV INTEGER,
    REASON_USE_OF_FORCE_UNINTENTIONAL INTEGER,
    REASON_USE_OF_FORCE_OTHER INTEGER,
    
    -- Factors Influencing Response (Boolean flags)
    FACTORS_INFLUENCE_RESPONSE_NATURE_INCIDENT INTEGER,
    FACTORS_INFLUENCE_RESPONSE_PAST_HISTORY INTEGER,
    FACTORS_INFLUENCE_RESPONSE_PHYSICAL_SIZE_STRENGTH INTEGER,
    FACTORS_INFLUENCE_RESPONSE_OTHER_FACTORS INTEGER,
    
    -- Individual Actions (Boolean flags)
    INDIVIDUAL_ACTIONS_RESISTANT_PASSIVE INTEGER,
    INDIVIDUAL_ACTIONS_RESISTANT_ACTIVE INTEGER,
    INDIVIDUAL_ACTIONS_ASSAULTIVE INTEGER,
    INDIVIDUAL_ACTIONS_SERIOUS_BODILY_HARM_DEATH INTEGER,
    
    PERCEIVE_ACCESS_WEAPON VARCHAR(10),
    
    -- Officer Responses
    OFFICER_RESPONSES_DIRECTIONS_TO_COMPLY VARCHAR(10),
    OFFICER_RESPONSES_COMPLY VARCHAR(10),
    OFFICER_RESPONSES_ATTEMPT_DEESCALATION VARCHAR(10),
    
    -- Deescalation Techniques (Boolean flags)
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_COMMUNICATION INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_CONTAINMENT INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_COVER INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_DISTANCE INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_REPOSITIONING INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_TEAMWORK INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_TIME INTEGER,
    OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_OTHER INTEGER,
    
    OFFICER_RESPONSES_ASSIST_CTRL_BHVR VARCHAR(10),
    
    -- Officer Response Reasons (Boolean flags)
    OFFICER_RESPONSES_REASON_IMMINENT_THREAT INTEGER,
    OFFICER_RESPONSES_REASON_ACTION_REQUIRED_IMMEDIATELY INTEGER,
    OFFICER_RESPONSES_REASON_DEESCALATION_USED_OTHER_OFFICERS INTEGER,
    OFFICER_RESPONSES_REASON_OTHER INTEGER,
    
    -- Type of Force Used - Physical Control (Boolean flags)
    TYPE_FORCE_USED_PHYSICAL_CONTROL_CHECK INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_ESCORT_TECHNIQUES INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_GROUNDING INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_JOINT_LOCKS INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_PINNING INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_PRESSURE_POINTS INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_STRIKES INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_OTHER INTEGER,
    TYPE_FORCE_USED_PHYSICAL_CONTROL_ASSIST_CTRL_BHVR INTEGER,
    
    -- Type of Force Used - Intermediate Weapons (Boolean flags)
    TYPE_FORCE_USED_INTERM_WEAPON_CHECK INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_OC_CHECK INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_OC_ASSIST_CTRL_BHVR INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_BATON_CHECK INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_BATON_HARD INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_BATON_SOFT INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_BATON_ASSIST_CTRL_BHVR INTEGER,
    
    -- CEW (Conducted Energy Weapon) Related Fields
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_CHECK INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_ASSIST_CTRL_BHVR INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_CARTRIDGE_MALFUNCTION INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_DISCONNECT INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_INSUFFICIENT_PROBE_SPREAD INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_OPERATOR_ERROR INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_PROBE_MISS INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_WEAPON_MALFUNCTION INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_WHY_NOT_OTHER INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_DRAWN INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_POINTED INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_DISCHARGED INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_DEPLOYMENT_MODE_CARTRIDGE INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_DEPLOYMENT_MODE_DRIVE_PUSH_STUN INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_DEPLOYMENT_MODE_THREE_POINT_CONTACT INTEGER,
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_DRIVE_PUSH_STUN_CYCLES VARCHAR(50),
    TYPE_FORCE_USED_INTERM_WEAPON_CEW_THREE_POINT_CONTACT_CYCLES VARCHAR(50),
    
    -- Less Lethal Firearms (Boolean flags)
    TYPE_FORCE_USED_LL_FIREARM_CHECK INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_SHOTGUN_CHECK INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_SHOTGUN_POINTED INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_SHOTGUN_DISCHARGED INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_SHOTGUN_ASSIST_CTRL_BHVR INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_EXT_RANGE_IMPACT_WEAPON_CHECK INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_EXT_RANGE_IMPACT_WEAPON_POINTED INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_EXT_RANGE_IMPACT_WEAPON_DISCHARGED INTEGER,
    TYPE_FORCE_USED_LL_FIREARM_EXT_RANGE_IMPACT_WEAPON_ASSIST_CTRL_BHVR INTEGER,
    
    -- Other Force Types
    TYPE_FORCE_USED_OTHER_CHECK INTEGER,
    TYPE_FORCE_USED_OTHER_ASSIST_CTRL_BHVR INTEGER,
    
    -- Firearms (Boolean flags)
    TYPE_FORCE_USED_FIREARM_CHECK INTEGER,
    TYPE_FORCE_USED_FIREARM_HANDGUN_CHECK INTEGER,
    TYPE_FORCE_USED_FIREARM_HANDGUN_DRAWN INTEGER,
    TYPE_FORCE_USED_FIREARM_HANDGUN_POINTED INTEGER,
    TYPE_FORCE_USED_FIREARM_HANDGUN_DISCHARGED INTEGER,
    TYPE_FORCE_USED_FIREARM_HANDGUN_ASSIST_CTRL_BHVR INTEGER,
    TYPE_FORCE_USED_FIREARM_RIFLE_CHECK INTEGER,
    TYPE_FORCE_USED_FIREARM_RIFLE_POINTED INTEGER,
    TYPE_FORCE_USED_FIREARM_RIFLE_DISCHARGED INTEGER,
    TYPE_FORCE_USED_FIREARM_RIFLE_ASSIST_CTRL_BHVR INTEGER,
    TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_CHECK INTEGER,
    TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_POINTED INTEGER,
    TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_DISCHARGED INTEGER,
    TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_ASSIST_CONTROLLING_BEHAVIOUR INTEGER,
    TYPE_FORCE_USED_FIREARM_ISSUE_POLICE_CHALLENGE INTEGER,
    TYPE_FORCE_USED_FIREARM_COMPLY INTEGER,
    TYPE_FORCE_USED_FIREARM_NO_CHALLENGE_WHY_NOT_NOT_VIABLE INTEGER,
    TYPE_FORCE_USED_FIREARM_NO_CHALLENGE_WHY_NOT_ISSUED_BY_ANOTHER_OFFICER INTEGER,
    TYPE_FORCE_USED_FIREARM_NO_CHALLENGE_WHY_NOT_OTHER INTEGER,
    
    -- Individual Injuries
    INDIV_INJURIES_PHYSICAL_INJURIES VARCHAR(10),
    INDIVIDUAL_INJURIES_TREATMENT_NO INTEGER,
    INDIVIDUAL_INJURIES_TREATMENT_FIRST_AID INTEGER,
    INDIVIDUAL_INJURIES_TREATMENT_MEDICAL_PERSONNEL_SCENE INTEGER,
    INDIVIDUAL_INJURIES_TREATMENT_ADMISSION_MEDICAL_FACILITY INTEGER,
    INDIVIDUAL_INJURIES_TREATMENT_MEDICAL_FACILITY INTEGER,
    INDIVIDUAL_INJURIES_TREATMENT_UNKNOWN INTEGER,
    INDIVIDUAL_INJURIES_TREATMENT_OTHER INTEGER
);

-- =============================================================================
-- 4. POLICE_USE_OF_FORCE_MAIN_RECORDS_2023 Table
-- This table contains the main incident records
-- =============================================================================
CREATE OR REPLACE TABLE UOF_MAIN_RECORDS_2023 (
    _ID INTEGER,
    BATCH_FILE_NAME VARCHAR(50),
    POLICE_SERVICE_TYPE VARCHAR(50),
    POLICE_SERVICE VARCHAR(100),
    OPP_POLICE_SERVICE VARCHAR(100),
    INCIDENT_NUMBER VARCHAR(50),
    DATE DATE,
    APPROXIMATE_TIME_FORCE_APPLIED TIME,
    
    -- Location Types (Boolean flags)
    LOCATION_TYPE_RESIDENTIAL_BUILDING INTEGER,
    LOCATION_TYPE_NON_RESIDENTIAL_BUILDING INTEGER,
    LOCATION_TYPE_MOTOR_VEHICLE INTEGER,
    LOCATION_TYPE_OPEN_SPACE INTEGER,
    LOCATION_TYPE_PUBLIC_TRANSPORTATION INTEGER,
    
    REPORT_TYPE VARCHAR(50),
    TYPE_TEAM VARCHAR(50),
    NUMBER_TEAM INTEGER,
    ATTIRE VARCHAR(50),
    ASSIGNMENT_TYPE VARCHAR(200),
    INCIDENT_TYPE VARCHAR(200),
    
    -- Humane Destruction of Animal fields
    HUMANE_DESTRUCTION_ANIMAL_DISTANCE VARCHAR(100),
    HUMANE_DESTRUCTION_ANIMAL_HANDGUN INTEGER,
    HUMANE_DESTRUCTION_ANIMAL_RIFLE INTEGER,
    HUMANE_DESTRUCTION_ANIMAL_SHOTGUN INTEGER,
    HUMANE_DESTRUCTION_ANIMAL_NUMBER_ROUNDS_DISCHARGED INTEGER,
    
    INTERACTION_TYPE VARCHAR(100),
    NUMBER_INDIVIDUALS INTEGER,
    NUMBER_OTHER_OFFICERS INTEGER,
    
    -- Officer Involved Injuries
    OFFICER_INVOLVED_INJURIES_PHYSICAL_INJURIES VARCHAR(10),
    OFFICER_INVOLVED_INJURIES_TREATMENT_NO INTEGER,
    OFFICER_INVOLVED_INJURIES_TREATMENT_FIRST_AID INTEGER,
    OFFICER_INVOLVED_INJURIES_TREATMENT_MEDICAL_PERSONNEL_SCENE INTEGER,
    OFFICER_INVOLVED_INJURIES_TREATMENT_ADMISSION_MEDICAL_FACILITY INTEGER,
    OFFICER_INVOLVED_INJURIES_TREATMENT_MEDICAL_FACILITY INTEGER,
    OFFICER_INVOLVED_INJURIES_TREATMENT_UNKNOWN INTEGER,
    OFFICER_INVOLVED_INJURIES_TREATMENT_OTHER INTEGER,
    
    -- No Interact Individual fields (Boolean flags)
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_EFFECT_ARREST INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_PREVENT_OFFENCE INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_PREVENT_ESCAPE INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_PROTECT_OTHER_OFFICERS INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_PROTECT_PUBLIC INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_PROTECT_SELF INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_PROTECT_INDIV INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_UNINTENTIONAL INTEGER,
    NO_INTERACT_INDIV_REASON_USE_OF_FORCE_OTHER INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_CEW_CHECK INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_CEW_DISCHARGED INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_HANDGUN_CHECK INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_HANDGUN_DRAWN INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_HANDGUN_DISCHARGED INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_RIFLE_CHECK INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_RIFLE_DISCHARGED INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_CHECK INTEGER,
    NO_INTERACT_INDIV_TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_DISCHARGED INTEGER,
    
    -- No Individual Animal Only fields (Boolean flags)
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_EFFECT_ARREST INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_PREVENT_OFFENCE INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_PREVENT_ESCAPE INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_PROTECT_OTHER_OFFICERS INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_PROTECT_PUBLIC INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_PROTECT_SELF INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_PROTECT_INDIV INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_UNINTENTIONAL INTEGER,
    NO_INDIV_ANIMAL_ONLY_REASON_USE_OF_FORCE_OTHER INTEGER,
    NO_INDIV_ANIMAL_ONLY_TYPE_FORCE_USED_CEW INTEGER,
    NO_INDIV_ANIMAL_ONLY_TYPE_FORCE_USED_FIREARM INTEGER,
    
    INCLUSION_SOLGEN_ARA_ANALYSIS VARCHAR(10)
);

-- =============================================================================
-- 5. POLICE_USE_OF_FORCE_WEAPONS_RECORDS_2023 Table
-- This table contains weapon information linked to individuals in incidents
-- =============================================================================
CREATE OR REPLACE TABLE UOF_WEAPONS_RECORDS_2023 (
    BATCH_FILE_NAME VARCHAR(50),
    INDIV_INDEX INTEGER,
    WEAPON VARCHAR(100),
    LOCATION VARCHAR(200)
);

-- =============================================================================
-- 6. SEMANTIC VIEW FOR SNOWFLAKE CORTEX ANALYST
-- This comprehensive view integrates all police use of force data with 
-- data dictionary context for enhanced AI analysis
-- =============================================================================

CREATE OR REPLACE VIEW UOF_SEMANTIC_VIEW AS
WITH 
-- Data Dictionary Context as Common Table Expression
data_dict AS (
    SELECT 
        VARIABLE_NAME,
        VARIABLE_LABEL,
        VARIABLE_DEFINITION,
        DATA_VALUES,
        ADDITIONAL_NOTES
    FROM ON_POLICE_USE_OF_FORCE.DATA_DICTIONARY.EN_DATA_DICTIONARY_2023
    WHERE FILE_NAME LIKE '%UoF%'
),

-- Main incidents with enriched context
main_incidents AS (
    SELECT 
        m.*,
        -- Add semantic labels for key fields
        CASE 
            WHEN m.POLICE_SERVICE_TYPE = 'Municipal Police' THEN 'Local Municipal Police Service'
            WHEN m.POLICE_SERVICE_TYPE = 'Ontario Provincial Police' THEN 'Provincial Police Service'
            ELSE m.POLICE_SERVICE_TYPE 
        END AS police_service_type_description,
        
        CASE 
            WHEN m.LOCATION_TYPE_RESIDENTIAL_BUILDING = 1 THEN 'Residential Building'
            WHEN m.LOCATION_TYPE_NON_RESIDENTIAL_BUILDING = 1 THEN 'Non-Residential Building'
            WHEN m.LOCATION_TYPE_MOTOR_VEHICLE = 1 THEN 'Motor Vehicle'
            WHEN m.LOCATION_TYPE_OPEN_SPACE = 1 THEN 'Open Space'
            WHEN m.LOCATION_TYPE_PUBLIC_TRANSPORTATION = 1 THEN 'Public Transportation'
            ELSE 'Unknown Location'
        END AS primary_location_type,
        
        -- Time-based analytics
        EXTRACT(YEAR FROM m.DATE) AS incident_year,
        EXTRACT(MONTH FROM m.DATE) AS incident_month,
        DAYOFWEEK(m.DATE) AS incident_day_of_week,
        EXTRACT(HOUR FROM m.APPROXIMATE_TIME_FORCE_APPLIED) AS incident_hour,
        
        -- Categorize time periods
        CASE 
            WHEN EXTRACT(HOUR FROM m.APPROXIMATE_TIME_FORCE_APPLIED) BETWEEN 6 AND 11 THEN 'Morning (6AM-12PM)'
            WHEN EXTRACT(HOUR FROM m.APPROXIMATE_TIME_FORCE_APPLIED) BETWEEN 12 AND 17 THEN 'Afternoon (12PM-6PM)'
            WHEN EXTRACT(HOUR FROM m.APPROXIMATE_TIME_FORCE_APPLIED) BETWEEN 18 AND 23 THEN 'Evening (6PM-12AM)'
            ELSE 'Night (12AM-6AM)'
        END AS time_period,
        
        -- Officer injury summary
        CASE 
            WHEN m.OFFICER_INVOLVED_INJURIES_PHYSICAL_INJURIES = 'Yes' THEN 'Officer Injured'
            ELSE 'No Officer Injury'
        END AS officer_injury_status
        
    FROM UOF_MAIN_RECORDS_2023 m
),

-- Individual records with demographic and force analysis
individual_analysis AS (
    SELECT 
        i.*,
        -- Demographic categorization
        CASE 
            WHEN i.RACE IN ('White') THEN 'White'
            WHEN i.RACE IN ('Black') THEN 'Black'
            WHEN i.RACE IN ('Indigenous') THEN 'Indigenous'
            WHEN i.RACE IN ('South Asian', 'East Asian', 'Southeast Asian', 'West Asian') THEN 'Asian'
            WHEN i.RACE IN ('Latino', 'Hispanic') THEN 'Latino/Hispanic'
            WHEN i.RACE IN ('Middle Eastern') THEN 'Middle Eastern'
            ELSE 'Other/Unknown'
        END AS race_category,
        
        -- Age group categorization
        CASE 
            WHEN i.AGE_CATEGORY = '17 and younger' THEN 'Youth (≤17)'
            WHEN i.AGE_CATEGORY IN ('18 - 24', '25 - 34') THEN 'Young Adult (18-34)'
            WHEN i.AGE_CATEGORY IN ('35 - 44', '45 - 54') THEN 'Middle Age (35-54)'
            WHEN i.AGE_CATEGORY IN ('55 - 64', '65 and older') THEN 'Older Adult (55+)'
            ELSE 'Unknown Age'
        END AS age_group,
        
        -- Force escalation analysis
        (COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_CHECK, 0) +
         COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_ESCORT_TECHNIQUES, 0) +
         COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_GROUNDING, 0) +
         COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_JOINT_LOCKS, 0) +
         COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_PINNING, 0) +
         COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_PRESSURE_POINTS, 0) +
         COALESCE(i.TYPE_FORCE_USED_PHYSICAL_CONTROL_STRIKES, 0)) AS physical_control_techniques_used,
        
        (COALESCE(i.TYPE_FORCE_USED_INTERM_WEAPON_CEW_CHECK, 0) +
         COALESCE(i.TYPE_FORCE_USED_INTERM_WEAPON_OC_CHECK, 0) +
         COALESCE(i.TYPE_FORCE_USED_INTERM_WEAPON_BATON_CHECK, 0)) AS intermediate_weapons_used,
        
        (COALESCE(i.TYPE_FORCE_USED_FIREARM_HANDGUN_CHECK, 0) +
         COALESCE(i.TYPE_FORCE_USED_FIREARM_RIFLE_CHECK, 0) +
         COALESCE(i.TYPE_FORCE_USED_FIREARM_SHOTGUN_LETHAL_CHECK, 0)) AS lethal_weapons_used,
        
        -- Deescalation attempt tracking
        (COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_COMMUNICATION, 0) +
         COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_CONTAINMENT, 0) +
         COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_COVER, 0) +
         COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_DISTANCE, 0) +
         COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_REPOSITIONING, 0) +
         COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_TEAMWORK, 0) +
         COALESCE(i.OFFICER_RESPONSES_DEESCALATION_TECHNIQUES_TIME, 0)) AS deescalation_techniques_count,
        
        -- Individual resistance level
        CASE 
            WHEN i.INDIVIDUAL_ACTIONS_SERIOUS_BODILY_HARM_DEATH = 1 THEN 'Level 4: Serious Bodily Harm/Death Risk'
            WHEN i.INDIVIDUAL_ACTIONS_ASSAULTIVE = 1 THEN 'Level 3: Assaultive Behavior'
            WHEN i.INDIVIDUAL_ACTIONS_RESISTANT_ACTIVE = 1 THEN 'Level 2: Active Resistance'
            WHEN i.INDIVIDUAL_ACTIONS_RESISTANT_PASSIVE = 1 THEN 'Level 1: Passive Resistance'
            ELSE 'Level 0: Compliant/No Resistance'
        END AS resistance_level,
        
        -- Injury outcome
        CASE 
            WHEN i.INDIV_INJURIES_PHYSICAL_INJURIES = 'Yes' THEN 'Individual Injured'
            ELSE 'No Individual Injury'
        END AS individual_injury_status,
        
        -- Medical treatment required
        CASE 
            WHEN i.INDIVIDUAL_INJURIES_TREATMENT_ADMISSION_MEDICAL_FACILITY = 1 THEN 'Hospital Admission Required'
            WHEN i.INDIVIDUAL_INJURIES_TREATMENT_MEDICAL_PERSONNEL_SCENE = 1 THEN 'Medical Personnel at Scene'
            WHEN i.INDIVIDUAL_INJURIES_TREATMENT_FIRST_AID = 1 THEN 'First Aid Only'
            WHEN i.INDIVIDUAL_INJURIES_TREATMENT_NO = 1 THEN 'No Treatment Required'
            ELSE 'Unknown Treatment'
        END AS medical_treatment_level
        
    FROM UOF_INDIVIDUAL_RECORDS_2023 i
),

-- Weapons analysis
weapons_summary AS (
    SELECT 
        w.BATCH_FILE_NAME,
        w.INDIV_INDEX,
        LISTAGG(w.WEAPON, ', ') WITHIN GROUP (ORDER BY w.WEAPON) AS weapons_involved,
        COUNT(*) AS weapon_count,
        
        -- Weapon categorization
        CASE 
            WHEN LISTAGG(w.WEAPON, ', ') LIKE '%Handgun%' OR LISTAGG(w.WEAPON, ', ') LIKE '%Long Gun%' THEN 'Firearm Present'
            WHEN LISTAGG(w.WEAPON, ', ') LIKE '%Knife%' OR LISTAGG(w.WEAPON, ', ') LIKE '%Edged%' THEN 'Edged Weapon Present'
            WHEN LISTAGG(w.WEAPON, ', ') LIKE '%Unknown%' THEN 'Unknown Weapon Type'
            ELSE 'Other Weapon Type'
        END AS weapon_category,
        
        -- Weapon accessibility
        CASE 
            WHEN LISTAGG(w.LOCATION, ', ') LIKE '%In Hand%' THEN 'Immediate Threat - Weapon in Hand'
            WHEN LISTAGG(w.LOCATION, ', ') LIKE '%On Person%' THEN 'High Threat - Weapon on Person'
            WHEN LISTAGG(w.LOCATION, ', ') LIKE '%Accessible%' THEN 'Moderate Threat - Weapon Accessible'
            ELSE 'Unknown Threat Level'
        END AS weapon_threat_level
        
    FROM UOF_WEAPONS_RECORDS_2023 w
    GROUP BY w.BATCH_FILE_NAME, w.INDIV_INDEX
),

-- CEW cycle analysis
cew_analysis AS (
    SELECT 
        c.BATCH_FILE_NAME,
        c.INDIV_INDEX,
        COUNT(*) AS cew_cycles_count,
        
        CASE 
            WHEN COUNT(*) = 1 AND MAX(c.CONDUCTED_ENERGY_WEAPON_CARTRIDGE_PROBE_CARTRIDGE_PROBE_CYCLES_CYC) LIKE '%Single Cycle%' 
                THEN 'Single Standard Cycle'
            WHEN COUNT(*) = 1 AND MAX(c.CONDUCTED_ENERGY_WEAPON_CARTRIDGE_PROBE_CARTRIDGE_PROBE_CYCLES_CYC) LIKE '%Extended%' 
                THEN 'Single Extended Cycle'
            WHEN COUNT(*) > 1 OR MAX(c.CONDUCTED_ENERGY_WEAPON_CARTRIDGE_PROBE_CARTRIDGE_PROBE_CYCLES_CYC) LIKE '%Multiple%'
                THEN 'Multiple Cycles'
            ELSE 'Unknown CEW Usage'
        END AS cew_usage_pattern
        
    FROM UOF_CYCLE_PROBE_RECORDS_2023 c
    GROUP BY c.BATCH_FILE_NAME, c.INDIV_INDEX
)

-- Main semantic view query
SELECT 
    -- Unique Identifiers
    m.BATCH_FILE_NAME AS incident_id,
    m._ID AS main_record_id,
    i._ID AS individual_record_id,
    i.INDIV_INDEX AS individual_index,
    
    -- Incident Context
    m.POLICE_SERVICE,
    m.police_service_type_description,
    m.INCIDENT_NUMBER,
    m.DATE AS incident_date,
    m.APPROXIMATE_TIME_FORCE_APPLIED AS force_time,
    m.incident_year,
    m.incident_month,
    m.incident_day_of_week,
    m.incident_hour,
    m.time_period,
    m.primary_location_type,
    m.INCIDENT_TYPE,
    m.ASSIGNMENT_TYPE,
    m.INTERACTION_TYPE,
    
    -- Team and Officer Information
    m.REPORT_TYPE,
    m.TYPE_TEAM,
    m.NUMBER_TEAM,
    m.ATTIRE,
    m.NUMBER_INDIVIDUALS,
    m.NUMBER_OTHER_OFFICERS,
    
    -- Individual Demographics
    i.race_category,
    i.RACE AS specific_race,
    i.age_group,
    i.AGE_CATEGORY AS specific_age_category,
    i.GENDER,
    i.DIFFICULTY_PERCEIVING,
    i.DISTANCE_BETWEEN_OFFICER_AND_INDIV,
    
    -- Resistance and Threat Assessment
    i.resistance_level,
    i.PERCEIVE_ACCESS_WEAPON,
    w.weapons_involved,
    w.weapon_count,
    w.weapon_category,
    w.weapon_threat_level,
    
    -- Force Application Analysis
    i.physical_control_techniques_used,
    i.intermediate_weapons_used,
    i.lethal_weapons_used,
    
    -- Specific Force Types (Booleans converted to descriptive text)
    CASE WHEN i.TYPE_FORCE_USED_PHYSICAL_CONTROL_CHECK = 1 THEN 'Physical Control Used' END AS physical_control_used,
    CASE WHEN i.TYPE_FORCE_USED_INTERM_WEAPON_CEW_CHECK = 1 THEN 'CEW Used' END AS cew_used,
    CASE WHEN i.TYPE_FORCE_USED_INTERM_WEAPON_OC_CHECK = 1 THEN 'OC Spray Used' END AS oc_spray_used,
    CASE WHEN i.TYPE_FORCE_USED_INTERM_WEAPON_BATON_CHECK = 1 THEN 'Baton Used' END AS baton_used,
    CASE WHEN i.TYPE_FORCE_USED_FIREARM_CHECK = 1 THEN 'Firearm Used' END AS firearm_used,
    
    -- CEW Specific Analysis
    c.cew_cycles_count,
    c.cew_usage_pattern,
    CASE WHEN i.TYPE_FORCE_USED_INTERM_WEAPON_CEW_DRAWN = 1 THEN 'CEW Drawn' END AS cew_drawn,
    CASE WHEN i.TYPE_FORCE_USED_INTERM_WEAPON_CEW_POINTED = 1 THEN 'CEW Pointed' END AS cew_pointed,
    CASE WHEN i.TYPE_FORCE_USED_INTERM_WEAPON_CEW_DISCHARGED = 1 THEN 'CEW Discharged' END AS cew_discharged,
    
    -- Deescalation Analysis
    i.deescalation_techniques_count,
    CASE WHEN i.OFFICER_RESPONSES_ATTEMPT_DEESCALATION = 'Yes' THEN 'Deescalation Attempted' 
         WHEN i.OFFICER_RESPONSES_ATTEMPT_DEESCALATION = 'No' THEN 'No Deescalation Attempted'
         END AS deescalation_attempted,
    CASE WHEN i.OFFICER_RESPONSES_DIRECTIONS_TO_COMPLY = 'Yes' THEN 'Directions Given' END AS directions_given,
    
    -- Reasons for Force
    CASE WHEN i.REASON_USE_OF_FORCE_EFFECT_ARREST = 1 THEN 'Effect Arrest' END AS reason_arrest,
    CASE WHEN i.REASON_USE_OF_FORCE_PREVENT_OFFENCE = 1 THEN 'Prevent Offence' END AS reason_prevent_offence,
    CASE WHEN i.REASON_USE_OF_FORCE_PREVENT_ESCAPE = 1 THEN 'Prevent Escape' END AS reason_prevent_escape,
    CASE WHEN i.REASON_USE_OF_FORCE_PROTECT_SELF = 1 THEN 'Protect Self' END AS reason_protect_self,
    CASE WHEN i.REASON_USE_OF_FORCE_PROTECT_PUBLIC = 1 THEN 'Protect Public' END AS reason_protect_public,
    CASE WHEN i.REASON_USE_OF_FORCE_PROTECT_OTHER_OFFICERS = 1 THEN 'Protect Other Officers' END AS reason_protect_officers,
    
    -- Injury Outcomes
    m.officer_injury_status,
    i.individual_injury_status,
    i.medical_treatment_level,
    
    -- Analysis Flags
    m.INCLUSION_SOLGEN_ARA_ANALYSIS AS included_in_analysis,
    
    -- Calculated Risk Factors
    CASE 
        WHEN w.weapon_threat_level LIKE '%Immediate%' AND i.resistance_level LIKE '%Level 4%' THEN 'Extreme Risk'
        WHEN w.weapon_threat_level LIKE '%High%' OR i.resistance_level LIKE '%Level 3%' THEN 'High Risk'
        WHEN w.weapon_threat_level LIKE '%Moderate%' OR i.resistance_level LIKE '%Level 2%' THEN 'Moderate Risk'
        ELSE 'Lower Risk'
    END AS calculated_risk_level,
    
    -- Force Appropriateness Indicators
    CASE 
        WHEN i.deescalation_techniques_count > 0 AND i.resistance_level NOT LIKE '%Level 0%' THEN 'Deescalation Attempted Before Force'
        WHEN i.deescalation_techniques_count = 0 AND i.resistance_level LIKE '%Level 1%' THEN 'Limited Deescalation with Low Resistance'
        WHEN i.deescalation_techniques_count = 0 AND i.resistance_level LIKE '%Level 4%' THEN 'No Deescalation with High Threat'
        ELSE 'Other Scenario'
    END AS force_escalation_pattern

FROM main_incidents m
INNER JOIN individual_analysis i ON m.BATCH_FILE_NAME = i.BATCH_FILE_NAME
LEFT JOIN weapons_summary w ON i.BATCH_FILE_NAME = w.BATCH_FILE_NAME AND i.INDIV_INDEX = w.INDIV_INDEX
LEFT JOIN cew_analysis c ON i.BATCH_FILE_NAME = c.BATCH_FILE_NAME AND i.INDIV_INDEX = c.INDIV_INDEX;

-- =============================================================================
-- SNOWFLAKE CORTEX ANALYST SETUP INSTRUCTIONS
-- =============================================================================

/*
CORTEX ANALYST SETUP GUIDE:

1. PREPARE YOUR SEMANTIC MODEL:
   
   -- Create the semantic model definition in YAML format
   -- Save this as 'police_use_of_force_semantic_model.yaml'
   
   tables:
     - name: POLICE_USE_OF_FORCE_SEMANTIC_VIEW
       description: "Comprehensive view of police use of force incidents in Ontario, Canada for 2023. Includes incident details, demographics, force types, weapons involved, and outcomes."
       
       base_table: 
         database: YOUR_DATABASE
         schema: YOUR_SCHEMA  
         table: POLICE_USE_OF_FORCE_SEMANTIC_VIEW
         
       dimensions:
         - name: incident_id
           description: "Unique identifier for each use of force incident"
           expr: incident_id
           data_type: string
           unique: true
           
         - name: police_service
           description: "Name of the police service where the incident occurred"
           expr: police_service
           data_type: string
           
         - name: incident_date
           description: "Date when the use of force incident occurred"
           expr: incident_date
           data_type: date
           
         - name: time_period
           description: "Time period of day when incident occurred (Morning, Afternoon, Evening, Night)"
           expr: time_period
           data_type: string
           
         - name: primary_location_type
           description: "Primary location where the incident took place"
           expr: primary_location_type
           data_type: string
           
         - name: race_category
           description: "Racial/ethnic category of the individual involved"
           expr: race_category
           data_type: string
           
         - name: age_group
           description: "Age group of the individual involved"
           expr: age_group
           data_type: string
           
         - name: gender
           description: "Gender of the individual involved"
           expr: gender
           data_type: string
           
         - name: resistance_level
           description: "Level of resistance shown by the individual (Level 0-4)"
           expr: resistance_level
           data_type: string
           
         - name: weapon_category
           description: "Category of weapon involved in the incident"
           expr: weapon_category
           data_type: string
           
         - name: weapon_threat_level
           description: "Threat level posed by weapons (Immediate, High, Moderate, Unknown)"
           expr: weapon_threat_level
           data_type: string
           
         - name: calculated_risk_level
           description: "Calculated overall risk level of the incident"
           expr: calculated_risk_level
           data_type: string
           
         - name: force_escalation_pattern
           description: "Pattern of force escalation and deescalation attempts"
           expr: force_escalation_pattern
           data_type: string
           
       measures:
         - name: total_incidents
           description: "Total number of use of force incidents"
           expr: COUNT(*)
           data_type: number
           
         - name: incidents_with_injuries
           description: "Number of incidents resulting in individual injuries"
           expr: COUNT(CASE WHEN individual_injury_status = 'Individual Injured' THEN 1 END)
           data_type: number
           
         - name: incidents_with_officer_injuries
           description: "Number of incidents resulting in officer injuries"
           expr: COUNT(CASE WHEN officer_injury_status = 'Officer Injured' THEN 1 END)
           data_type: number
           
         - name: deescalation_rate
           description: "Percentage of incidents where deescalation was attempted"
           expr: (COUNT(CASE WHEN deescalation_attempted = 'Deescalation Attempted' THEN 1 END) * 100.0) / COUNT(*)
           data_type: number
           
         - name: cew_usage_incidents
           description: "Number of incidents involving Conducted Energy Weapon usage"
           expr: COUNT(CASE WHEN cew_used = 'CEW Used' THEN 1 END)
           data_type: number
           
         - name: firearm_usage_incidents
           description: "Number of incidents involving firearm usage"
           expr: COUNT(CASE WHEN firearm_used = 'Firearm Used' THEN 1 END)
           data_type: number
           
         - name: avg_deescalation_techniques
           description: "Average number of deescalation techniques used per incident"
           expr: AVG(deescalation_techniques_count)
           data_type: number

2. UPLOAD SEMANTIC MODEL TO SNOWFLAKE:
   
   -- In Snowsight, navigate to AI & ML > Cortex Analyst
   -- Click "Create Semantic Model"
   -- Upload your YAML file or paste the content
   -- Test the model with sample queries

3. CREATE CORTEX ANALYST INSTANCE:

   -- SQL command to create the analyst
   CREATE CORTEX ANALYST police_use_of_force_analyst
   SEMANTIC_MODEL = 'police_use_of_force_semantic_model'
   DESCRIPTION = 'AI analyst for Ontario police use of force data analysis and insights';

4. SAMPLE QUERIES FOR TESTING:

   -- Test queries you can ask the Cortex Analyst:
   
   "What are the trends in use of force incidents by race and time period?"
   
   "How often is deescalation attempted before using force, and does it vary by police service?"
   
   "What is the relationship between weapon presence and injury outcomes?"
   
   "Which demographics are most likely to experience serious force applications?"
   
   "Compare injury rates between different types of force used"
   
   "What are the peak hours and days for use of force incidents?"
   
   "How does the use of CEWs correlate with individual resistance levels?"
   
   "Which police services have the highest rates of force-related injuries?"

5. INTEGRATE WITH SNOWFLAKE INTELLIGENCE:
   
   -- Once your Cortex Analyst is working, integrate with Intelligence:
   -- Navigate to AI & ML > Intelligence
   -- Create or modify an existing agent
   -- Add your Cortex Analyst as a tool
   -- Configure permissions and access controls
   -- Test the integration with natural language queries

6. MONITORING AND OPTIMIZATION:
   
   -- Monitor query performance and accuracy
   -- Refine semantic model based on user feedback
   -- Add new dimensions/measures as needed
   -- Update descriptions for better AI understanding
   -- Review and update synonyms for business terms

IMPORTANT NOTES:
- Ensure your warehouse has sufficient compute resources for complex analytics
- Test thoroughly before deploying to production
- Consider data privacy and access controls for sensitive police data
- Regular updates to the semantic model may be needed as data patterns change
- The EN_DATA_DICTIONARY_2023 table provides valuable context that should be referenced in descriptions
*/

-- =============================================================================
-- Comments and Usage Notes
-- =============================================================================

/*
USAGE NOTES:

1. Primary Keys:
   - EN_DATA_DICTIONARY_2023: No natural primary key (metadata table)
   - CYCLE_PROBE_RECORDS: (_ID) or (BATCH_FILE_NAME, INDIV_INDEX)
   - INDIVIDUAL_RECORDS: (_ID) or (BATCH_FILE_NAME, INDIV_INDEX)
   - MAIN_RECORDS: (_ID) or (BATCH_FILE_NAME)
   - WEAPONS_RECORDS: (BATCH_FILE_NAME, INDIV_INDEX, WEAPON)

2. Relationships:
   - BATCH_FILE_NAME is the primary linking field between tables
   - INDIV_INDEX links individual-level records within an incident
   - Main Records (1) -> Individual Records (many)
   - Individual Records (1) -> Cycle Probe Records (many)
   - Individual Records (1) -> Weapons Records (many)

3. Data Types:
   - Boolean flags are stored as INTEGER (1 for true, NULL for false/empty)
   - VARCHAR sizes are estimated based on observed data lengths
   - TEXT fields for longer content
   - DATE and TIME fields for temporal data

4. Loading Data:
   - Use COPY INTO commands with CSV format
   - Handle empty strings as NULL values
   - Consider using VARIANT for complex nested data if needed

5. Indexes (Recommended):
   - Create indexes on BATCH_FILE_NAME in all tables
   - Create indexes on _ID fields where present
   - Consider composite indexes on (BATCH_FILE_NAME, INDIV_INDEX)

6. Semantic View Benefits:
   - Pre-joined data reduces query complexity for Cortex Analyst
   - Business-friendly column names improve AI understanding
   - Calculated fields provide immediate insights
   - Data dictionary context enhances semantic understanding
   - Optimized for analytical queries and pattern recognition
*/
