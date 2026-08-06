<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# b19/gcc

Docker image built on [b19/Ubuntu](../ubuntu/AGENTS.md)

GCC toolchain base image used as builder stage for compiled-from-source projects.

## Key facts

- Base: `b19/ubuntu/${B19_UBUNTU_SERIES}` (resolute by default)
- GCC installed from Ubuntu apt (not compiled from source)
- Series: 16, 15
- Image name: `b19/gcc-{series}`

## What it provides

- `gcc`, `g++`, `gcov` set as system default via `update-alternatives`
- `gdb`, `valgrind`, `cmake`, `ninja-build`, full GNU toolchain
- `sccache` (wrapper scripts in `/usr/local/lib/compile-cache/` intercept `gcc`/`g++`/`cc`/`c++`)
- Probe-selected CFLAGS and LDFLAGS per arch (AVX2/FMA/SSE4/BMI on amd64; gc-sections/strip/RELRO on ldflags)

## Inheritable hooks

`compile-gcc/pre/` and `compile-gcc/post/` hooks are `.i.` — all projects using a `compile-gcc` builder stage inherit: APT cacher detection, `setup-build` (CFLAGS/LDFLAGS probe + `MAKEFLAGS=-j{n}`), mold activation, sccache stats.

## apt template

`.container/base/deps/common.apt.deps.j2` is a Jinja2 template — `{{ ENV.B19_GCC_SERIES }}` substituted at build time by `minijinja-cli --env` (hook: `build.d/base/pre/200-setup-sources.sh`).

## Documentation

- [Available make targets](@docs/MAKEFILE.md)
- [Known caveats and limitations](@docs/caveats.md)
