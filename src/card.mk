# card.mk: Makefile include for DK-DEV-AGI027RES card
# Copyright (C) 2021 CESNET z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# Mandatory parameters (needs to be set in user Makefile)
###############################################################################

# Load correct paths to build system
include $(COMBO_BASE)/conf/ndk_paths.mk

# Optional parameters (can be changed in user Makefile)
###############################################################################

# Name for output files (rootname)
# This value is set as default in SYNTH_FLAGS(OUTPUT)
OUTPUT_NAME ?= dk-dev-agi027res

USER_ENV ?=

# Private parameters (do not change these values in user Makefile)
###############################################################################

# Get directory of this Makefile.inc
CARD_BASE_LOCAL := $(dir $(lastword $(MAKEFILE_LIST)))
CARD_BASE ?= $(CARD_BASE_LOCAL)/..

NDK_CONST = $(CARD_BASE)/config/ndk_const.tcl
DEFAULT_CONST = $(CARD_BASE)/config/user_const.tcl

NETCOPE_ENV = \
	OFM_PATH=$(OFM_PATH)\
	COMBO_BASE=$(COMBO_BASE)\
	FIRMWARE_BASE=$(FIRMWARE_BASE)\
	CARD_BASE=$(CARD_BASE) \
	NDK_CONST=$(NDK_CONST) \
	DEFAULT_CONST=$(DEFAULT_CONST) \
	USER_CONST=$(USER_CONST) \
	OUTPUT_NAME=$(OUTPUT_NAME) \
	ETH_PORT_SPEED=$(ETH_PORT_SPEED) \
    ETH_PORT_CHAN=$(ETH_PORT_CHAN) \
	$(USER_ENV)

include $(OFM_PATH)/build/Makefile.Quartus.inc
