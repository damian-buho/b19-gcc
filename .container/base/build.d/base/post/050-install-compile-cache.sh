#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

  cd "${B19_TEMP_PATH}" || return 1

  eval "$(b19-resolve-dep sccache "${TARGETARCH}")"

  b19-fetch "SCCACHE" "${M6E_UPSTREAM__URL}" "${M6E_UPSTREAM__FILE}" "${M6E_UPSTREAM__HASH}"

  b19-run "SCCACHE" "$(_p "Extract %s" "${M6E_UPSTREAM__FILE}")" --     \
    tar --extract                                                       \
        --file "${B19_TEMP_PATH}/${M6E_UPSTREAM__FILE}"                 \
        --strip-components 1                                            \
        --use-compress-program pigz

  b19-run "SCCACHE" "$(_ "Install sccache")" --     \
    install -m 0755 sccache /usr/local/bin/sccache
