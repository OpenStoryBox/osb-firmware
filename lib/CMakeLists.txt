project(osb-lib)

set(OSB_LIB_INCLUDES
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/common
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/SdCard
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/FsLib
    ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/FatLib
)


# ------------------------------------------------------------------------
# Librairie SD
# ------------------------------------------------------------------------
set(SDFAT_SOURCES
    MinimumSerial.cpp
    FreeStack.cpp
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
)

list(TRANSFORM SDFAT_SOURCES PREPEND ${CMAKE_CURRENT_LIST_DIR}/SdFat/src/)


add_library(osb-lib ${SDFAT_SOURCES})

target_link_libraries(osb-lib arduino)
target_include_directories(osb-lib PUBLIC ${OSB_LIB_INCLUDES})
