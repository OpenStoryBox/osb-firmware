project(osb-lib)

set(OSB_LIB_INCLUDES
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/common
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/SdCard
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/FsLib
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/FatLib
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/ExFatLib
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/iostream
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/SpiDriver
    ${CMAKE_CURRENT_LIST_DIR}/ArduinoSound/src
)

# ------------------------------------------------------------------------
# Librairie AUDIO I2S
# ------------------------------------------------------------------------
set(SOUND_SOURCES
    AudioOutI2S.cpp
    AudioOut.cpp
    AudioIn.cpp
    SDWaveFile.cpp
)
list(TRANSFORM SOUND_SOURCES PREPEND ${CMAKE_CURRENT_LIST_DIR}/ArduinoSound/src/)

# ------------------------------------------------------------------------
# Librairie SD
# ------------------------------------------------------------------------
set(SDFAT_SOURCES
    MinimumSerial.cpp
    FreeStack.cpp

    common/FsDateTime.cpp
    common/FmtNumber.cpp
    common/FsStructs.cpp
    common/PrintBasic.cpp
    common/SysCallBareUno.cpp

    SdCard/SdCardInfo.cpp
    SdCard/SdSpiCard.cpp

    FsLib/FsNew.cpp
    FsLib/FsFile.cpp
    FsLib/FsVolume.cpp

    FatLib/FatVolume.cpp
    FatLib/FatPartition.cpp
    FatLib/FatFormatter.cpp
    FatLib/FatFile.cpp
    FatLib/FatFileSFN.cpp
    FatLib/FatFilePrint.cpp
    FatLib/FatFileLFN.cpp
    FatLib/FatDbg.cpp

    ExFatLib/ExFatDbg.cpp
    ExFatLib/ExFatFile.cpp
    ExFatLib/ExFatFilePrint.cpp
    ExFatLib/ExFatFileWrite.cpp
    ExFatLib/ExFatFormatter.cpp
    ExFatLib/ExFatPartition.cpp
    ExFatLib/ExFatVolume.cpp
    ExFatLib/upcase.cpp

    SpiDriver/SdSpiChipSelect.cpp

    iostream/istream.cpp
    iostream/ostream.cpp
    iostream/StdioStream.cpp
    iostream/StreamBaseClass.cpp
)

list(TRANSFORM SDFAT_SOURCES PREPEND ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/)


add_library(osb-lib ${SDFAT_SOURCES} ${SOUND_SOURCES})

target_link_libraries(osb-lib arduino)
target_include_directories(osb-lib PUBLIC ${OSB_LIB_INCLUDES})
