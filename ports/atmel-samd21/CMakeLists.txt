project(arduino)

set(ARDUINO_INCLUDES
    ${CMAKE_CURRENT_LIST_DIR}/asf4/include
    ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/variants/mkrzero
    ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/cores/arduino
    ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/cores/arduino/USB
    ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/libraries/SPI
    ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/libraries/I2S/src
    ${CMAKE_CURRENT_LIST_DIR}/CMSIS/Include
)

set(ARDUINO_SOURCES
    cortex_handlers.c
    main.cpp
    abi.cpp
    SERCOM.cpp
    pulse.c
    Print.cpp
    itoa.c
    hooks.c
    delay.c
    startup.c
    hooks.c
    new.cpp
    wiring.c
    wiring_private.c
    wiring_digital.c
    wiring_analog.c
    wiring_shift.c
    Reset.cpp
    WMath.cpp
    WString.cpp
    Uart.cpp
    Stream.cpp
    WInterrupts.c
)
list(TRANSFORM ARDUINO_SOURCES PREPEND ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/cores/arduino/)


set(ARDUINO_SOURCES_USB
    CDC.cpp
    PluggableUSB.cpp
    samd21_host.c
    USBCore.cpp
)
list(TRANSFORM ARDUINO_SOURCES_USB PREPEND ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/cores/arduino/USB/)

set(ARDUINO_SOURCES_LIBS
    SPI/SPI.cpp
    I2S/src/I2S.cpp
    I2S/src/utility/DMA.cpp
    I2S/src/utility/I2SDoubleBuffer.cpp
)
list(TRANSFORM ARDUINO_SOURCES_LIBS PREPEND ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/libraries/)


set(MKRZERO_SOURCES
    variant.cpp
)
list(TRANSFORM MKRZERO_SOURCES PREPEND ${CMAKE_CURRENT_LIST_DIR}/ArduinoCore-samd/variants/mkrzero/)

add_library(arduino ${ARDUINO_SOURCES} ${MKRZERO_SOURCES} ${ARDUINO_SOURCES_USB} ${ARDUINO_SOURCES_LIBS})

target_include_directories(arduino PUBLIC ${ARDUINO_INCLUDES})

set(${PROJECT_NAME}_INCLUDE_DIRS ${ARDUINO_INCLUDES}
    CACHE INTERNAL "${PROJECT_NAME}: Include Directories" FORCE)

