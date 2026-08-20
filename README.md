<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

[Español](docs/es/README.md) · [Українська](docs/uk/README.md)

# B19/GCC

Community-maintained distribution of GCC based on B19/Ubuntu

[![Stand with Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://damian-buho.github.io/support-ukraine/) [![License](https://badges.kiota.ch/static/v1?label=license&message=MIT&color=4c1&style=flat-square)](LICENSE) ![Commit style](https://badges.kiota.ch/static/v1?label=commits&message=conventional&color=blue&style=flat-square) ![Workflow](https://badges.kiota.ch/static/v1?label=workflow&message=git-flow&color=blue&style=flat-square) ![Versioning](https://badges.kiota.ch/static/v1?label=versioning&message=semantic&color=blue&style=flat-square) [![PRs welcome](https://badges.kiota.ch/static/v1?label=PRs&message=welcome&color=4c1&style=flat-square)](CONTRIBUTING.md) [![Citation](https://badges.kiota.ch/static/v1?label=citation&message=cff&color=blue&style=flat-square)](CITATION.cff) [![REUSE compliance](https://api.reuse.software/badge/codeberg.org/b19/gcc)](https://api.reuse.software/info/codeberg.org/b19/gcc)

![Project status](https://badges.kiota.ch/static/v1?label=status&message=maintained&color=1d63ed&style=flat-square) [![Last commit on kiota.ch](https://badges.kiota.ch/gitea/last-commit/b19/gcc?gitea_url=https://kiota.ch&style=flat-square)](https://kiota.ch/b19/gcc)

[![Publish pipeline on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/published.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Vulnerability audit on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/audited.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Dependency freshness on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/check-outdated.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Analysis sweep on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/analyze.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions)

## Features

- Architecture-specific optimization flags with compile-time probing
- Transparent compiler caching (sccache / ccache)
- GCC toolchain from APT with series selection

### Inherited from B19/Ubuntu

- Persistent APT cache across builds
- Service process management with log routing (b19-exec)
- Cached artifact downloads with integrity verification (b19-fetch)
- Timed command execution with failure reporting (b19-run)
- Run-once initialization (bootstrap.d)
- Modular build hooks (build.d)
- Automatic CPU count detection (NUMPROCS)
- Declarative dependency management (b19-deps)
- Pluggable startup system (entrypoint.d)
- Feature toggles for all subsystems
- Built-in health monitoring (healthcheck.d)
- Multilingual shell output (b19-i18n)
- Image lineage tracking
- Structured, level-filtered logging (b19-log)
- Non-root container by default
- Air-gapped / offline build and runtime support
- Runtime overlay injection
- Reproducible base image (pinned by digest)
- Port validation
- Unified lifecycle runner family
- Docker secrets auto-loading (secrets)
- Interactive shell hooks (shell.d)
- Graceful signal handling
- Jinja2 configuration templates (minijinja-cli)
- Built-in test framework (test.d)
- Pre-installed utility tools
- XDG Base Directory paths

See [FEATURES.md](FEATURES.md) for the full list.

## What this provides

- **Container image** `ghcr.io/damian-buho/b19/gcc-16:latest`
- **Container image** `ghcr.io/damian-buho/b19/gcc-15:latest`
- **Container image** `docker.io/damianbuho/b19-gcc-16:latest`
- **Container image** `docker.io/damianbuho/b19-gcc-15:latest`

## Installation

Pull the published container image:

### Pull from GHCR

```sh
docker pull ghcr.io/damian-buho/b19/gcc-16:latest
docker pull ghcr.io/damian-buho/b19/gcc-15:latest
```

### Pull from DockerHub

```sh
docker pull docker.io/damianbuho/b19-gcc-16:latest
docker pull docker.io/damianbuho/b19-gcc-15:latest
```

Stable releases also publish `X.Y.Z`, `X.Y` and `X` tags — pull the precision you want to pin.

If the registries above are unreachable, pull from the origin instead:

### Pull from Kiota

```sh
docker pull kiota.ch/b19/gcc-16:latest
docker pull kiota.ch/b19/gcc-15:latest
```

## Usage

Build on top of this image:

### From GHCR

```dockerfile
FROM ghcr.io/damian-buho/b19/gcc-16:latest
FROM ghcr.io/damian-buho/b19/gcc-15:latest
```

### From DockerHub

```dockerfile
FROM docker.io/damianbuho/b19-gcc-16:latest
FROM docker.io/damianbuho/b19-gcc-15:latest
```

For the recommended multi-stage pattern and the build-hook system (build.d), scaffold a derivative with `b19/scripts/scaffold.sh` from [m6e/b19](https://kiota.ch/m6e/b19).

## Building

Run `make` with no arguments for the default target; run `make help` to list every target.

For the local dev loop, `make dev-container` brings up the dev-container.

Pipeline entry points:

- `make analyze` — Run the heavy analysis sweep (mutation testing, benchmarks)
- `make audited` — Re-scan the pinned dependencies and published artifacts for new vulnerabilities
- `make check-outdated` — Report every pinned dependency that lags upstream
- `make ready-to-publish` — Run the pseudo-CI pipeline locally — build, test and scan, without publishing

## Policies

- [How to contribute](CONTRIBUTING.md)
- [Security policy](SECURITY.md)
- [Getting support](SUPPORT.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [AI and LLM Policy](AI_POLICY.md)

## Links

- [Projectfile Specification](https://projectfile.org)

## License

This project is licensed under MIT — see the [LICENSE](LICENSE) file for details.
