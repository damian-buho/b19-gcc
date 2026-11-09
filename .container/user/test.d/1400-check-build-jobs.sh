#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

set -eo pipefail

# Pins setup-build: jobs follow NUMPROCS and RATIO, two once two CPUs exist, bounded by memory per job.
_sandbox="$(mktemp --directory)"
trap 'rm --recursive --force "${_sandbox}"' EXIT

# Prints what setup-build exports for NUMPROCS, RATIO, MEMTOTAL_KB and a per-job budget, detectors stubbed on PATH.
jobs_for() {
  echo "NUMPROCS=$1" > "${_sandbox}/detect-cpu-count"
  echo "MEMTOTAL_KB=${3:-1073741824}" > "${_sandbox}/detect-memory"
  PATH="${_sandbox}:${PATH}" B19_BUILD_PROC_RATIO="$2" B19_BUILD_JOB_MEMORY_KB="${4:-2097152}" TARGETARCH="$(dpkg --print-architecture)" \
    bash -c 'trap "echo \"\${MAKEFLAGS}\"" EXIT; . b19-i18n; . setup-build >/dev/null 2>&1'
}

b19-assert equals "BUILD" "-j1" "$(jobs_for 1 0.5)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 2 0.5)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 3 0.5)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 5 0.5)"
b19-assert equals "BUILD" "-j3" "$(jobs_for 6 0.5)"
b19-assert equals "BUILD" "-j12" "$(jobs_for 16 0.8)"
b19-assert equals "BUILD" "-j4" "$(jobs_for 16 0.8 8388608)"
b19-assert equals "BUILD" "-j3" "$(jobs_for 16 0.8 8388607)"
b19-assert equals "BUILD" "-j12" "$(jobs_for 16 0.8 25165824)"
b19-assert equals "BUILD" "-j11" "$(jobs_for 16 0.8 25165823)"
b19-assert equals "BUILD" "-j1" "$(jobs_for 16 0.8 1048576)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 16 0.8 8388608 4194304)"

echo "OK: setup-build sizes jobs from NUMPROCS and memory"
