function dstmTick() {
	static _inst = __dstmSingleton();
	if (array_length(_inst.__eventsQueued) > 0) {
		var _currentSize = array_length(_inst.__eventsQueued);
		var _i = 0;
		repeat(_currentSize) {
			dstmSendMessage(_inst.__eventsQueued[_i]);
			++_i;
		}
		array_delete(_inst.__eventsQueued, 0, _currentSize);
	}
}