// Horizontal Collision on Solid

if (place_meeting (x+hspd, y, obj_level_solid)) {
    while (!place_meeting (x+sign(hspd), y, obj_level_solid)) {
        x += sign(hspd);
    }
    hspd = 0;
}

if (place_meeting (x+hspd, y, obj_level_bound)) {
    while (!place_meeting (x+sign(hspd), y, obj_level_bound)) {
        x += sign(hspd);
    }
    hspd = 0;
}

// Move Horizontally

x += hspd;



// Vertical Collision on Solid

if (place_meeting (x, y+vspd, obj_level_solid)) {
    while (!place_meeting (x, y+sign(vspd), obj_level_solid)) {
        y += sign(vspd);
    }
    vspd = 0;
}

if (place_meeting (x, y+vspd, obj_level_bound)) {
    while (!place_meeting (x, y+sign(vspd), obj_level_bound)) {
        y += sign(vspd);
    }
    vspd = 0;
}

// Move Vertically

y += vspd;



//Sprite Animation
if (yprevious != y) {
    sprite_index = sp_player_jump;
    image_speed = 0;
    image_index = y>yprevious;
} else {
    if (xprevious != x) {
        sprite_index = sp_player_walk;
        image_speed = 0.25;
    } else {
        sprite_index = sp_player_stand;
        image_speed = 0.1;
    }
}

//Sprtie Direction
if (xprevious < x) {
    image_xscale = 1;
} else if (xprevious > x) {
    image_xscale = -1;
}
