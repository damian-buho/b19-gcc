# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

# M6E MAKEFILE T3

B19_GCC_SERIES 			?= 	16
M6E_CONTAINER_NAME	=		$(subst /,-,${NAMESPACE})-${PROJECT}-$(B19_GCC_SERIES)
M6E_IMAGE_BASENAME	=		${NAMESPACE}/${PROJECT}-$(B19_GCC_SERIES)

# Rules

# Includes

all: .makefile/core/initialize.mk

.makefile/core/initialize.mk:
	git submodule update --init --recursive
	$(MAKE) bootstrap

-include .makefile/core/initialize.mk
