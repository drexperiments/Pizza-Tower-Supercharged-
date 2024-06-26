/// @description Initializes GMLive's Snippet API

// instance this shit
with (instance_create(0, 0, obj_gmlive))
	persistent = true;

// Add all scripts manually
for (var i = 100001; script_exists(i); i++) {
    var s = script_get_name(i);
	if string_starts_with(s, "game_") || string_starts_with(s, "display_")
		continue;
	gml_func_add(":::" + s + "(...):", i);
}
gml_func_add(":::live_snippet_create(str):", function(str)
{
	return live_snippet_create(str);
});
gml_func_add(":::live_snippet_call(snip):", function(snip)
{
	return live_snippet_call(snip);
});

// Custom stuff
gml_func_add(":::trace(...):", live_trace);
gml_func_add(":::show_debug_message(...):", live_trace);
gml_func_add(":::game_end(...):", live_game_end);
// gml_func_add(":::instance_custom(...):", instance_custom);

// From ToppinLoader
// TODO: Redo this this fucking sucks
gml_const_add("player_normal", 0)
gml_const_add("player_revolver", 1)
gml_const_add("player_dynamite", 2)
gml_const_add("player_boots", 3)
gml_const_add("player_grabbed", 4)
gml_const_add("player_tumble", 5)
gml_const_add("player_finishingblow", 6)
gml_const_add("player_ejected", 7)
gml_const_add("player_transitioncutscene", 8)
gml_const_add("player_fireass", 9)
gml_const_add("player_firemouth", 10)
gml_const_add("player_mort", 11)
gml_const_add("player_mortjump", 12)
gml_const_add("player_mortattack", 13)
gml_const_add("player_morthook", 14)
gml_const_add("player_hook", 15)
gml_const_add("player_ghost", 16)
gml_const_add("player_ghostpossess", 17)
gml_const_add("player_titlescreen", 18)
gml_const_add("player_hookshotN", 19)
gml_const_add("player_tacklecharge", 20)
gml_const_add("player_cheeseball", 21)
gml_const_add("player_cheeseballclimbwall", 22)
gml_const_add("player_slap", 23)
gml_const_add("player_cheesepep", 24)
gml_const_add("player_cheesepepstick", 25)
gml_const_add("player_cheesepepjump", 26)
gml_const_add("player_cheesepepfling", 27)
gml_const_add("player_cheesepeplaunch", 28)
gml_const_add("player_cheeseballstickside", 29)
gml_const_add("player_cheesepepstickup", 30)
gml_const_add("player_rideweenie", 31)
gml_const_add("player_pizzacar", 32)
gml_const_add("player_boxxedpep", 33)
gml_const_add("player_boxxedpepspin", 34)
gml_const_add("player_boxxedpepjump", 35)
gml_const_add("player_pistolaim", 36)
gml_const_add("player_climbwall", 37)
gml_const_add("player_knightpepslopes", 38)
gml_const_add("player_portal", 39)
gml_const_add("player_secondjump", 40)
gml_const_add("player_chainsawbump", 41)
gml_const_add("player_handstandjump", 42)
gml_const_add("player_lungeattack", 43)
gml_const_add("player_lungegrab", 44)
gml_const_add("player_dashtumble", 45)
gml_const_add("player_gottreasure", 46)
gml_const_add("player_knightpep", 47)
gml_const_add("player_knightpepattack", 48)
gml_const_add("player_knightpepbump", 49)
gml_const_add("player_meteorpep", 50)
gml_const_add("player_bombpep", 51)
gml_const_add("player_bombgrab", 52)
gml_const_add("player_bombpepside", 53)
gml_const_add("player_bombpepup", 54)
gml_const_add("player_grabbing", 55)
gml_const_add("player_chainsawpogo", 56)
gml_const_add("player_shotgunjump", 57)
gml_const_add("player_pogo", 58)
gml_const_add("player_stunned", 59)
gml_const_add("player_highjump", 60)
gml_const_add("player_chainsaw", 61)
gml_const_add("player_facestomp", 62)
gml_const_add("player_timesup", 64)
gml_const_add("player_machroll", 65)
gml_const_add("player_shotgun", 66)
gml_const_add("player_shotguncrouch", 67)
gml_const_add("player_shotguncrouchjump", 68)
gml_const_add("player_shotgunshoot", 69)
gml_const_add("player_shotgundash", 70)
gml_const_add("player_shotgunfreefall", 71)
gml_const_add("player_pistol", 72)
gml_const_add("player_machfreefall", 73)
gml_const_add("player_throwing", 74)
gml_const_add("player_slam", 75)
gml_const_add("player_superslam", 76)
gml_const_add("player_skateboard", 77)
gml_const_add("player_grind", 78)
gml_const_add("player_grab", 79)
gml_const_add("player_punch", 80)
gml_const_add("player_backkick", 81)
gml_const_add("player_uppunch", 82)
gml_const_add("player_shoulder", 83)
gml_const_add("player_tauntmoves", 84)
gml_const_add("player_graffiti", 85)
gml_const_add("player_bossdefeat", 86)
gml_const_add("player_pizzathrow", 87)
gml_const_add("player_bossintro", 88)
gml_const_add("player_gameover", 89)
gml_const_add("player_keyget", 90)
gml_const_add("player_tackle", 91)
gml_const_add("player_jump", 92)
gml_const_add("player_ladder", 93)
gml_const_add("player_slipnslide", 94)
gml_const_add("player_comingoutdoor", 95)
gml_const_add("player_smirk", 96)
gml_const_add("player_sjump", 97)
gml_const_add("player_victory", 98)
gml_const_add("player_sjumpprep", 99)
gml_const_add("player_crouch", 100)
gml_const_add("player_crouchjump", 101)
gml_const_add("player_crouchslide", 102)
gml_const_add("player_mach1", 103)
gml_const_add("player_mach2", 104)
gml_const_add("player_machslide", 105)
gml_const_add("player_bump", 106)
gml_const_add("player_hurt", 107)
gml_const_add("player_freefall", 108)
gml_const_add("player_hang", 109)
gml_const_add("player_freefallland", 111)
gml_const_add("player_door", 112)
gml_const_add("player_barrel", 113)
gml_const_add("player_barreljump", 114)
gml_const_add("player_barrelclimbwall", 115)
gml_const_add("player_barrelslide", 116)
gml_const_add("player_current", 117)
gml_const_add("player_boulder", 118)
gml_const_add("player_taxi", 119)
gml_const_add("player_runonball", 120)
gml_const_add("player_mach3", 121)
gml_const_add("player_freefallprep", 122)
gml_const_add("player_sjumpland", 123)
gml_const_add("player_faceplant", 124)
gml_const_add("player_hit", 137)
gml_const_add("player_arenaintro", 144)
gml_const_add("player_actor", 146)
gml_const_add("player_parry", 147)
gml_const_add("player_golf", 148)
gml_const_add("player_tube", 150)
gml_const_add("player_taxi2", 152)
gml_const_add("player_shoulderbash", 153)
gml_const_add("player_pummel", 154)
gml_const_add("player_thrown", 156)
gml_const_add("player_slipbanan", 165)
gml_const_add("player_bombdelete", 183)
gml_const_add("player_rocket", 184)
gml_const_add("player_rocketslide", 185)
gml_const_add("player_gotoplayer", 186)
gml_const_add("player_trickjump", 187)
gml_const_add("player_ridecow", 190)
gml_const_add("player_ratmount", 191)
gml_const_add("player_ratmountjump", 192)
gml_const_add("player_ratmountattack", 193)
gml_const_add("player_ratmountspit", 194)
gml_const_add("player_ratmountclimbwall", 195)
gml_const_add("player_ratmounthurt", 196)
gml_const_add("player_ratmountgroundpound", 197)
gml_const_add("player_ratmountbounce", 198)
gml_const_add("player_ratmountballoon", 200)
gml_const_add("player_ratmounttumble", 201)
gml_const_add("player_ratmountgrind", 202)
gml_const_add("player_ratmounttrickjump", 203)
gml_const_add("player_ratmountskid", 204)
gml_const_add("player_blockstance", 206)
gml_const_add("player_balloon", 207)
gml_const_add("player_debugstate", 208)
gml_const_add("player_trashjump", 210)
gml_const_add("player_trashroll", 211)
gml_const_add("player_stringfling", 212)
gml_const_add("player_stringjump", 213)
gml_const_add("player_stringfall", 214)
gml_const_add("player_noisejetpack", 215)
gml_const_add("player_spiderweb", 216)
gml_const_add("player_animatronic", 225)
gml_const_add("player_playersuperattack", 252)
gml_const_add("player_jetpackjump", 254)
gml_const_add("player_bee", 257)
gml_const_add("player_ratmountpunch", 259)
gml_const_add("player_ratmountcrouch", 260)
gml_const_add("player_ratmountladder", 261)
gml_const_add("player_antigrav", 265)

// Might as well init rt-shell while we're here
with (instance_create(0, 0, obj_shell))
{
	width =	SCREEN_WIDTH;
	screenAnchorPointV = "top";
	openKey = vk_f5;
	openModifiers = undefined;
	useOpenKeyAsExit = true;
	depth = -5000;
}

// state map for commands
state_map = ds_map_create();
ds_map_set(state_map, "states.normal", states.normal);
ds_map_set(state_map, "states.cheesepep", states.cheesepep);
ds_map_set(state_map, "states.knightpep", states.knightpep);
ds_map_set(state_map, "states.firemouth", states.firemouth);
ds_map_set(state_map, "states.ratmount", states.ratmount);