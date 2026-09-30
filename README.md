<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

[Español](docs/es/README.md) · [Українська](docs/uk/README.md)

# B19 / GCC

Community-maintained distribution of GCC built on B19/Ubuntu. This repository holds only the packaging — Dockerfile, build scripts, and configuration, all MIT-licensed; the upstream GCC is fetched at build time and retains its own licensing.

[![Stand with Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://damian-buho.github.io/support-ukraine/) [![Projectfile inside](https://badges.kiota.ch/static/v1?label=projectfile&message=inside&labelColor=0d0d0d&color=8c6723&style=flat-square)](https://projectfile.org) [![License](https://badges.kiota.ch/static/v1?label=license&message=MIT&color=1e5913&style=flat-square)](LICENSE) [![Commit style](https://badges.kiota.ch/static/v1?label=commits&message=conventional%20v1.0.0&color=1877aa&style=flat-square)](https://www.conventionalcommits.org/en/v1.0.0/) ![Workflow](https://badges.kiota.ch/static/v1?label=workflow&message=git-flow&color=1877aa&style=flat-square) [![Versioning](https://badges.kiota.ch/static/v1?label=versioning&message=semantic%20v2.0.0&color=1877aa&style=flat-square)](https://semver.org/) [![PRs welcome](https://badges.kiota.ch/static/v1?label=PRs&message=welcome&color=1e5913&style=flat-square)](CONTRIBUTING.md) [![Citation](https://badges.kiota.ch/static/v1?label=citation&message=cff&color=1877aa&style=flat-square)](CITATION.cff) [![REUSE compliance](https://api.reuse.software/badge/github.com/damian-buho/b19-gcc)](https://api.reuse.software/info/github.com/damian-buho/b19-gcc)

![Project status](https://badges.kiota.ch/static/v1?label=status&message=maintained&color=1d63ed&style=flat-square) [![Last commit on GitHub](https://badges.kiota.ch/github/last-commit/damian-buho/b19-gcc?label=last%20commit%20on%20GitHub&style=flat-square)](https://github.com/damian-buho/b19-gcc) [![Last commit on kiota.ch](https://badges.kiota.ch/gitea/last-commit/b19/gcc?gitea_url=https://kiota.ch&label=last%20commit%20on%20kiota.ch&style=flat-square)](https://kiota.ch/b19/gcc)

[![Publish pipeline on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/published.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions) [![Vulnerability audit on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/audited.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions) [![Dependency freshness on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/check-outdated.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions) [![Analysis sweep on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/analyze.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions)

[![Publish pipeline on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/published.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Vulnerability audit on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/audited.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Dependency freshness on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/check-outdated.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Analysis sweep on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/analyze.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions)

## Features

- Architecture-specific optimization flags with compile-time probing
- Transparent compiler caching (sccache / ccache)
- GCC toolchain from APT with series selection

It also inherits the features of Inherited from B19 / Ubuntu — see [FEATURES.md](FEATURES.md) for the full list.

## What this provides

- **Container image** `ghcr.io/damian-buho/b19/gcc-16:latest`
- **Container image** `ghcr.io/damian-buho/b19/gcc-15:latest`
- **Container image** `damianbuho/b19-gcc-16:latest`
- **Container image** `damianbuho/b19-gcc-15:latest`

## Installation

Pull the published container image:

### Pull from GHCR — linux/amd64, linux/arm64, linux/riscv64

```sh
docker pull ghcr.io/damian-buho/b19/gcc-16:latest
```

### Pull from DockerHub — linux/amd64

```sh
docker pull damianbuho/b19-gcc-16:latest
```

Series: `16` | `15`

Stable releases also publish `X.Y.Z`, `X.Y` and `X` tags — pull the precision you want to pin.

If the registries above are unreachable, pull from the origin instead:

### Pull from Kiota — linux/amd64

```sh
docker pull kiota.ch/b19/gcc-16:latest
```

Series: `16` | `15`

## Usage

Build on top of this image:

### From GHCR

```dockerfile
FROM ghcr.io/damian-buho/b19/gcc-16:latest
```

### From DockerHub

```dockerfile
FROM damianbuho/b19-gcc-16:latest
```

Series: `16` | `15`

For the recommended multi-stage pattern and the build-hook system (build.d), scaffold a derivative with `b19/scripts/scaffold.sh` from [m6e/b19](https://kiota.ch/m6e/b19).

## Building

Clone the repository with its submodules:

```sh
git clone --recurse-submodules https://github.com/damian-buho/b19-gcc gcc && cd gcc
```

Build the container image locally:

```sh
make container-build
```

- [Makefile reference](docs/how-to/MAKEFILE.md)

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
