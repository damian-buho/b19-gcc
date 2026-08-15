<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Transparent compiler caching (sccache / ccache)

- Compiler wrapper scripts in `/usr/local/lib/compile-cache/` transparently intercept `gcc`, `g++`, `cc`, and `c++` calls via PATH precedence -- no build tool changes needed.
- Two cache backends selectable at build time: `sccache` (default) for distributed caching and `ccache` for local caching.
- Remote cache backends are configured via the tools’ own native env vars (`SCCACHE_REDIS_ENDPOINT`, `CCACHE_REMOTE_STORAGE`, `SCCACHE_BUCKET`, etc.) — passed verbatim, no b19-level scheme transformation.
- Automatic graceful fallback from sccache to ccache when no remote backend is configured, preventing concurrent daemon races.
- Cache can be disabled entirely with `B19_COMPILE_CACHE=off`.
- Cache hit/miss statistics are logged at the end of every build.
