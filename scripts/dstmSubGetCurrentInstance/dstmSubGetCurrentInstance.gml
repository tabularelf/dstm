function dstmSubGetCurrentInstance() {
	static _inst = __dstmSingleton();
	return (is_struct(_inst.__currentEvent)) ? _inst.__currentEvent.__self : noone;
}