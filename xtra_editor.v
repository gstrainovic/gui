module gui

// Public API for code editor: exposes input cursor position (read-only).

pub fn input_cursor_pos(id_focus u32, w &Window) int {
	sm := state_map_read[u32, InputState](w, ns_input) or { return 0 }
	state := sm.get(id_focus) or { return 0 }
	return state.cursor_pos
}
