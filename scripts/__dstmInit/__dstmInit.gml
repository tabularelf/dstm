#macro __DSTM_CREDITS "@TabularElf - https://tabelf.link/"
#macro __DSTM_VERSION "v1.0.1"

/// @ignore
function __dstmSingleton() {
	static _inst = undefined;
	if (_inst == undefined) {
		_inst = {};
		try {
			_inst.__ts = time_source_create(time_source_global, 1,time_source_units_frames, method(undefined, dstmTick), [], -1);	
			time_source_start(_inst.__ts);
		} catch(_ex) {
			__dstmTrace("Warning: Running on an older version of GameMaker... Make sure that dstmTick() is being called at least once in the begin step event.");
			_inst.__ts = undefined;
		}
		_inst.__database = {};
		_inst.__eventsQueued = [];
		_inst.__currentEvent = undefined;
		_inst.__isdstm = false;
	}
	
	return _inst;
}
__dstmSingleton();
__dstmTrace(__DSTM_VERSION + " initalized! Created by " + __DSTM_CREDITS);