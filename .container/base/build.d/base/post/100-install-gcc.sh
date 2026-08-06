#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT


  # gcc/g++ installed via common.apt.deps (parameterized by B19_GCC_SERIES)
  # Set as default via alternatives

  b19-run "GCC" "$(_p "Set gcc-%s as default" "${B19_GCC_SERIES}")" --                      \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-"${B19_GCC_SERIES}" 150     \
      --slave /usr/bin/g++ g++ /usr/bin/g++-"${B19_GCC_SERIES}"                             \
      --slave /usr/bin/gcov gcov /usr/bin/gcov-"${B19_GCC_SERIES}"                          \
      --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-"${B19_GCC_SERIES}"                    \
      --slave /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-"${B19_GCC_SERIES}"                    \
      --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-"${B19_GCC_SERIES}"        \
      --slave /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-"${B19_GCC_SERIES}"           \
      --slave /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-"${B19_GCC_SERIES}"           \
      --slave /usr/bin/lto-dump lto-dump /usr/bin/lto-dump-"${B19_GCC_SERIES}"

  update-alternatives --remove-all cpp 2>/dev/null || true
  b19-run "GCC" "$(_p "Set cpp-%s as default" "${B19_GCC_SERIES}")" --      \
    update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-"${B19_GCC_SERIES}" 150

  b19-log good "GCC" "$(_p "GCC %s set as default" "$(gcc-"${B19_GCC_SERIES}" -dumpversion)")"

  mkdir -p "/deps/gcc/${B19_GCC_SERIES}"
  gcc -dumpversion > "/deps/gcc/${B19_GCC_SERIES}/version.deps"
