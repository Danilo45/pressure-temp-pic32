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
ifeq "$(wildcard nbproject/Makefile-local-projekat2.mk)" "nbproject/Makefile-local-projekat2.mk"
include nbproject/Makefile-local-projekat2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=projekat2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/projekat2/peripheral/clk/plib_clk.c ../src/config/projekat2/peripheral/coretimer/plib_coretimer.c ../src/config/projekat2/peripheral/evic/plib_evic.c ../src/config/projekat2/peripheral/gpio/plib_gpio.c ../src/config/projekat2/peripheral/i2c/master/plib_i2c2_master.c ../src/config/projekat2/peripheral/uart/plib_uart1.c ../src/config/projekat2/peripheral/uart/plib_uart2.c ../src/config/projekat2/stdio/xc32_monitor.c ../src/config/projekat2/initialization.c ../src/config/projekat2/interrupts.c ../src/config/projekat2/exceptions.c ../src/main.c ../src/ESP8266.c ../src/MS8607.c ../src/ili9341.c ../src/fonts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1910441227/plib_clk.o ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o ${OBJECTDIR}/_ext/905933336/plib_evic.o ${OBJECTDIR}/_ext/905987164/plib_gpio.o ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o ${OBJECTDIR}/_ext/906390107/plib_uart1.o ${OBJECTDIR}/_ext/906390107/plib_uart2.o ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o ${OBJECTDIR}/_ext/1128930793/initialization.o ${OBJECTDIR}/_ext/1128930793/interrupts.o ${OBJECTDIR}/_ext/1128930793/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ESP8266.o ${OBJECTDIR}/_ext/1360937237/MS8607.o ${OBJECTDIR}/_ext/1360937237/ili9341.o ${OBJECTDIR}/_ext/1360937237/fonts.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1910441227/plib_clk.o.d ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o.d ${OBJECTDIR}/_ext/905933336/plib_evic.o.d ${OBJECTDIR}/_ext/905987164/plib_gpio.o.d ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/906390107/plib_uart1.o.d ${OBJECTDIR}/_ext/906390107/plib_uart2.o.d ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o.d ${OBJECTDIR}/_ext/1128930793/initialization.o.d ${OBJECTDIR}/_ext/1128930793/interrupts.o.d ${OBJECTDIR}/_ext/1128930793/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ESP8266.o.d ${OBJECTDIR}/_ext/1360937237/MS8607.o.d ${OBJECTDIR}/_ext/1360937237/ili9341.o.d ${OBJECTDIR}/_ext/1360937237/fonts.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1910441227/plib_clk.o ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o ${OBJECTDIR}/_ext/905933336/plib_evic.o ${OBJECTDIR}/_ext/905987164/plib_gpio.o ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o ${OBJECTDIR}/_ext/906390107/plib_uart1.o ${OBJECTDIR}/_ext/906390107/plib_uart2.o ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o ${OBJECTDIR}/_ext/1128930793/initialization.o ${OBJECTDIR}/_ext/1128930793/interrupts.o ${OBJECTDIR}/_ext/1128930793/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ESP8266.o ${OBJECTDIR}/_ext/1360937237/MS8607.o ${OBJECTDIR}/_ext/1360937237/ili9341.o ${OBJECTDIR}/_ext/1360937237/fonts.o

# Source Files
SOURCEFILES=../src/config/projekat2/peripheral/clk/plib_clk.c ../src/config/projekat2/peripheral/coretimer/plib_coretimer.c ../src/config/projekat2/peripheral/evic/plib_evic.c ../src/config/projekat2/peripheral/gpio/plib_gpio.c ../src/config/projekat2/peripheral/i2c/master/plib_i2c2_master.c ../src/config/projekat2/peripheral/uart/plib_uart1.c ../src/config/projekat2/peripheral/uart/plib_uart2.c ../src/config/projekat2/stdio/xc32_monitor.c ../src/config/projekat2/initialization.c ../src/config/projekat2/interrupts.c ../src/config/projekat2/exceptions.c ../src/main.c ../src/ESP8266.c ../src/MS8607.c ../src/ili9341.c ../src/fonts.c



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
	${MAKE}  -f nbproject/Makefile-projekat2.mk dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFH144
MP_LINKER_FILE_OPTION=,--script="..\src\config\projekat2\p32MZ2048EFH144.ld"
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
${OBJECTDIR}/_ext/1910441227/plib_clk.o: ../src/config/projekat2/peripheral/clk/plib_clk.c  .generated_files/flags/projekat2/26c6cf0b4ab815198a611c4623b8480713c17174 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1910441227" 
	@${RM} ${OBJECTDIR}/_ext/1910441227/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1910441227/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1910441227/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1910441227/plib_clk.o ../src/config/projekat2/peripheral/clk/plib_clk.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1227936409/plib_coretimer.o: ../src/config/projekat2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/projekat2/3c502fedf51b06c0e2d53311b33d2e350403ed88 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1227936409" 
	@${RM} ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1227936409/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o ../src/config/projekat2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905933336/plib_evic.o: ../src/config/projekat2/peripheral/evic/plib_evic.c  .generated_files/flags/projekat2/7456be0c32702082b0f7ecf935d0919b01b3fd91 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/905933336" 
	@${RM} ${OBJECTDIR}/_ext/905933336/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/905933336/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905933336/plib_evic.o.d" -o ${OBJECTDIR}/_ext/905933336/plib_evic.o ../src/config/projekat2/peripheral/evic/plib_evic.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905987164/plib_gpio.o: ../src/config/projekat2/peripheral/gpio/plib_gpio.c  .generated_files/flags/projekat2/b6a4efbf6d393ab420f5e282ea475b1409198a12 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/905987164" 
	@${RM} ${OBJECTDIR}/_ext/905987164/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/905987164/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905987164/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/905987164/plib_gpio.o ../src/config/projekat2/peripheral/gpio/plib_gpio.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o: ../src/config/projekat2/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/projekat2/e66e283116c8dee77db3391368e24c5e18970d75 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/147727292" 
	@${RM} ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o ../src/config/projekat2/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/906390107/plib_uart1.o: ../src/config/projekat2/peripheral/uart/plib_uart1.c  .generated_files/flags/projekat2/3f517c4ab7b729a49f9be7677bce1617652e6b00 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/906390107" 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/906390107/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/906390107/plib_uart1.o ../src/config/projekat2/peripheral/uart/plib_uart1.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/906390107/plib_uart2.o: ../src/config/projekat2/peripheral/uart/plib_uart2.c  .generated_files/flags/projekat2/e4eee7db1286e880175037a62199489f7cad26c .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/906390107" 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/906390107/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/906390107/plib_uart2.o ../src/config/projekat2/peripheral/uart/plib_uart2.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261773085/xc32_monitor.o: ../src/config/projekat2/stdio/xc32_monitor.c  .generated_files/flags/projekat2/18bb460a9331640cfd598977ce3f9874ac62eda5 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1261773085" 
	@${RM} ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261773085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o ../src/config/projekat2/stdio/xc32_monitor.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1128930793/initialization.o: ../src/config/projekat2/initialization.c  .generated_files/flags/projekat2/bd38270d83ff45b7693fa922fb8bd72782f264af .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1128930793" 
	@${RM} ${OBJECTDIR}/_ext/1128930793/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128930793/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1128930793/initialization.o.d" -o ${OBJECTDIR}/_ext/1128930793/initialization.o ../src/config/projekat2/initialization.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1128930793/interrupts.o: ../src/config/projekat2/interrupts.c  .generated_files/flags/projekat2/4b93d894c1af8ba51581b8f69bfcbf5b28592eb2 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1128930793" 
	@${RM} ${OBJECTDIR}/_ext/1128930793/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128930793/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1128930793/interrupts.o.d" -o ${OBJECTDIR}/_ext/1128930793/interrupts.o ../src/config/projekat2/interrupts.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1128930793/exceptions.o: ../src/config/projekat2/exceptions.c  .generated_files/flags/projekat2/15e9fd4cb27e7c7b762932e12beb86d6c89d4a04 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1128930793" 
	@${RM} ${OBJECTDIR}/_ext/1128930793/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128930793/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1128930793/exceptions.o.d" -o ${OBJECTDIR}/_ext/1128930793/exceptions.o ../src/config/projekat2/exceptions.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/projekat2/3a88206898c70a2be6c39bb00c86b29e4aab4e90 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ESP8266.o: ../src/ESP8266.c  .generated_files/flags/projekat2/f050bcf29ad1c7022a0eb86a6821e643bee6f178 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ESP8266.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ESP8266.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ESP8266.o.d" -o ${OBJECTDIR}/_ext/1360937237/ESP8266.o ../src/ESP8266.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/MS8607.o: ../src/MS8607.c  .generated_files/flags/projekat2/3c163536b83aed785355b8f21493fb836d9b8e19 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MS8607.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MS8607.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/MS8607.o.d" -o ${OBJECTDIR}/_ext/1360937237/MS8607.o ../src/MS8607.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ili9341.o: ../src/ili9341.c  .generated_files/flags/projekat2/8ec9360d62f5c85d682b8e9fdced3ca5a235b052 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ili9341.o.d" -o ${OBJECTDIR}/_ext/1360937237/ili9341.o ../src/ili9341.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fonts.o: ../src/fonts.c  .generated_files/flags/projekat2/3f32c913f4b26e184eb7151c49fd6af06c518e85 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fonts.o.d" -o ${OBJECTDIR}/_ext/1360937237/fonts.o ../src/fonts.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1910441227/plib_clk.o: ../src/config/projekat2/peripheral/clk/plib_clk.c  .generated_files/flags/projekat2/dda8480e805b34547b387ba7cb34996d3831eb46 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1910441227" 
	@${RM} ${OBJECTDIR}/_ext/1910441227/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1910441227/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1910441227/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1910441227/plib_clk.o ../src/config/projekat2/peripheral/clk/plib_clk.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1227936409/plib_coretimer.o: ../src/config/projekat2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/projekat2/f603df2350c3b5cc0365fb06cafd5551f65187c3 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1227936409" 
	@${RM} ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1227936409/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1227936409/plib_coretimer.o ../src/config/projekat2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905933336/plib_evic.o: ../src/config/projekat2/peripheral/evic/plib_evic.c  .generated_files/flags/projekat2/8849c7e50069dd53c55a3c7539f3a5049433ee76 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/905933336" 
	@${RM} ${OBJECTDIR}/_ext/905933336/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/905933336/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905933336/plib_evic.o.d" -o ${OBJECTDIR}/_ext/905933336/plib_evic.o ../src/config/projekat2/peripheral/evic/plib_evic.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905987164/plib_gpio.o: ../src/config/projekat2/peripheral/gpio/plib_gpio.c  .generated_files/flags/projekat2/485867291e3f5e3bdc6eeda8d0cc023065f82512 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/905987164" 
	@${RM} ${OBJECTDIR}/_ext/905987164/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/905987164/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905987164/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/905987164/plib_gpio.o ../src/config/projekat2/peripheral/gpio/plib_gpio.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o: ../src/config/projekat2/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/projekat2/f8450ab1ad2d38a95fa15a90a56967865213c479 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/147727292" 
	@${RM} ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/147727292/plib_i2c2_master.o ../src/config/projekat2/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/906390107/plib_uart1.o: ../src/config/projekat2/peripheral/uart/plib_uart1.c  .generated_files/flags/projekat2/41280f2ac3251fedb61a51aeec7e78e876f5982c .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/906390107" 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/906390107/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/906390107/plib_uart1.o ../src/config/projekat2/peripheral/uart/plib_uart1.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/906390107/plib_uart2.o: ../src/config/projekat2/peripheral/uart/plib_uart2.c  .generated_files/flags/projekat2/b8e01a319f32796e2dd55178249922ea6425700a .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/906390107" 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/906390107/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/906390107/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/906390107/plib_uart2.o ../src/config/projekat2/peripheral/uart/plib_uart2.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261773085/xc32_monitor.o: ../src/config/projekat2/stdio/xc32_monitor.c  .generated_files/flags/projekat2/83b98b481d81d9f4ad3fbee96d75a2a6796b2eb2 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1261773085" 
	@${RM} ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261773085/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1261773085/xc32_monitor.o ../src/config/projekat2/stdio/xc32_monitor.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1128930793/initialization.o: ../src/config/projekat2/initialization.c  .generated_files/flags/projekat2/c17aaecb226f21f57fbff28340d5f64edb2bc0f .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1128930793" 
	@${RM} ${OBJECTDIR}/_ext/1128930793/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128930793/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1128930793/initialization.o.d" -o ${OBJECTDIR}/_ext/1128930793/initialization.o ../src/config/projekat2/initialization.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1128930793/interrupts.o: ../src/config/projekat2/interrupts.c  .generated_files/flags/projekat2/27a5f814082be14c9704ffa9a42a4d346659b495 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1128930793" 
	@${RM} ${OBJECTDIR}/_ext/1128930793/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128930793/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1128930793/interrupts.o.d" -o ${OBJECTDIR}/_ext/1128930793/interrupts.o ../src/config/projekat2/interrupts.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1128930793/exceptions.o: ../src/config/projekat2/exceptions.c  .generated_files/flags/projekat2/f465ea29f029e663a7792da88c736bb2c6640a3 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1128930793" 
	@${RM} ${OBJECTDIR}/_ext/1128930793/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128930793/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1128930793/exceptions.o.d" -o ${OBJECTDIR}/_ext/1128930793/exceptions.o ../src/config/projekat2/exceptions.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/projekat2/22dfa88ad214bec9dd20e99555f4f6887956e422 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ESP8266.o: ../src/ESP8266.c  .generated_files/flags/projekat2/d18c4aa7dc680186147e118e50105e44ec1a6a46 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ESP8266.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ESP8266.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ESP8266.o.d" -o ${OBJECTDIR}/_ext/1360937237/ESP8266.o ../src/ESP8266.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/MS8607.o: ../src/MS8607.c  .generated_files/flags/projekat2/7db511284c08fa4068693ce36f5abb9f85f4b820 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MS8607.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/MS8607.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/MS8607.o.d" -o ${OBJECTDIR}/_ext/1360937237/MS8607.o ../src/MS8607.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ili9341.o: ../src/ili9341.c  .generated_files/flags/projekat2/a33cf0d5702826ddad2d211160b8fc5ae0cdf55e .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ili9341.o.d" -o ${OBJECTDIR}/_ext/1360937237/ili9341.o ../src/ili9341.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fonts.o: ../src/fonts.c  .generated_files/flags/projekat2/250c8ed3a2be77e4ea6e3413b85547d0bd6da128 .generated_files/flags/projekat2/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/projekat2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fonts.o.d" -o ${OBJECTDIR}/_ext/1360937237/fonts.o ../src/fonts.c    -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/projekat2/p32MZ2048EFH144.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/projekat2/p32MZ2048EFH144.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_projekat2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/projekat_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/projekat2
	${RM} -r dist/projekat2

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
