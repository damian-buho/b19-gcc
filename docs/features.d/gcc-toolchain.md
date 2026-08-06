<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# GCC toolchain from APT with series selection

- GCC, G++, and gcov are installed from Ubuntu APT packages and set as the system default compiler via `update-alternatives`.
- Multiple GCC series available (16, 15, 14), selectable at build time via `B19_GCC_SERIES`.
- The APT dependency list is a Jinja2 template resolved at build time, so the correct `gcc-{series}` and `g++-{series}` packages are installed without Makefile branching.
- Ships a complete build toolchain: gdb, valgrind, cmake, ninja-build, autoconf, automake, bison, flex, libtool, binutils, pkg-config, and ccache.
- The resolved GCC version is exported for downstream build stages to consume.
