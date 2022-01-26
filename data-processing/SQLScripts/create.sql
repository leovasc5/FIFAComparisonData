- Sistema para conversão de excel em database SQL Server
- PHP comparador
- Base de Dados

CREATE DATABASE FIFAComparisonDATA;

-- The BIT type will represent the BOOLEAN type
-- DON'T USE NOT NULL FOR INTEGRITY -> Tested in 'PythonProcessing/part1.py'
-- club_name
-- league_name
-- league_rank
-- release_clause_eur  
-- player_tags
-- team_position       
-- team_jersey_number  
-- loaned_from
-- joined
-- contract_valid_until
-- nation_position
-- nation_jersey_number
-- pace
-- shooting
-- passing
-- dribbling
-- defending
-- physic
-- gk_diving
-- gk_handling
-- gk_kicking
-- gk_reflexes
-- gk_speed
-- gk_positioning
-- player_traits
-- mentality_composure
-- defending_marking

USE FIFAComparisonDATA;

CREATE TABLE Fifa15(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)

CREATE TABLE Fifa16(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)

CREATE TABLE Fifa17(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)

CREATE TABLE Fifa18(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)

CREATE TABLE Fifa19(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)

CREATE TABLE Fifa20(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)

CREATE TABLE Fifa21(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64),
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT NOT NULL,
	potential TINYINT NOT NULL,
	value_eur DECIMAL NOT NULL,
	wage_eur DECIMAL NOT NULL,
	player_positions VARCHAR(32) NOT NULL,
	preferred_foot VARCHAR(5) NOT NULL,
	international_reputation TINYINT NOT NULL,
	weak_foot TINYINT NOT NULL,
	skill_moves TINYINT NOT NULL,
	work_rate VARCHAR(32) NOT NULL,
	body_type VARCHAR(32) NOT NULL,
	real_face BIT NOT NULL,
	release_clause_eur DECIMAL,
	player_tags VARCHAR(32),
	team_position VARCHAR(8),
	team_jersey_number TINYINT,
	loaned_from VARCHAR(64),
	joined DATE,
	contract_valid_until CHAR(4),
	nation_position VARCHAR(8),
	nation_jersey_number TINYINT,
	pace TINYINT,
	shooting TINYINT,
	passing TINYINT,
	dribbling TINYINT,
	defending TINYINT,
	physic TINYINT,
	gk_diving TINYINT,
	gk_handling TINYINT,
	gk_kicking TINYINT,
	gk_reflexes TINYINT,
	gk_speed TINYINT,
	gk_positioning TINYINT,
	player_traits VARCHAR(255),
	attacking_crossing TINYINT NOT NULL,
	attacking_finishing TINYINT NOT NULL,
	attacking_heading_accuracy TINYINT NOT NULL,
	attacking_short_passing TINYINT NOT NULL,
	attacking_volleys TINYINT NOT NULL,
	skill_dribbling TINYINT NOT NULL,
	skill_curve TINYINT NOT NULL,
	skill_fk_accuracy TINYINT NOT NULL,
	skill_long_passing TINYINT NOT NULL,	
	skill_ball_control TINYINT NOT NULL,
	movement_acceleration TINYINT NOT NULL,
	movement_sprint_speed TINYINT NOT NULL,
	movement_agility TINYINT NOT NULL,
	movement_reactions TINYINT NOT NULL,
	movement_balance TINYINT NOT NULL,
	power_shot_power TINYINT NOT NULL,
	power_jumping TINYINT NOT NULL,
	power_stamina TINYINT NOT NULL,
	power_strength TINYINT NOT NULL,
	power_long_shots TINYINT NOT NULL,
	mentality_aggression TINYINT NOT NULL,
	mentality_interceptions TINYINT NOT NULL,
	mentality_positioning TINYINT NOT NULL,
	mentality_vision TINYINT NOT NULL,
	mentality_penalties TINYINT NOT NULL,
	mentality_composure TINYINT,
	defending_marking TINYINT,
	defending_standing_tackle TINYINT NOT NULL,	
	defending_sliding_tackle TINYINT NOT NULL,
	goalkeeping_diving TINYINT NOT NULL,
	goalkeeping_handling TINYINT NOT NULL,	
	goalkeeping_kicking	TINYINT NOT NULL,
	goalkeeping_positioning	TINYINT NOT NULL,
	goalkeeping_reflexes TINYINT NOT NULL,
	ls VARCHAR(8) NOT NULL,
	st VARCHAR(8) NOT NULL,	
	rs VARCHAR(8) NOT NULL,
	lw VARCHAR(8) NOT NULL,
	lf VARCHAR(8) NOT NULL,
	cf VARCHAR(8) NOT NULL,
	rf VARCHAR(8) NOT NULL,
	rw VARCHAR(8) NOT NULL,
	lam VARCHAR(8) NOT NULL,
	cam VARCHAR(8) NOT NULL,
	ram VARCHAR(8) NOT NULL,
	lm VARCHAR(8) NOT NULL,
	lcm VARCHAR(8) NOT NULL,
	cm VARCHAR(8) NOT NULL,
	rcm VARCHAR(8) NOT NULL,
	rm VARCHAR(8) NOT NULL,
	lwb VARCHAR(8) NOT NULL,
	ldm VARCHAR(8) NOT NULL,
	cdm VARCHAR(8) NOT NULL,
	rdm VARCHAR(8) NOT NULL,
	rwb VARCHAR(8) NOT NULL,
	lb VARCHAR(8) NOT NULL,
	lcb VARCHAR(8) NOT NULL,
	cb VARCHAR(8) NOT NULL,
	rcb VARCHAR(8) NOT NULL,
	rb VARCHAR(8) NOT NULL
)