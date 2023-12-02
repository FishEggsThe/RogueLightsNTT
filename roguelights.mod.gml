#define init
	// A
		// One Portal Strike
		global.one_idle[0] = sprite_add("A/1/idle.png",	10, 12, 12);
		global.one_walk[0] = sprite_add("A/1/walk.png",	6, 12, 12);
		global.one_hurt[0] = sprite_add("A/1/hurt.png",	3, 12, 12);
		global.one_dead[0] = sprite_add("A/1/dead.png",	6, 12, 12);
		global.one_sit1[0] = sprite_add("A/1/sit1.png",	3, 12, 12);
		global.one_sit2[0] = sprite_add("A/1/sit2.png",	1, 12, 12);
		// Two Portal Strikes
		global.two_idle[0] = sprite_add("A/2/idle.png",	10, 12, 12);
		global.two_walk[0] = sprite_add("A/2/walk.png",	6, 12, 12);
		global.two_hurt[0] = sprite_add("A/2/hurt.png",	3, 12, 12);
		global.two_dead[0] = sprite_add("A/2/dead.png",	6, 12, 12);
		global.two_sit1[0] = sprite_add("A/2/sit1.png",	3, 12, 12);
		global.two_sit2[0] = sprite_add("A/2/sit2.png",	1, 12, 12);
		// Three Portal Strikes
		global.three_idle[0] = sprite_add("A/3/idle.png",	10, 12, 12);
		global.three_walk[0] = sprite_add("A/3/walk.png",	6, 12, 12);
		global.three_hurt[0] = sprite_add("A/3/hurt.png",	3, 12, 12);
		global.three_dead[0] = sprite_add("A/3/dead.png",	6, 12, 12);
		global.three_sit1[0] = sprite_add("A/3/sit1.png",	3, 12, 12);
		global.three_sit2[0] = sprite_add("A/3/sit2.png",	1, 12, 12);
	// B
		// One Portal Strike
		global.one_idle[1] = sprite_add("B/1B/idle.png",	10, 12, 12);
		global.one_walk[1] = sprite_add("B/1B/walk.png",	6, 12, 12);
		global.one_hurt[1] = sprite_add("B/1B/hurt.png",	3, 12, 12);
		global.one_dead[1] = sprite_add("B/1B/dead.png",	6, 12, 12);
		global.one_sit1[1] = sprite_add("B/1B/sit1.png",	3, 12, 12);
		global.one_sit2[1] = sprite_add("B/1B/sit2.png",	1, 12, 12);
		// Two Portal Strikes
		global.two_idle[1] = sprite_add("B/2B/idle.png",	10, 12, 12);
		global.two_walk[1] = sprite_add("B/2B/walk.png",	6, 12, 12);
		global.two_hurt[1] = sprite_add("B/2B/hurt.png",	3, 12, 12);
		global.two_dead[1] = sprite_add("B/2B/dead.png",	6, 12, 12);
		global.two_sit1[1] = sprite_add("B/2B/sit1.png",	3, 12, 12);
		global.two_sit2[1] = sprite_add("B/2B/sit2.png",	1, 12, 12);
		// Three Portal Strikes
		global.three_idle[1] = sprite_add("B/3B/idle.png",	10, 12, 12);
		global.three_walk[1] = sprite_add("B/3B/walk.png",	6, 12, 12);
		global.three_hurt[1] = sprite_add("B/3B/hurt.png",	3, 12, 12);
		global.three_dead[1] = sprite_add("B/3B/dead.png",	6, 12, 12);
		global.three_sit1[1] = sprite_add("B/3B/sit1.png",	3, 12, 12);
		global.three_sit2[1] = sprite_add("B/3B/sit2.png",	1, 12, 12);
		
#define game_start
	with instances_matching(Player, "race", "rogue"){
		spr_defaultIdle = spr_idle;
		spr_defaultWalk = spr_walk;
		spr_defaultHurt = spr_hurt;
		spr_defaultDead = spr_dead;
		spr_defaultSit1 = spr_sit1;
		spr_defaultSit2 = spr_sit2;
	}

#define step
	with instances_matching(Player, "race", "rogue"){
		if "ult" not in self { ult = 1 }
		if(ultra_get("rogue", 1))
			ult = 0.5;
		
		if(floor(rogueammo*ult) == 1){
			spr_idle = global.one_idle[bskin];
			spr_walk = global.one_walk[bskin];
			spr_hurt = global.one_hurt[bskin];
			spr_dead = global.one_dead[bskin];
			spr_sit1 = global.one_sit1[bskin];
			spr_sit2 = global.one_sit2[bskin];
		}
		else if(floor(rogueammo*ult) == 2){
			spr_idle = global.two_idle[bskin];
			spr_walk = global.two_walk[bskin];
			spr_hurt = global.two_hurt[bskin];
			spr_dead = global.two_dead[bskin];
			spr_sit1 = global.two_sit1[bskin];
			spr_sit2 = global.two_sit2[bskin];
		}
		else if(floor(rogueammo*ult) == 3){
			spr_idle = global.three_idle[bskin];
			spr_walk = global.three_walk[bskin];
			spr_hurt = global.three_hurt[bskin];
			spr_dead = global.three_dead[bskin];
			spr_sit1 = global.three_sit1[bskin];
			spr_sit2 = global.three_sit2[bskin];
		}
		else{
			spr_idle = spr_defaultIdle;
			spr_walk = spr_defaultWalk;
			spr_hurt = spr_defaultHurt;
			spr_dead = spr_defaultDead;
			spr_sit1 = spr_defaultSit1;
			spr_sit2 = spr_defaultSit2;
		}
	}