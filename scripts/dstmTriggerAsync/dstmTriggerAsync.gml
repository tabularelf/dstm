function dstmTriggerAsync(_name) {
	static _inst = __dstmSingleton();
	array_push(_inst.__eventsQueued, new __dstmSubscriber(_name));
}