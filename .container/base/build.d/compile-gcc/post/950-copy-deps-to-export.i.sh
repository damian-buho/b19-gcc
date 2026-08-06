#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

if [ -d /deps ]; then
  mkdir -p /export/deps
  cp -a /deps/. /export/deps/
fi
