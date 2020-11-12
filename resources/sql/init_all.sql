DROP DATABASE ng40k;

CREATE DATABASE ng40k;

USE ng40k;

source abilities_init.sql;
source factions_init.sql;
source roles_init.sql;
source units_init.sql;
source models_init.sql;
source wargear_types_init.sql;
source wargear_init.sql;
source wargear_stats_init.sql;
source stats_init.sql;
source keywords_init.sql;
source faction_keywords_init.sql;
source subfactions_init.sql;
source army_models_init.sql;
source army_units_init.sql;
source army_gear_init.sql;
source army_faction_keywords_init.sql;
source stratagems_init.sql;
source stratagem_conditions_init.sql;
source detachments_init.sql;
source model_gear_options_init.sql;
source user_detachments_init.sql;

source wargear_join.sql;
source model_unit_join.sql;
source unit_keywords_join.sql;
source unit_faction_keywords_join.sql;
source unit_abilities_join.sql;