NAME := mesh

$(NAME)_TYPE := kernel
GLOBAL_INCLUDES += include

$(NAME)_CFLAGS += -Wall -Werror
GLOBAL_DEFINES += CONFIG_AOS_MESH

ifeq ($(HOST_ARCH), linux)
LIB_DIR := linux
else ifeq ($(HOST_ARCH), ARM968E-S)
LIB_DIR := arm968es
else ifeq ($(HOST_ARCH), xtensa)
LIB_DIR := xtensa
else
$(error "not find correct platform!")
endif

$(NAME)_PREBUILT_LIBRARY := lib/$(LIB_DIR)/libmesh.a
