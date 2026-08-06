#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

  # shellcheck source=/dev/null
  . b19-i18n

  J2_FILE="/deps/common.apt.deps.j2"
  OUTPUT_FILE="/deps/common.apt.deps"

  b19-run "GCC" "$(_p "Render %s" "${OUTPUT_FILE}")" --     \
    minijinja-cli --autoescape none --env "${J2_FILE}" -o "${OUTPUT_FILE}"

  b19-run "GCC" "$(_p "Remove %s" "*.j2")" --     \
    rm /deps/*.j2

  b19-log good "GCC" "$(_p "GCC templates processed for series %s" "${B19_GCC_SERIES}")"
