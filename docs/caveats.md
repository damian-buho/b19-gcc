<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Known caveats

## sccache local cache location under a remote backend

When sccache runs with a remote backend (Redis, Memcached, S3, or GHA),
`setup-build` points `SCCACHE_DIR` at tmpfs (`${B19_TEMP_PATH}/sccache`) rather
than the BuildKit `--mount=type=cache`.

The remote is the persistent store in that mode; the local disk cache only
stages the miss→store write. Staging that write on the cache mount risks
`EBUSY` (os error 16) on the atomic rename into place — the remote survives
across builds either way, so the local cache is safely ephemeral. Without a
remote backend, the cache mount is still used so anything persists at all.
