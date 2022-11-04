function dstmSubAdd(_name, _callback) {
	static _inst = __dstmSingleton();
	if (variable_struct_exists(_inst.__database, _name)) {
		__dstmError("The sub" + string(_name) + " is already registered! Please call dstmRemove() prior to this!");
	}
	
	var _sub = new __dstmEventCreate(_name, _callback);		
}