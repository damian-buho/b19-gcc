<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Інструментальний ланцюжок GCC з APT із вибором серії

- GCC, G++ і gcov встановлюються з пакетів Ubuntu APT і призначаються типовими системними компіляторами через `update-alternatives`.
- Доступні кілька серій GCC (16, 15, 14) на вибір під час збирання через `B19_GCC_SERIES`.
- Список залежностей APT — це шаблон Jinja2, який розв’язується під час збирання, тож встановлюються правильні пакети `gcc-{series}` і `g++-{series}` без розгалужень у Makefile.
- Постачається повний інструментальний ланцюжок збирання: gdb, valgrind, cmake, ninja-build, autoconf, automake, bison, flex, libtool, binutils, pkg-config і ccache.
- Розв’язана версія GCC експортується для використання подальшими етапами збирання.

<!-- textlint-enable -->
