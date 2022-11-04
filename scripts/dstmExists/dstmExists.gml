function dstmExists(_name) {
    static _inst = __dstmSingleton();
    return variable_struct_exists(_inst.__database, _name);
}