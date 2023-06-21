add_llvm_library( BladeNaivePass MODULE
    BladeNaive.cpp

    PLUGIN_TOOL
    opt
)