/// @description Handles Sound
f_stress = 0; //Tracks Scott's mental state. Dependent on which chats are open, as well as other features.
global.f_addingstress = 0.0; //Rate that Scott will be gaining stress
global.f_stressrate = 0.0;
fcooldown = 0;
fcooldowntimer = 60;
b_decay = false;

b_changeday= false;
i_changedaytimer = 0;
i_fade = 1;

global.music_emitter = audio_emitter_create();
global.background_emitter = audio_emitter_create();
global.heartbeat_emitter = audio_emitter_create();


i_pulse = 40; //smaller is longer heartbeat
i_timetillbeat = 0;
i_gain = 0;