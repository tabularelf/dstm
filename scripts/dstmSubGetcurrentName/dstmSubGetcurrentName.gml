function dstmSubGetCurrentName() {
	static _inst = __dstmSingleton();
	return (is_struct(_inst.__currentEvent)) ? _inst.__currentEvent.__name : "";
}