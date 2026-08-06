#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

  case "${B19_COMPILE_CACHE:-sccache}" in
    ccache)  b19-log info "CCACHE"  "$(_p "stats: %s" "$(ccache --show-stats)")"  ;;
    sccache) b19-log info "SCCACHE" "$(_p "stats: %s" "$(sccache --show-stats)")" ;;
    off)     b19-log bad  "BUILD"   "$(_p "Compile cache was disabled (%s), no stats" "${B19_COMPILE_CACHE}")"  ;;
    *)       b19-log warn "BUILD"   "$(_p "Unknown compile cache mode: %s" "${B19_COMPILE_CACHE}")" ;;
  esac
