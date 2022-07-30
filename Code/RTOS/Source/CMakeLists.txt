cmake_minimum_required(VERSION 3.16.3)

project(RTOS)

set(CPU_PARAMETERS
	-march=armv7e-m+fp
	-mfloat-abi=hard
	-mlittle-endian
)

set(STARTUP_SCRIPT ./Startup/startup.s)
set(MCU_LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/Include/link_full.ld)

set(TOOLCHAIN_DIR /home/jstidham/Downloads/gcc_arm_embedded/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi/arm-none-eabi/)

set(EXECUTABLE ${CMAKE_PROJECT_NAME})

enable_language(C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONA ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

set(PROJECT_INCLUDE_DIRECTORIES
	${CMAKE_CURRENT_SOURCE_DIR}
	${CMAKE_CURRENT_SOURCE_DIR}/Include)

file(GLOB_RECURSE PROJECT_SOURCES FOLLOW_SYMLINKS
	${CMAKE_CURRENT_SOURCE_DIR}/*.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/*.c
	${CMAKE_CURRENT_SOURCE_DIR}/*.s
)

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES} ${STARTUP_SCRIPT})

target_compile_options(${PROJECT_NAME} PRIVATE
	${CPU_PARAMETERS}
	-Wall
	-Wextra
	-Werror
	-Wno-unused-parameter
	$<$<COMPILE_LANGUAGE:CXX>:
		-Wno-volatile
		-Wold-style-cast
		-Wsuggest-override>
	-Og
	-g0)
			
target_link_options(${PROJECT_NAME} PRIVATE
	-T${MCU_LINKER_SCRIPT}
	${CPU_PARAMETERS}
	-Wl,-Map=${PROJECT_NAME}.map
	--specs=nosys.specs
	-Wl,--start-group
	-lc
	-lm
	-lstdc++
	-lsupc++
	-Wl,--end-group
	-Wl,--print-memory-usage)
	
	
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_SIZE} $<TARGET_FILE:${PROJECT_NAME}>)


add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O ihex $<TARGET_FILE:${PROJECT_NAME}>
    ${PROJECT_NAME}.hex
    COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${PROJECT_NAME}>
    ${PROJECT_NAME}.bin)

