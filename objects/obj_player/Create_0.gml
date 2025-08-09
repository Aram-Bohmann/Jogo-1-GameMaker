// Movimentação
hspd = 0;
vspd = 0;
grv = 0.3;

// Direção e aceleração
can_move = 0;
move_dir = 0;
move_spd = 0;
vspd_min = -7
vspd_max = 5;
acc = 0.2;
dcc = 0.2;

// Pulos
global.jump_max = 1;
jump_count = global.jump_max;
global.jump_height = 4;
coyote_time_max = 10;
coyote_time = 0;

// Dash Força, distância e delay
dash_force = 15;
dash_time = 0;
dash_distance = 5;
dash = true;
dash_delay = 40;


state = player_state_idle;