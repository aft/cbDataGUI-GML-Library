if (room_exists(room_next(room))) {
    room_goto(room_next(room));
} else {
    room_goto(room_first);
}

