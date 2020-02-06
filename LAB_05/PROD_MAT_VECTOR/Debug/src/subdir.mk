################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/prod_mat_vec_paralela.cpp \
../src/prod_mat_vect_secuencial.cpp 

OBJS += \
./src/prod_mat_vec_paralela.o \
./src/prod_mat_vect_secuencial.o 

CPP_DEPS += \
./src/prod_mat_vec_paralela.d \
./src/prod_mat_vect_secuencial.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	mpic++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


