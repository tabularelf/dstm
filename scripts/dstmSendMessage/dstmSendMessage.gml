function dstmSendMessage(_name) {
	static _inst = __dstmSingleton();
	_inst.__isdstm = true;
	if (!dstmSubExists(_name) && !is_struct(_name)) {
		__dstmError("The sub " + string(_name) + " is not a registered sub!");
	}
	
	_inst.__currentEvent = (is_string(_name)) ? new __dstmSubscriber(_name) : _name;
	with(all) {
		event_perform(ev_other, ev_broadcast_message);
	}
	_inst.__isdstm = false;
	_inst.__currentEvent = undefined;
}