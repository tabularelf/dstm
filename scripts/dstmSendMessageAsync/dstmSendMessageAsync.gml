function dstmSendMessageAsync(_name) {
	static _inst = __dstmSingleton();
	if (!dstmSubExists(_name)) {
		__dstmError("The sub " + string(_name) + " is not a registered sub!");
	}
	
	array_push(_inst.__eventsQueued, new __dstmSubscriber(_name));
}