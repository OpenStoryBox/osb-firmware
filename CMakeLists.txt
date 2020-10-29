##########################################################################
# "THE ANY BEVERAGE-WARE LICENSE" (Revision 42 - based on beer-ware
# license):
# <dev@layer128.net> wrote this file. As long as you retain this notice
# you can do whatever you want with this stuff. If we meet some day, and
# you think this stuff is worth it, you can buy me a be(ve)er(age) in
# return. (I don't like beer much.)
#
# Matthias Kleemann
##########################################################################

cmake_minimum_required(VERSION 3.12)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_COLOR_MAKEFILE   ON)

### TOOLCHAIN SETUP AREA #################################################
# Set any variables used in the toolchain prior project() call. In that
# case they are already set and used.
##########################################################################

##########################################################################
# tools to beused for programming the ARM
##########################################################################
#set(ARM_UPLOADTOOL armdude)
#set(ARM_PROGRAMMER usbasp-clone)
#set(ARM_UPLOADTOOL_PORT usb)

##########################################################################
# ARM and fuses needs to be set
##########################################################################
#set(ARM_MCU atmega328p)
#set(ARM_H_FUSE 0x99)
#set(ARM_L_FUSE 0x11)

### END TOOLCHAIN SETUP AREA #############################################

# Intentionally left blank, due to a different approach of using the
# toolchain file via -DCMAKE_TOOLCHAIN_FILE=path/to/generic-gcc-arm.cmake
# at the cmake command line call
#


include(./build/generic-gcc-arm.cmake)

##########################################################################
# name your project
##########################################################################
project(Osb)
set(Osb NONE)

##########################################################################
# status messages
##########################################################################
#message(STATUS "Current uploadtool is: ${ARM_UPLOADTOOL}")
#message(STATUS "Current programmer is: ${ARM_PROGRAMMER}")
#message(STATUS "Current upload port is: ${ARM_UPLOADTOOL_PORT}")
#message(STATUS "Current uploadtool options are: ${ARM_UPLOADTOOL_OPTIONS}")
message(STATUS "Current MCU is set to: ${ARM_MCU}")
#message(STATUS "Current H_FUSE is set to: ${ARM_H_FUSE}")
#message(STATUS "Current L_FUSE is set to: ${ARM_L_FUSE}")

##########################################################################
# set build type
##########################################################################
if(NOT CMAKE_BUILD_TYPE)
   set(CMAKE_BUILD_TYPE Release)
endif(NOT CMAKE_BUILD_TYPE)

##########################################################################
# needs to be defined for ARM toolchain
##########################################################################
set(MCU_SPEED ${ARM_MCU})

##########################################################################
# some cmake cross-compile necessities
##########################################################################
if(DEFINED ENV{ARM_FIND_ROOT_PATH})
    set(CMAKE_FIND_ROOT_PATH $ENV{ARM_FIND_ROOT_PATH})
else(DEFINED ENV{ARM_FIND_ROOT_PATH})
    if(EXISTS "/opt/local/arm-none-eabi")
      set(CMAKE_FIND_ROOT_PATH "/opt/local/arm-none-eabi")
    elseif(EXISTS "/usr/arm-none-eabi")
      set(CMAKE_FIND_ROOT_PATH "/usr/arm-none-eabi")
    elseif(EXISTS "/usr/lib/arm-none-eabi")
      set(CMAKE_FIND_ROOT_PATH "/usr/lib/arm-none-eabi")
    else(EXISTS "/opt/local/arm-none-eabi")
      message(FATAL_ERROR "Please set ARM_FIND_ROOT_PATH in your environment.")
    endif(EXISTS "/opt/local/arm-none-eabi")
endif(DEFINED ENV{ARM_FIND_ROOT_PATH})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# not added automatically, since CMAKE_SYSTEM_NAME is "generic"
set(CMAKE_SYSTEM_INCLUDE_PATH "${CMAKE_FIND_ROOT_PATH}/include")
set(CMAKE_SYSTEM_LIBRARY_PATH "${CMAKE_FIND_ROOT_PATH}/lib")

##########################################################################
# status messages for generating
##########################################################################
message(STATUS "Set CMAKE_FIND_ROOT_PATH to ${CMAKE_FIND_ROOT_PATH}")
message(STATUS "Set CMAKE_SYSTEM_INCLUDE_PATH to ${CMAKE_SYSTEM_INCLUDE_PATH}")
message(STATUS "Set CMAKE_SYSTEM_LIBRARY_PATH to ${CMAKE_SYSTEM_LIBRARY_PATH}")

##########################################################################
# set compiler options for build types
##########################################################################
if(CMAKE_BUILD_TYPE MATCHES Release)
   set(CMAKE_C_FLAGS_RELEASE "-Os")
   set(CMAKE_CXX_FLAGS_RELEASE "-Os")
endif(CMAKE_BUILD_TYPE MATCHES Release)

if(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)
   set(CMAKE_C_FLAGS_RELWITHDEBINFO "-Os -save-temps -g -gdwarf-3 -gstrict-dwarf")
   set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-Os -save-temps -g -gdwarf-3 -gstrict-dwarf")
endif(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)

if(CMAKE_BUILD_TYPE MATCHES Debug)
   set(CMAKE_C_FLAGS_DEBUG "-O0 -save-temps -g -gdwarf-3 -gstrict-dwarf")
   set(CMAKE_CXX_FLAGS_DEBUG "-O0 -save-temps -g -gdwarf-3 -gstrict-dwarf")
endif(CMAKE_BUILD_TYPE MATCHES Debug)


##########################################################################
# building library and application in their subdirectories
##########################################################################
add_subdirectory(ports/atmel-samd21)
#add_subdirectory(lib)


set(GCC_ARM_LINKER_SCRIPT ${CMAKE_CURRENT_LIST_DIR}/ports/atmel-samd21/ArduinoCore-samd/variants/mkrzero/linker_scripts/gcc/flash_without_bootloader.ld)
set(GCC_ARM_LINKER_OPTIONS "-L${CMAKE_CURRENT_LIST_DIR}/ports/atmel-samd21/CMSIS/Lib -larm_cortexM0l_math")

#add_definitions(-DF_CPU=48000000L -DARDUINO=10813 -DARDUINO_SAMD_MKRZERO -DARDUINO_ARCH_SAMD -DUSE_ARDUINO_MKR_PIN_LAYOUT -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804f -DUSBCON "-DUSB_MANUFACTURER=\"Arduino LLC\"" "-DUSB_PRODUCT=\"Arduino MKRZero\"")
add_executable(
    Osb
    src/loop.cpp
)

target_link_libraries(Osb arduino) # osb-lib)

add_arm_executable(Osb)


