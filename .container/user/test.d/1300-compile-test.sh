#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

  set -eou pipefail

  # shellcheck source=/dev/null
  . b19-i18n

  TESTDIR=$(mktemp -d)
  trap 'rm -rf "${TESTDIR}"' EXIT

  # C with gcc
  GCC_VERSION=$(gcc -dumpversion | cut -d. -f1)
  echo 'int main() { return 0; }' > "${TESTDIR}/test.c"
  gcc -o "${TESTDIR}/test_gcc" "${TESTDIR}/test.c"
  "${TESTDIR}/test_gcc"
  b19-log good "GCC" "$(_p "gcc-%s compile test passed" "${GCC_VERSION}")"

  # C++ with g++
  echo '#include <iostream>
int main() { std::cout << "ok" << std::endl; return 0; }' > "${TESTDIR}/test.cpp"
  g++ -o "${TESTDIR}/test_gpp" "${TESTDIR}/test.cpp"
  "${TESTDIR}/test_gpp"
  b19-log good "GCC" "$(_p "g++-%s compile test passed" "${GCC_VERSION}")"

  # cmake + ninja
  CMAKE_VERSION=$(cmake --version | head -n1 | grep -oP '\d+\.\d+')
  NINJA_VERSION=$(ninja --version 2>/dev/null || echo "unknown")
  mkdir "${TESTDIR}/build"
  cat > "${TESTDIR}/CMakeLists.txt" << 'EOF'
cmake_minimum_required(VERSION 3.10)
project(CompileTest C)
add_executable(test_cmake test.c)
EOF
  cmake -G Ninja -DCMAKE_C_COMPILER=/usr/bin/gcc -S "${TESTDIR}" -B "${TESTDIR}/build"
  ninja -C "${TESTDIR}/build"
  "${TESTDIR}/build/test_cmake"
  b19-log good "GCC" "$(_p "cmake %s + ninja %s build test passed" "${CMAKE_VERSION}" "${NINJA_VERSION}")"
