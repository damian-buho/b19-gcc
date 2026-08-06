<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Architecture-specific optimization flags with compile-time probing

- Curated per-architecture CFLAGS: amd64 includes 45 ISA targets (AVX2, FMA, BMI2, SSE4, POPCNT, CRC32, AES-NI) plus 100+ GCC optimization passes; arm64 targets `-O3`.
- Security-hardened LDFLAGS on both architectures: RELRO, immediate symbol resolution (`-z now`), and on amd64 dead-section elimination (`--gc-sections`) and full stripping (`--strip-all`).
- Every flag is probed at build start by compiling a test program -- only flags supported by the actual GCC version and target CPU survive; unsupported flags are logged and dropped.
- Probed flags are exported as `CFLAGS`, `CXXFLAGS`, and `LDFLAGS` for all downstream compilation.
