function dstmRemove(_name) {
    static _inst = __dstmSingleton();
    variable_struct_remove(_inst.__database, _name);
}