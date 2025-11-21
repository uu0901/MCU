#①源文件路径，指本目录下的所有代码驱动
set(src_dirs
    LED
    WS2812B
    KEY
    UART)
#②头文件路径，指本目录下的所有代码驱动
set(include_dirs
    LED
    WS2812B
    KEY
    UART)
#③设置依赖库
set(requires
    driver
    led_strip)
idf_component_register(SRC_DIRS ${src_dirs}
INCLUDE_DIRS ${include_dirs} REQUIRES ${requires})
# component_compile_options(-ffast-math -O3 -Wno-error=format=-Wno-format)