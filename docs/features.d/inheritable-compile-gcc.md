<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Inheritable compile-gcc build hooks

- All hooks in the `compile-gcc` stage are inheritable (`*.i.sh`): every project using a `compile-gcc` builder stage gets the full build setup automatically.
- Inherited capabilities include: APT cacher auto-detection, CPU count detection with configurable process ratio (`B19_BUILD_PROC_RATIO`), automatic `MAKEFLAGS=-j{N}` parallel setup, architecture-specific flag probing, compile cache activation, and cache statistics reporting.
- Resolved dependency files are exported to `/export/deps/` so the final image stage can reuse them without re-probing.
- Downstream images (node, python, r, ruby, php, erlang, haskell) inherit all of this with zero configuration.
