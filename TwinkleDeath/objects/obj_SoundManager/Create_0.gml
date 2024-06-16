/// @description Handles Sound
f_stress = 0; //Tracks Scott's mental state. Dependent on which chats are open, as well as other features.
global.f_addingstress = 0.0; //Rate that Scott will be gaining stress
global.f_stressrate = 0.0;
fcooldown = 0;
fcooldowntimer = 60;
b_decay = false;

b_changeday= false;
i_changedaytimer = 0;