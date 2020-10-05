#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=hal/src/hal_atomic.c hal/src/hal_delay.c hal/src/hal_evsys.c hal/src/hal_flash.c hal/src/hal_gpio.c hal/src/hal_i2c_m_sync.c hal/src/hal_i2s_controller_sync.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_usb_device.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c usb/usb_protocol.c main.c driver_init.c examples/driver_examples.c hal/src/hal_adc_sync.c hal/src/hal_ext_irq.c hal/src/hal_pwm.c hal/src/hal_spi_m_sync.c hal/src/hal_timer.c hal/src/hal_usart_sync.c hpl/adc/hpl_adc.c hpl/core/hpl_core_m0plus_base.c hpl/core/hpl_init.c hpl/dmac/hpl_dmac.c hpl/eic/hpl_eic.c hpl/evsys/hpl_evsys.c hpl/gclk/hpl_gclk.c hpl/i2s/hpl_i2s.c hpl/nvmctrl/hpl_nvmctrl.c hpl/pm/hpl_pm.c hpl/rtc/hpl_rtc.c hpl/sercom/hpl_sercom.c hpl/sysctrl/hpl_sysctrl.c hpl/systick/hpl_systick.c hpl/tc/hpl_tc.c hpl/usb/hpl_usb.c usb_start.c atmel_start.c samd21a/gcc/system_samd21.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_evsys.o ${OBJECTDIR}/hal/src/hal_flash.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_usb_device.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/usb/usb_protocol.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/hal/src/hal_adc_sync.o ${OBJECTDIR}/hal/src/hal_ext_irq.o ${OBJECTDIR}/hal/src/hal_pwm.o ${OBJECTDIR}/hal/src/hal_spi_m_sync.o ${OBJECTDIR}/hal/src/hal_timer.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hpl/adc/hpl_adc.o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/eic/hpl_eic.o ${OBJECTDIR}/hpl/evsys/hpl_evsys.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/i2s/hpl_i2s.o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/rtc/hpl_rtc.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o ${OBJECTDIR}/hpl/systick/hpl_systick.o ${OBJECTDIR}/hpl/tc/hpl_tc.o ${OBJECTDIR}/hpl/usb/hpl_usb.o ${OBJECTDIR}/usb_start.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/samd21a/gcc/system_samd21.o
POSSIBLE_DEPFILES=${OBJECTDIR}/hal/src/hal_atomic.o.d ${OBJECTDIR}/hal/src/hal_delay.o.d ${OBJECTDIR}/hal/src/hal_evsys.o.d ${OBJECTDIR}/hal/src/hal_flash.o.d ${OBJECTDIR}/hal/src/hal_gpio.o.d ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d ${OBJECTDIR}/hal/src/hal_init.o.d ${OBJECTDIR}/hal/src/hal_io.o.d ${OBJECTDIR}/hal/src/hal_sleep.o.d ${OBJECTDIR}/hal/src/hal_usb_device.o.d ${OBJECTDIR}/hal/utils/src/utils_assert.o.d ${OBJECTDIR}/hal/utils/src/utils_event.o.d ${OBJECTDIR}/hal/utils/src/utils_list.o.d ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d ${OBJECTDIR}/usb/usb_protocol.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/driver_init.o.d ${OBJECTDIR}/examples/driver_examples.o.d ${OBJECTDIR}/hal/src/hal_adc_sync.o.d ${OBJECTDIR}/hal/src/hal_ext_irq.o.d ${OBJECTDIR}/hal/src/hal_pwm.o.d ${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d ${OBJECTDIR}/hal/src/hal_timer.o.d ${OBJECTDIR}/hal/src/hal_usart_sync.o.d ${OBJECTDIR}/hpl/adc/hpl_adc.o.d ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d ${OBJECTDIR}/hpl/core/hpl_init.o.d ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d ${OBJECTDIR}/hpl/eic/hpl_eic.o.d ${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d ${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d ${OBJECTDIR}/hpl/pm/hpl_pm.o.d ${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d ${OBJECTDIR}/hpl/systick/hpl_systick.o.d ${OBJECTDIR}/hpl/tc/hpl_tc.o.d ${OBJECTDIR}/hpl/usb/hpl_usb.o.d ${OBJECTDIR}/usb_start.o.d ${OBJECTDIR}/atmel_start.o.d ${OBJECTDIR}/samd21a/gcc/system_samd21.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_evsys.o ${OBJECTDIR}/hal/src/hal_flash.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_usb_device.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/usb/usb_protocol.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/hal/src/hal_adc_sync.o ${OBJECTDIR}/hal/src/hal_ext_irq.o ${OBJECTDIR}/hal/src/hal_pwm.o ${OBJECTDIR}/hal/src/hal_spi_m_sync.o ${OBJECTDIR}/hal/src/hal_timer.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hpl/adc/hpl_adc.o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/eic/hpl_eic.o ${OBJECTDIR}/hpl/evsys/hpl_evsys.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/i2s/hpl_i2s.o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/rtc/hpl_rtc.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o ${OBJECTDIR}/hpl/systick/hpl_systick.o ${OBJECTDIR}/hpl/tc/hpl_tc.o ${OBJECTDIR}/hpl/usb/hpl_usb.o ${OBJECTDIR}/usb_start.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/samd21a/gcc/system_samd21.o

# Source Files
SOURCEFILES=hal/src/hal_atomic.c hal/src/hal_delay.c hal/src/hal_evsys.c hal/src/hal_flash.c hal/src/hal_gpio.c hal/src/hal_i2c_m_sync.c hal/src/hal_i2s_controller_sync.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_usb_device.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c usb/usb_protocol.c main.c driver_init.c examples/driver_examples.c hal/src/hal_adc_sync.c hal/src/hal_ext_irq.c hal/src/hal_pwm.c hal/src/hal_spi_m_sync.c hal/src/hal_timer.c hal/src/hal_usart_sync.c hpl/adc/hpl_adc.c hpl/core/hpl_core_m0plus_base.c hpl/core/hpl_init.c hpl/dmac/hpl_dmac.c hpl/eic/hpl_eic.c hpl/evsys/hpl_evsys.c hpl/gclk/hpl_gclk.c hpl/i2s/hpl_i2s.c hpl/nvmctrl/hpl_nvmctrl.c hpl/pm/hpl_pm.c hpl/rtc/hpl_rtc.c hpl/sercom/hpl_sercom.c hpl/sysctrl/hpl_sysctrl.c hpl/systick/hpl_systick.c hpl/tc/hpl_tc.c hpl/usb/hpl_usb.c usb_start.c atmel_start.c samd21a/gcc/system_samd21.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Default.mk dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G18A
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_atomic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_evsys.o: hal/src/hal_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_evsys.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_evsys.o.d" -o ${OBJECTDIR}/hal/src/hal_evsys.o hal/src/hal_evsys.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_i2c_m_sync.o: hal/src/hal_i2c_m_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o hal/src/hal_i2c_m_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o: hal/src/hal_i2s_controller_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o hal/src/hal_i2s_controller_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_usb_device.o: hal/src/hal_usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usb_device.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_usb_device.o.d" -o ${OBJECTDIR}/hal/src/hal_usb_device.o hal/src/hal_usb_device.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/usb/usb_protocol.o: usb/usb_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb" 
	@${RM} ${OBJECTDIR}/usb/usb_protocol.o.d 
	@${RM} ${OBJECTDIR}/usb/usb_protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/usb/usb_protocol.o.d" -o ${OBJECTDIR}/usb/usb_protocol.o usb/usb_protocol.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/usb/usb_protocol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/driver_init.o: driver_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/driver_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/examples/driver_examples.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_adc_sync.o: hal/src/hal_adc_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_adc_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_adc_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_adc_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_adc_sync.o hal/src/hal_adc_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_adc_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_ext_irq.o: hal/src/hal_ext_irq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_ext_irq.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_ext_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_ext_irq.o.d" -o ${OBJECTDIR}/hal/src/hal_ext_irq.o hal/src/hal_ext_irq.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_ext_irq.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_pwm.o: hal/src/hal_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_pwm.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_pwm.o.d" -o ${OBJECTDIR}/hal/src/hal_pwm.o hal/src/hal_pwm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_spi_m_sync.o: hal/src/hal_spi_m_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_spi_m_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_spi_m_sync.o hal/src/hal_spi_m_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/adc/hpl_adc.o: hpl/adc/hpl_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/adc" 
	@${RM} ${OBJECTDIR}/hpl/adc/hpl_adc.o.d 
	@${RM} ${OBJECTDIR}/hpl/adc/hpl_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/adc/hpl_adc.o.d" -o ${OBJECTDIR}/hpl/adc/hpl_adc.o hpl/adc/hpl_adc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/adc/hpl_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/eic/hpl_eic.o: hpl/eic/hpl_eic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/eic" 
	@${RM} ${OBJECTDIR}/hpl/eic/hpl_eic.o.d 
	@${RM} ${OBJECTDIR}/hpl/eic/hpl_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/eic/hpl_eic.o.d" -o ${OBJECTDIR}/hpl/eic/hpl_eic.o hpl/eic/hpl_eic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/eic/hpl_eic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/evsys/hpl_evsys.o: hpl/evsys/hpl_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/evsys" 
	@${RM} ${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d 
	@${RM} ${OBJECTDIR}/hpl/evsys/hpl_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d" -o ${OBJECTDIR}/hpl/evsys/hpl_evsys.o hpl/evsys/hpl_evsys.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/i2s/hpl_i2s.o: hpl/i2s/hpl_i2s.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/i2s" 
	@${RM} ${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d 
	@${RM} ${OBJECTDIR}/hpl/i2s/hpl_i2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d" -o ${OBJECTDIR}/hpl/i2s/hpl_i2s.o hpl/i2s/hpl_i2s.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/rtc/hpl_rtc.o: hpl/rtc/hpl_rtc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/rtc" 
	@${RM} ${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d 
	@${RM} ${OBJECTDIR}/hpl/rtc/hpl_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d" -o ${OBJECTDIR}/hpl/rtc/hpl_rtc.o hpl/rtc/hpl_rtc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o: hpl/sysctrl/hpl_sysctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/sysctrl" 
	@${RM} ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d" -o ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o hpl/sysctrl/hpl_sysctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/systick/hpl_systick.o: hpl/systick/hpl_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/systick" 
	@${RM} ${OBJECTDIR}/hpl/systick/hpl_systick.o.d 
	@${RM} ${OBJECTDIR}/hpl/systick/hpl_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/systick/hpl_systick.o.d" -o ${OBJECTDIR}/hpl/systick/hpl_systick.o hpl/systick/hpl_systick.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/systick/hpl_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/usb/hpl_usb.o: hpl/usb/hpl_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/usb" 
	@${RM} ${OBJECTDIR}/hpl/usb/hpl_usb.o.d 
	@${RM} ${OBJECTDIR}/hpl/usb/hpl_usb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/usb/hpl_usb.o.d" -o ${OBJECTDIR}/hpl/usb/hpl_usb.o hpl/usb/hpl_usb.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/usb/hpl_usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/usb_start.o: usb_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_start.o.d 
	@${RM} ${OBJECTDIR}/usb_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/usb_start.o.d" -o ${OBJECTDIR}/usb_start.o usb_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/usb_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/atmel_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/samd21a/gcc/system_samd21.o: samd21a/gcc/system_samd21.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/samd21a/gcc" 
	@${RM} ${OBJECTDIR}/samd21a/gcc/system_samd21.o.d 
	@${RM} ${OBJECTDIR}/samd21a/gcc/system_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/samd21a/gcc/system_samd21.o.d" -o ${OBJECTDIR}/samd21a/gcc/system_samd21.o samd21a/gcc/system_samd21.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/samd21a/gcc/system_samd21.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_atomic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_evsys.o: hal/src/hal_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_evsys.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_evsys.o.d" -o ${OBJECTDIR}/hal/src/hal_evsys.o hal/src/hal_evsys.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_i2c_m_sync.o: hal/src/hal_i2c_m_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_i2c_m_sync.o hal/src/hal_i2c_m_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_i2c_m_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o: hal/src/hal_i2s_controller_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o hal/src/hal_i2s_controller_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_i2s_controller_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_sleep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_usb_device.o: hal/src/hal_usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usb_device.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_usb_device.o.d" -o ${OBJECTDIR}/hal/src/hal_usb_device.o hal/src/hal_usb_device.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/usb/usb_protocol.o: usb/usb_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usb" 
	@${RM} ${OBJECTDIR}/usb/usb_protocol.o.d 
	@${RM} ${OBJECTDIR}/usb/usb_protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/usb/usb_protocol.o.d" -o ${OBJECTDIR}/usb/usb_protocol.o usb/usb_protocol.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/usb/usb_protocol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/driver_init.o: driver_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/driver_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/examples/driver_examples.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_adc_sync.o: hal/src/hal_adc_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_adc_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_adc_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_adc_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_adc_sync.o hal/src/hal_adc_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_adc_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_ext_irq.o: hal/src/hal_ext_irq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_ext_irq.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_ext_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_ext_irq.o.d" -o ${OBJECTDIR}/hal/src/hal_ext_irq.o hal/src/hal_ext_irq.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_ext_irq.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_pwm.o: hal/src/hal_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_pwm.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_pwm.o.d" -o ${OBJECTDIR}/hal/src/hal_pwm.o hal/src/hal_pwm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_spi_m_sync.o: hal/src/hal_spi_m_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_spi_m_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_spi_m_sync.o hal/src/hal_spi_m_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_spi_m_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/adc/hpl_adc.o: hpl/adc/hpl_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/adc" 
	@${RM} ${OBJECTDIR}/hpl/adc/hpl_adc.o.d 
	@${RM} ${OBJECTDIR}/hpl/adc/hpl_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/adc/hpl_adc.o.d" -o ${OBJECTDIR}/hpl/adc/hpl_adc.o hpl/adc/hpl_adc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/adc/hpl_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/core/hpl_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/eic/hpl_eic.o: hpl/eic/hpl_eic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/eic" 
	@${RM} ${OBJECTDIR}/hpl/eic/hpl_eic.o.d 
	@${RM} ${OBJECTDIR}/hpl/eic/hpl_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/eic/hpl_eic.o.d" -o ${OBJECTDIR}/hpl/eic/hpl_eic.o hpl/eic/hpl_eic.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/eic/hpl_eic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/evsys/hpl_evsys.o: hpl/evsys/hpl_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/evsys" 
	@${RM} ${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d 
	@${RM} ${OBJECTDIR}/hpl/evsys/hpl_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d" -o ${OBJECTDIR}/hpl/evsys/hpl_evsys.o hpl/evsys/hpl_evsys.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/evsys/hpl_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/i2s/hpl_i2s.o: hpl/i2s/hpl_i2s.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/i2s" 
	@${RM} ${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d 
	@${RM} ${OBJECTDIR}/hpl/i2s/hpl_i2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d" -o ${OBJECTDIR}/hpl/i2s/hpl_i2s.o hpl/i2s/hpl_i2s.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/i2s/hpl_i2s.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/rtc/hpl_rtc.o: hpl/rtc/hpl_rtc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/rtc" 
	@${RM} ${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d 
	@${RM} ${OBJECTDIR}/hpl/rtc/hpl_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d" -o ${OBJECTDIR}/hpl/rtc/hpl_rtc.o hpl/rtc/hpl_rtc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/rtc/hpl_rtc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o: hpl/sysctrl/hpl_sysctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/sysctrl" 
	@${RM} ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d" -o ${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o hpl/sysctrl/hpl_sysctrl.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/sysctrl/hpl_sysctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/systick/hpl_systick.o: hpl/systick/hpl_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/systick" 
	@${RM} ${OBJECTDIR}/hpl/systick/hpl_systick.o.d 
	@${RM} ${OBJECTDIR}/hpl/systick/hpl_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/systick/hpl_systick.o.d" -o ${OBJECTDIR}/hpl/systick/hpl_systick.o hpl/systick/hpl_systick.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/systick/hpl_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hpl/usb/hpl_usb.o: hpl/usb/hpl_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/hpl/usb" 
	@${RM} ${OBJECTDIR}/hpl/usb/hpl_usb.o.d 
	@${RM} ${OBJECTDIR}/hpl/usb/hpl_usb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/hpl/usb/hpl_usb.o.d" -o ${OBJECTDIR}/hpl/usb/hpl_usb.o hpl/usb/hpl_usb.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/hpl/usb/hpl_usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/usb_start.o: usb_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_start.o.d 
	@${RM} ${OBJECTDIR}/usb_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/usb_start.o.d" -o ${OBJECTDIR}/usb_start.o usb_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/usb_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/atmel_start.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/samd21a/gcc/system_samd21.o: samd21a/gcc/system_samd21.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/samd21a/gcc" 
	@${RM} ${OBJECTDIR}/samd21a/gcc/system_samd21.o.d 
	@${RM} ${OBJECTDIR}/samd21a/gcc/system_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"config" -I"examples" -I"hal/include" -I"hal/utils/include" -I"hpl/adc" -I"hpl/core" -I"hpl/dmac" -I"hpl/eic" -I"hpl/evsys" -I"hpl/gclk" -I"hpl/i2s" -I"hpl/nvmctrl" -I"hpl/pm" -I"hpl/port" -I"hpl/rtc" -I"hpl/sercom" -I"hpl/sysctrl" -I"hpl/systick" -I"hpl/tc" -I"hpl/usb" -I"hri" -I"usb" -I"usb/class/msc" -I"CMSIS/Core/Include" -I"samd21a/include" -I"./." -MMD -MF "${OBJECTDIR}/samd21a/gcc/system_samd21.o.d" -o ${OBJECTDIR}/samd21a/gcc/system_samd21.o samd21a/gcc/system_samd21.c    -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/samd21a/gcc/system_samd21.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,-L"samd21a/gcc/gcc",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"samd21a/gcc/gcc",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/osb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Default
	${RM} -r dist/Default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
