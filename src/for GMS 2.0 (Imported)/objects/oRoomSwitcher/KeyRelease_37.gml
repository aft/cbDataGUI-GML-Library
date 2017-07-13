if (room_exists(room_previous(room))) {
    room_goto(room_previous(room));
} else {
    room_goto(room_last);
}

