<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Cadena de herramientas GCC desde APT con selección de serie

- GCC, G++ y gcov se instalan desde paquetes de Ubuntu APT y se establecen como compilador predeterminado del sistema mediante `update-alternatives`.
- Varias series de GCC disponibles (16, 15, 14), seleccionables en tiempo de compilación mediante `B19_GCC_SERIES`.
- La lista de dependencias APT es una plantilla Jinja2 resuelta en tiempo de compilación, de modo que se instalan los paquetes correctos `gcc-{series}` y `g++-{series}` sin ramificar el Makefile.
- Incluye una cadena de herramientas de compilación completa: gdb, valgrind, cmake, ninja-build, autoconf, automake, bison, flex, libtool, binutils, pkg-config y ccache.
- La versión resuelta de GCC se exporta para que la consuman las etapas de compilación posteriores.
