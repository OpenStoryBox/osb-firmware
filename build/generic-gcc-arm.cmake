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

##########################################################################
# The toolchain requires some variables set.
#
# ARM_MCU (default: atmega8)
#     the type of ARM the application is built for
# ARM_L_FUSE (NO DEFAULT)
#     the LOW fuse value for the MCU used
# ARM_H_FUSE (NO DEFAULT)
#     the HIGH fuse value for the MCU used
# ARM_UPLOADTOOL (default: armdude)
#     the application used to upload to the MCU
#     NOTE: The toolchain is currently quite specific about
#           the commands used, so it needs tweaking.
# ARM_UPLOADTOOL_PORT (default: usb)
#     the port used for the upload tool, e.g. usb
# ARM_PROGRAMMER (default: armispmkII)
#     the programmer hardware used, e.g. armispmkII
##########################################################################

#INCLUDE(CMakeForceCompiler)

##########################################################################
# options
##########################################################################
option(WITH_MCU "Add the mCU type to the target file name." ON)
SET (CMAKE_C_COMPILER_WORKS 1)
SET (CMAKE_CXX_COMPILER_WORKS 1)

##########################################################################
# executables in use
##########################################################################
#find_program(ARM_CC arm-none-eabi-gcc)
#find_program(ARM_CXX arm-none-eabi-g++)
#find_program(ARM_OBJCOPY arm-none-eabi-objcopy)
#find_program(ARM_SIZE_TOOL arm-none-eabi-size)
#find_program(ARM_OBJDUMP arm-none-eabi-objdump)

##########################################################################
# toolchain starts with defining mandatory variables
##########################################################################
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm-none-eabi)
#set(CMAKE_C_COMPILER ${ARM_CC})
#set(CMAKE_CXX_COMPILER ${ARM_CXX})
# specify the cross compiler
#CMAKE_FORCE_C_COMPILER(${ARM_CC} GNU)
#CMAKE_FORCE_CXX_COMPILER(${ARM_CXX} GNU)

##########################################################################
# some necessary tools and variables for ARM builds, which may not
# defined yet
# - ARM_UPLOADTOOL
# - ARM_UPLOADTOOL_PORT
# - ARM_PROGRAMMER
# - ARM_MCU
# - ARM_SIZE_ARGS
##########################################################################

# default upload tool
if(NOT ARM_UPLOADTOOL)
   set(
      ARM_UPLOADTOOL openocd
      CACHE STRING "Set default upload tool: openocd"
   )
   find_program(ARM_UPLOADTOOL openocd)
endif(NOT ARM_UPLOADTOOL)

# default upload tool port
if(NOT ARM_UPLOADTOOL_PORT)
   set(
      ARM_UPLOADTOOL_PORT usb
      CACHE STRING "Set default upload tool port: usb"
   )
endif(NOT ARM_UPLOADTOOL_PORT)

# default programmer/interface (hardware)
if(NOT ARM_PROGRAMMER)
   set(
      ARM_PROGRAMMER cmsis-dap
      CACHE STRING "Set default programmer hardware model: cmsis-dap"
   )
endif(NOT ARM_PROGRAMMER)

# default MCU (chip)
if(NOT ARM_MCU)
   set(
      ARM_MCU cortex-m0plus
      CACHE STRING "Set default MCU: cortex-m0plus (see 'arm-none-eabi-gcc --target-help' for valid values)"
   )
endif(NOT ARM_MCU)

if(NOT ARM_ARCH)
   set(
      ARM_ARCH armv6-m
      CACHE STRING "Set default MCU: cortex-m0plus (see 'arm-none-eabi-gcc --target-help' for valid values)"
   )
endif(NOT ARM_ARCH)


#default arm-size args
if(NOT ARM_SIZE_ARGS)
   if(APPLE)
      set(ARM_SIZE_ARGS -B)
   else(APPLE)
       set(ARM_SIZE_ARGS -B)
       #      set(ARM_SIZE_ARGS -B;--mcu=${ARM_MCU})
   endif(APPLE)
endif(NOT ARM_SIZE_ARGS)

##########################################################################
# check build types:
# - Debug
# - Release
# - RelWithDebInfo
#
# Release is chosen, because of some optimized functions in the
# ARM toolchain, e.g. _delay_ms().
##########################################################################
if(NOT ((CMAKE_BUILD_TYPE MATCHES Release) OR
        (CMAKE_BUILD_TYPE MATCHES RelWithDebInfo) OR
        (CMAKE_BUILD_TYPE MATCHES Debug) OR
        (CMAKE_BUILD_TYPE MATCHES MinSizeRel)))
   set(
      CMAKE_BUILD_TYPE Release
      CACHE STRING "Choose cmake build type: Debug Release RelWithDebInfo MinSizeRel"
      FORCE
   )
endif(NOT ((CMAKE_BUILD_TYPE MATCHES Release) OR
           (CMAKE_BUILD_TYPE MATCHES RelWithDebInfo) OR
           (CMAKE_BUILD_TYPE MATCHES Debug) OR
           (CMAKE_BUILD_TYPE MATCHES MinSizeRel)))

##########################################################################

##########################################################################
# target file name add-on
##########################################################################
if(WITH_MCU)
   set(MCU_TYPE_FOR_FILENAME "-${ARM_MCU}")
else(WITH_MCU)
   set(MCU_TYPE_FOR_FILENAME "")
endif(WITH_MCU)

set(ARDUINO_FLAGS "-DF_CPU=48000000L -DARDUINO=10813 -DARDUINO_SAMD_MKRZERO -DARDUINO_ARCH_SAMD -DUSE_ARDUINO_MKR_PIN_LAYOUT -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804f")

set(COMMON_FLAGS "${ARDUINO_FLAGS} -mcpu=${ARM_MCU} -mthumb -Wall -Wextra -Wno-expansion-to-defined -ffunction-sections -fdata-sections --param max-inline-insns-single=500 -MMD")
set(CMAKE_CXX_FLAGS "${COMMON_FLAGS} -std=gnu++11  -fno-threadsafe-statics -fno-rtti -fno-exceptions -D__SAMD21G18A__")
set(CMAKE_C_FLAGS "${COMMON_FLAGS}  -std=gnu11 -D__SAMD21G18A__")

##########################################################################
# add_arm_executable
# - IN_VAR: EXECUTABLE_NAME
#
# Creates targets and dependencies for ARM toolchain, building an
# executable. Calls add_executable with ELF file as target name, so
# any link dependencies need to be using that target, e.g. for
# target_link_libraries(<EXECUTABLE_NAME>-${ARM_MCU}.elf ...).
##########################################################################
function(add_arm_executable EXECUTABLE_NAME)

   # set file names
   set(elf_file ${EXECUTABLE_NAME}${MCU_TYPE_FOR_FILENAME}.elf)
   set(bin_file ${EXECUTABLE_NAME}${MCU_TYPE_FOR_FILENAME}.bin)
   set(hex_file ${EXECUTABLE_NAME}${MCU_TYPE_FOR_FILENAME}.hex)
   set(map_file ${EXECUTABLE_NAME}${MCU_TYPE_FOR_FILENAME}.map)
   set(eeprom_image ${EXECUTABLE_NAME}${MCU_TYPE_FOR_FILENAME}-eeprom.hex)

   # elf file
#   add_executable(${elf_file} EXCLUDE_FROM_ALL ${ARGN})

#    target_link_libraries(${EXECUTABLE_NAME} ${ARGN})

# /home/anthony/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -mcpu=cortex-m0plus -mthumb -c -g -Os -Wall -Wextra -Wno-expansion-to-defined -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -MMD -DF_CPU=48000000L -DARDUINO=10813 -DARDUINO_SAMD_MKRZERO -DARDUINO_ARCH_SAMD -DUSE_ARDUINO_MKR_PIN_LAYOUT -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804f -DUSBCON "-DUSB_MANUFACTURER=\"Arduino LLC\"" "-DUSB_PRODUCT=\"Arduino MKRZero\"" -I/home/anthony/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/ -I/home/anthony/.arduino15/packages/arduino/tools/CMSIS-Atmel/1.2.0/CMSIS/Device/ATMEL/ -I/home/anthony/.arduino15/packages/arduino/hardware/samd/1.8.9/cores/arduino -I/home/anthony/.arduino15/packages/arduino/hardware/samd/1.8.9/variants/mkrzero /home/anthony/.arduino15/packages/arduino/hardware/samd/1.8.9/cores/arduino/Reset.cpp -o /tmp/arduino_build_788999/core/Reset.cpp.o


# LINK : /home/anthony/.arduino15/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/bin/arm-none-eabi-g++ -L/tmp/arduino_build_293217 -Os -Wl,--gc-sections -save-temps -T/home/anthony/.arduino15/packages/arduino/hardware/samd/1.8.9/variants/mkrzero/linker_scripts/gcc/flash_with_bootloader.ld -Wl,-Map,/tmp/arduino_build_293217/Blink.ino.map --specs=nano.specs --specs=nosys.specs -mcpu=cortex-m0plus -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -o /tmp/arduino_build_293217/Blink.ino.elf /tmp/arduino_build_293217/sketch/Blink.ino.cpp.o /tmp/arduino_build_293217/core/variant.cpp.o -Wl,--start-group -L/home/anthony/.arduino15/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Lib/GCC/ -larm_cortexM0l_math -lm /tmp/arduino_build_293217/core/core.a -Wl,--end-group

    set_target_properties(
        ${EXECUTABLE_NAME}
        PROPERTIES
            LINK_FLAGS "-march=${ARM_ARCH} -mthumb -T${GCC_ARM_LINKER_SCRIPT} -Wall -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -save-temps -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols --specs=nano.specs --specs=nosys.specs -Wl,-Map,\"${map_file}\"  ${GCC_ARM_LINKER_OPTIONS} -lm -lgcc"
            OUTPUT_NAME "${elf_file}"
    )

   # bin file
   add_custom_command(
      OUTPUT ${bin_file}
      COMMAND
         ${ARM_OBJCOPY} -O binary ${elf_file} ${bin_file}
      COMMAND
         ${ARM_SIZE_TOOL} ${ARM_SIZE_ARGS} ${elf_file}
      DEPENDS ${elf_file}
   )

   # hex file
   add_custom_command(
      OUTPUT ${hex_file}
      COMMAND
         ${ARM_OBJCOPY} -O ihex ${elf_file} ${hex_file}
      COMMAND
         ${ARM_SIZE_TOOL} ${ARM_SIZE_ARGS} ${elf_file}
      DEPENDS ${elf_file}
   )

   # eeprom
   add_custom_command(
      OUTPUT ${eeprom_image}
      COMMAND
         ${ARM_OBJCOPY} -j .eeprom --set-section-flags=.eeprom=alloc,load
            --change-section-lma .eeprom=0 --no-change-warnings
            -O ihex ${elf_file} ${eeprom_image}
      DEPENDS ${elf_file}
   )

   # clean
   get_directory_property(clean_files ADDITIONAL_MAKE_CLEAN_FILES)
   set_directory_properties(
      PROPERTIES
         ADDITIONAL_MAKE_CLEAN_FILES "${map_file}"
   )

   # disassemble
   add_custom_target(
      disassemble_${EXECUTABLE_NAME}
      ${ARM_OBJDUMP} -h -S ${elf_file} > ${EXECUTABLE_NAME}.lst
      DEPENDS ${elf_file}
   )

endfunction(add_arm_executable)

##########################################################################
# add_arm_library
# - IN_VAR: LIBRARY_NAME
#
# Calls add_library with an optionally concatenated name
# <LIBRARY_NAME>${MCU_TYPE_FOR_FILENAME}.
# This needs to be used for linking against the library, e.g. calling
# target_link_libraries(...).
##########################################################################
function(add_arm_library LIBRARY_NAME)
   if(NOT ARGN)
      message(FATAL_ERROR "No source files given for ${LIBRARY_NAME}.")
   endif(NOT ARGN)

   set(lib_file ${LIBRARY_NAME}${MCU_TYPE_FOR_FILENAME})

   add_library(${lib_file} STATIC ${ARGN})

   set_target_properties(
      ${lib_file}
      PROPERTIES
         COMPILE_FLAGS "-mcpu=${ARM_MCU} -mthumb -Wall -c -ffunction-sections -fdata-sections -nostartfiles --param max-inline-insns-single=500 -Os -DDEBUG=0 -DBOARD=USER_BOARD"
         OUTPUT_NAME "${lib_file}"
   )

   if(NOT TARGET ${LIBRARY_NAME})
      add_custom_target(
         ${LIBRARY_NAME}
         ALL
         DEPENDS ${lib_file}
      )

      set_target_properties(
         ${LIBRARY_NAME}
         PROPERTIES
            OUTPUT_NAME "${lib_file}"
      )

   endif(NOT TARGET ${LIBRARY_NAME})

endfunction(add_arm_library)

##########################################################################
# arm_target_link_libraries
# - IN_VAR: EXECUTABLE_TARGET
# - ARGN  : targets and files to link to
#
# Calls target_link_libraries with ARM target names (concatenation,
# extensions and so on.
##########################################################################
function(arm_target_link_libraries EXECUTABLE_TARGET)
   if(NOT ARGN)
      message(FATAL_ERROR "Nothing to link to ${EXECUTABLE_TARGET}.")
   endif(NOT ARGN)

   get_target_property(TARGET_LIST ${EXECUTABLE_TARGET} OUTPUT_NAME)

   foreach(TGT ${ARGN})
      if(TARGET ${TGT})
         get_target_property(ARG_NAME ${TGT} OUTPUT_NAME)
         list(APPEND TARGET_LIST ${ARG_NAME})
      else(TARGET ${TGT})
         list(APPEND NON_TARGET_LIST ${TGT})
      endif(TARGET ${TGT})
   endforeach(TGT ${ARGN})

   target_link_libraries(${TARGET_LIST} ${NON_TARGET_LIST})
endfunction(arm_target_link_libraries EXECUTABLE_TARGET)
