dstmAdd("foo", function(_inst) {
	show_debug_message("foo");
	show_debug_message(object_get_name(_inst.object_index));
	show_debug_message(current_time);
});

dstmAdd("bar", function(_inst) {
	show_debug_message("bar");
	show_debug_message(current_time);
});

dstmTrigger("foo");
dstmTriggerAsync("bar");