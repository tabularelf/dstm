function dstmSubEvent() {
	static _inst = __dstmSingleton();
	if (_inst.__isdstm) {
		var _msg = _inst.__currentEvent;
		var _messageResults = _inst.__database[$ _msg.__name];
		if (is_undefined(_messageResults)) {
			__dstmError("The sub" + string(_msg.__name) + " is not a registered sub!");
		}
		
		var _i = 0;
		repeat(argument_count) {
			var _subbed = argument[_i];
			if (_subbed == _msg.__name) {
				if (method_get_self(_messageResults.__callback) == undefined) {
					with(self) {
						var _index = method_get_index(_messageResults.__callback);
						_index(_msg.__self);	
					}
				} else {
					_messageResults.__callback(_msg.__self);	
				}
				exit;
			}
			++_i;
		}
	}
}