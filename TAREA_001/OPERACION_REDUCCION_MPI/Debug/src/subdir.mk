################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/MPI_BAND.cpp \
../src/MPI_BOR.cpp \
../src/MPI_BXOR.cpp \
../src/MPI_LAND.cpp \
../src/MPI_LOR.cpp \
../src/MPI_LXOR.cpp \
../src/MPI_MAX.cpp \
../src/MPI_MIN.cpp \
../src/MPI_PROD.cpp \
../src/MPI_SUM.cpp 

OBJS += \
./src/MPI_BAND.o \
./src/MPI_BOR.o \
./src/MPI_BXOR.o \
./src/MPI_LAND.o \
./src/MPI_LOR.o \
./src/MPI_LXOR.o \
./src/MPI_MAX.o \
./src/MPI_MIN.o \
./src/MPI_PROD.o \
./src/MPI_SUM.o 

CPP_DEPS += \
./src/MPI_BAND.d \
./src/MPI_BOR.d \
./src/MPI_BXOR.d \
./src/MPI_LAND.d \
./src/MPI_LOR.d \
./src/MPI_LXOR.d \
./src/MPI_MAX.d \
./src/MPI_MIN.d \
./src/MPI_PROD.d \
./src/MPI_SUM.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	mpic++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


