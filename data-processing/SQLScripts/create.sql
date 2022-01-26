CREATE DATABASE FIFAComparisonDATA

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




CREATE TABLE Fifa15(
	sofifa_id INT PRIMARY KEY IDENTITY(1, 1),
	player_url VARCHAR(128) NOT NULL,
	short_name VARCHAR(64) NOT NULL,
	long_name VARCHAR(128) NOT NULL,
	age TINYINT NOT NULL,
	dob	DATE NOT NULL,
	height_cm TINYINT,
	weight_kg TINYINT,
	nationality VARCHAR(64)
	club_name VARCHAR(64),
	league_name VARCHAR(64),
	league_rank TINYINT,
	overall TINYINT,
	potential TINYINT,
	value_eur
	wage_eur
	player_positions
	preferred_foot
	international_reputation
	weak_foot
	skill_moves	work_rate
	body_type
	real_face
	release_clause_eur
	player_tags	team_position
	team_jersey_number
	loaned_from	joined
	contract_valid_until
	nation_position	nation_jersey_number
	pace
	shooting
	passing	dribbling
	defending
	physic
	gk_diving
	gk_handling	gk_kicking
	gk_reflexes	gk_speed
	gk_positioning
	player_traits
	attacking_crossing
	attacking_finishing
	attacking_heading_accuracy
	attacking_short_passing
	attacking_volleys
	skill_dribbling
	skill_curve	
	skill_fk_accuracy
	skill_long_passing	
	skill_ball_control
	movement_acceleration
	movement_sprint_speed
	movement_agility
	movement_reactions
	movement_balance	
	power_shot_power	
	power_jumping	
	power_stamina	
	power_strength	
	power_long_shots	
	mentality_aggression	
	mentality_interceptions	
	mentality_positioning	
	mentality_vision	
	mentality_penalties	
	mentality_composure	
	defending_marking	
	defending_standing_tackle	
	defending_sliding_tackle	
	goalkeeping_diving	
	goalkeeping_handling	
	goalkeeping_kicking	
	goalkeeping_positioning	
	goalkeeping_reflexes	
	ls	
	st	
	rs	
	lw	
	lf	
	cf	
	rf	
	rw	
	lam	
	cam	
	ram	
	lm
	lcm	
	cm	
	rcm	
	rm	
	lwb	
	ldm	
	cdm	
	rdm	
	rwb	
	lb	
	lcb	
	cb	
	rcb	
	rb
)