#①源文件路径，指本目录下的所有代码驱动
set(src_dirs
    LED)
#②头文件路径，指本目录下的所有代码驱动
set(include_dirs
    LED)
#③设置依赖库
set(requires
driver)
idf_component_register(SRC_DIRS ${src_dirs}
INCLUDE_DIRS ${include_dirs} REQUIRES ${requires})
# component_compile_options(-ffast-math -O3 -Wno-error=format=-Wno-format)