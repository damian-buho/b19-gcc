#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

set -eo pipefail

# Pins setup-build: jobs follow the detected NUMPROCS and RATIO, with two jobs once two CPUs exist.
_sandbox="$(mktemp --directory)"
trap 'rm --recursive --force "${_sandbox}"' EXIT

# Prints what setup-build exports for a NUMPROCS and a RATIO, with the detector stubbed on PATH.
jobs_for() {
  echo "NUMPROCS=$1" > "${_sandbox}/detect-cpu-count"
  PATH="${_sandbox}:${PATH}" B19_BUILD_PROC_RATIO="$2" TARGETARCH="$(dpkg --print-architecture)" \
    bash -c 'trap "echo \"\${MAKEFLAGS}\"" EXIT; . b19-i18n; . setup-build >/dev/null 2>&1'
}

b19-assert equals "BUILD" "-j1" "$(jobs_for 1 0.5)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 2 0.5)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 3 0.5)"
b19-assert equals "BUILD" "-j2" "$(jobs_for 5 0.5)"
b19-assert equals "BUILD" "-j3" "$(jobs_for 6 0.5)"
b19-assert equals "BUILD" "-j12" "$(jobs_for 16 0.8)"

echo "OK: setup-build sizes jobs from NUMPROCS"
