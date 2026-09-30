<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

<!-- textlint-disable terminology,common-misspellings -->

[English](../../README.md) · [Español](../es/README.md)

# B19 / GCC

Дистрибуція GCC з підтримкою спільноти, зібрана на основі B19/Ubuntu. Цей репозиторій містить лише пакування — Dockerfile, скрипти збирання та конфігурацію, усе під ліцензією MIT; вихідний код GCC отримують під час збирання, і він зберігає власну ліцензію.

[![Stand with Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://damian-buho.github.io/support-ukraine/) [![Projectfile inside](https://badges.kiota.ch/static/v1?label=projectfile&message=inside&labelColor=0d0d0d&color=8c6723&style=flat-square)](https://projectfile.org) [![License](https://badges.kiota.ch/static/v1?label=license&message=MIT&color=1e5913&style=flat-square)](LICENSE) [![Commit style](https://badges.kiota.ch/static/v1?label=commits&message=conventional%20v1.0.0&color=1877aa&style=flat-square)](https://www.conventionalcommits.org/uk/v1.0.0/) ![Workflow](https://badges.kiota.ch/static/v1?label=workflow&message=git-flow&color=1877aa&style=flat-square) [![Versioning](https://badges.kiota.ch/static/v1?label=versioning&message=semantic%20v2.0.0&color=1877aa&style=flat-square)](https://semver.org/lang/uk/) [![PRs welcome](https://badges.kiota.ch/static/v1?label=PRs&message=welcome&color=1e5913&style=flat-square)](CONTRIBUTING.md) [![Citation](https://badges.kiota.ch/static/v1?label=citation&message=cff&color=1877aa&style=flat-square)](CITATION.cff) [![REUSE compliance](https://api.reuse.software/badge/github.com/damian-buho/b19-gcc)](https://api.reuse.software/info/github.com/damian-buho/b19-gcc)

![Project status](https://badges.kiota.ch/static/v1?label=status&message=maintained&color=1d63ed&style=flat-square) [![Last commit on GitHub](https://badges.kiota.ch/github/last-commit/damian-buho/b19-gcc?label=last%20commit%20on%20GitHub&style=flat-square)](https://github.com/damian-buho/b19-gcc) [![Last commit on kiota.ch](https://badges.kiota.ch/gitea/last-commit/b19/gcc?gitea_url=https://kiota.ch&label=last%20commit%20on%20kiota.ch&style=flat-square)](https://kiota.ch/b19/gcc)

[![Publish pipeline on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/published.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions) [![Vulnerability audit on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/audited.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions) [![Dependency freshness on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/check-outdated.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions) [![Analysis sweep on GitHub](https://github.com/damian-buho/b19-gcc/actions/workflows/analyze.yaml/badge.svg?style=flat-square)](https://github.com/damian-buho/b19-gcc/actions)

[![Publish pipeline on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/published.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Vulnerability audit on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/audited.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Dependency freshness on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/check-outdated.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Analysis sweep on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/analyze.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions)

## Можливості

- Прапорці оптимізації для конкретних архітектур із зондуванням під час збирання
- Прозоре кешування компілятора (sccache / ccache)
- Інструментальний ланцюжок GCC з APT із вибором серії

Також успадковує можливості Успадковано від B19 / Ubuntu — повний перелік див. у [FEATURES.md](FEATURES.md).

## Що надає цей проєкт

- **Образ контейнера** `ghcr.io/damian-buho/b19/gcc-16:latest`
- **Образ контейнера** `ghcr.io/damian-buho/b19/gcc-15:latest`
- **Образ контейнера** `damianbuho/b19-gcc-16:latest`
- **Образ контейнера** `damianbuho/b19-gcc-15:latest`

## Встановлення

Завантажте опублікований образ контейнера:

### Завантажити з GHCR — linux/amd64, linux/arm64, linux/riscv64

```sh
docker pull ghcr.io/damian-buho/b19/gcc-16:latest
```

### Завантажити з DockerHub — linux/amd64

```sh
docker pull damianbuho/b19-gcc-16:latest
```

Серія: `16` | `15`

Стабільні випуски також публікують теґи `X.Y.Z`, `X.Y` і `X` — завантажте той рівень точності, який хочете зафіксувати.

Якщо наведені вище реєстри недоступні, завантажте з джерела:

### Завантажити з Kiota — linux/amd64

```sh
docker pull kiota.ch/b19/gcc-16:latest
```

Серія: `16` | `15`

## Використання

Побудуйте на основі цього образу:

### З GHCR

```dockerfile
FROM ghcr.io/damian-buho/b19/gcc-16:latest
```

### З DockerHub

```dockerfile
FROM damianbuho/b19-gcc-16:latest
```

Серія: `16` | `15`

Для рекомендованого багатоетапного шаблону та системи хуків збірки (build.d) створіть похідний проєкт за допомогою `b19/scripts/scaffold.sh` з [m6e/b19](https://kiota.ch/m6e/b19).

## Збирання

Клонуйте репозиторій разом із підмодулями:

```sh
git clone --recurse-submodules https://github.com/damian-buho/b19-gcc gcc && cd gcc
```

Зберіть образ контейнера локально:

```sh
make container-build
```

- [Довідник із Makefile](../how-to/MAKEFILE.md)

Виконайте `make` без аргументів для типової цілі; виконайте `make help`, щоб переглянути всі цілі.

Для локального циклу розробки `make dev-container` піднімає dev-container.

Точки входу конвеєра:

- `make analyze` — Запускає важкий аналіз (мутаційне тестування, бенчмарки)
- `make audited` — Повторно сканує закріплені залежності й опубліковані артефакти на нові вразливості
- `make check-outdated` — Звітує про кожну закріплену залежність, що відстає від upstream
- `make ready-to-publish` — Запускає псевдо-CI локально — збирає, тестує й сканує без публікації

## Політики

- [Як зробити внесок](CONTRIBUTING.md)
- [Політика безпеки](SECURITY.md)
- [Як отримати підтримку](SUPPORT.md)
- [Кодекс поведінки](CODE_OF_CONDUCT.md)
- [Політика щодо ШІ та LLM](AI_POLICY.md)

## Посилання

- [Специфікація Projectfile](https://projectfile.org)

## Ліцензія

Цей проєкт ліцензовано на умовах MIT — див. файл [LICENSE](LICENSE) для подробиць.

<!-- textlint-enable -->
