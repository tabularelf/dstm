function __dstmEventCreate(_name, _callback) constructor { 
	static _inst = __dstmSingleton();
	_inst.__database[$ _name] = self;
	__callback = is_undefined(_callback) ? _callback : (is_method(_callback) ? _callback : method(undefined, _callback));
	
}