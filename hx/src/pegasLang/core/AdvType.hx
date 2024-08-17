package pegasLang.core;

import pegasLang.core.BasicType;

enum AdvType<T, E> {
    BasicType(t: BasicType);
    Literal(v: Dynamic, t: BasicType);
    Function(t: Array<AdvType<T, E>>);
    Error(e: E);
    Array(t: AdvType<T, E>);
    Object(flds: Map<String, AdvType<T, E>>);
    Polyvariant(vars: Map<String, AdvType<T, E>>);
    Data(name: Null<T>);
}