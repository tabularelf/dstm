dstmSubAdd("foo", function(_inst) {
	show_debug_message("foo");
	show_debug_message(object_get_name(_inst.object_index));
	show_debug_message(current_time);
});

dstmSubAdd("bar", function(_inst) {
	show_debug_message("bar");
	show_debug_message(current_time);
});

dstmSubAdd("aaa");

dstmSendMessage("foo");
dstmSendMessageAsync("bar");
dstmSendMessage("aaa");