# user_const.tcl: Default parameters for DK-DEV-AGI027RES card
# Copyright (C) 2021 CESNET z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# Source default common values
source $CARD_COMMON_BASE/config/user_const.tcl

set PROJECT_NAME ""

# User-defined generics
set USER_GENERIC0 0
set USER_GENERIC1 0
set USER_GENERIC2 0
set USER_GENERIC3 0

# ETH parameters:
# ===============
set ETH_ENABLE        True
# Number of Ethernet ports, must match number of items in list ETH_PORTS_SPEED!
# This board has two ETH ports, but we currently use only one (up to 400 Gb Ethernet) in NDK.
set ETH_PORTS         1
# Speed for each one of the ETH_PORTS (allowed values: 400, 200, 100, 50, 40, 25, 10)
# ETH_PORT_SPEED is an array where each index represents given ETH_PORT and
# each index has associated a required port speed.
# NOTE: at this moment, all ports must have same speed !
set ETH_PORT_SPEED(0) $env(ETH_PORT_SPEED)
# Number of channels for each one of the ETH_PORTS (allowed values: 1, 2, 4, 8)
# ETH_PORT_CHAN is an array where each index represents given ETH_PORT and
# each index has associated a required number of channels this port has.
# NOTE: at this moment, all ports must have same number of channels !
set ETH_PORT_CHAN(0) $env(ETH_PORT_CHAN)

# PCIe parameters:
# ================
# PCIe endpoints (allowed values: 1, 2, 4):
# 1 = 1x PCIe x16 in one slot
# 2 = 2x PCIe x16 in two slot OR 2x PCIe x8 in one slot (bifurcation x8+x8)
# 4 = 4x PCIe x8 in two slots (bifurcation x8+x8)
set PCIE_ENDPOINTS     2
# PCIe endpoint mode (allowed values: 0, 1):
# 0 = 1x16 lanes
# 1 = 2x8 lanes (bifurcation x8+x8)
set PCIE_ENDPOINT_MODE 1

# DMA parameters:
# ===============
set DMA_ENABLE      true
# The minimum number of RX/TX DMA channels for this card is 32.
set DMA_RX_CHANNELS 32
set DMA_TX_CHANNELS 32

# DDR4 parameters:
# ===============
set MEM_PORTS       1

# Other parameters:
# =================
set TSU_ENABLE true
