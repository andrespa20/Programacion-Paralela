################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Pi_\ secuencial.cpp 

OBJS += \
./src/Pi_\ secuencial.o 

CPP_DEPS += \
./src/Pi_\ secuencial.d 


# Each subdirectory must supply rules for building sources it contributes
src/Pi_\ secuencial.o: ../src/Pi_\ secuencial.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	mpic++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"src/Pi_ secuencial.d" -MT"src/Pi_\ secuencial.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


