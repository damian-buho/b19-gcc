<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

<!-- textlint-disable terminology,common-misspellings -->

[English](../../README.md) · [Español](../es/README.md)

# B19 / GCC

Дистрибуція GCC з підтримкою спільноти на основі B19/Ubuntu

[![Stand with Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://damian-buho.github.io/support-ukraine/) [![Projectfile inside](https://badges.kiota.ch/static/v1?label=projectfile&message=inside&labelColor=0d0d0d&color=8c6723&style=flat-square)](https://projectfile.org) [![License](https://badges.kiota.ch/static/v1?label=license&message=MIT&color=1e5913&style=flat-square)](LICENSE) ![Commit style](https://badges.kiota.ch/static/v1?label=commits&message=conventional&color=1877aa&style=flat-square) ![Workflow](https://badges.kiota.ch/static/v1?label=workflow&message=git-flow&color=1877aa&style=flat-square) ![Versioning](https://badges.kiota.ch/static/v1?label=versioning&message=semantic&color=1877aa&style=flat-square) [![PRs welcome](https://badges.kiota.ch/static/v1?label=PRs&message=welcome&color=1e5913&style=flat-square)](CONTRIBUTING.md) [![Citation](https://badges.kiota.ch/static/v1?label=citation&message=cff&color=1877aa&style=flat-square)](CITATION.cff) [![REUSE compliance](https://api.reuse.software/badge/codeberg.org/b19/gcc)](https://api.reuse.software/info/codeberg.org/b19/gcc)

![Project status](https://badges.kiota.ch/static/v1?label=status&message=maintained&color=1d63ed&style=flat-square) [![Last commit on kiota.ch](https://badges.kiota.ch/gitea/last-commit/b19/gcc?gitea_url=https://kiota.ch&style=flat-square)](https://kiota.ch/b19/gcc)

[![Publish pipeline on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/published.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Vulnerability audit on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/audited.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Dependency freshness on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/check-outdated.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions) [![Analysis sweep on kiota.ch](https://kiota.ch/b19/gcc/badges/workflows/analyze.yaml/badge.svg?style=flat-square)](https://kiota.ch/b19/gcc/actions)

## Можливості

- Прапорці оптимізації для конкретних архітектур із зондуванням під час збирання
- Прозоре кешування компілятора (sccache / ccache)
- Інструментальний ланцюжок GCC з APT із вибором серії

### Успадковано від B19/Ubuntu

- Постійний APT-кеш між збираннями
- Керування службовими процесами зі спрямуванням журналів (b19-exec)
- Кешовані завантаження артефактів із перевіркою цілісності (b19-fetch)
- Вимірюване виконання команд зі звітуванням про збої (b19-run)
- Одноразова ініціалізація (bootstrap.d)
- Модульні хуки збирання (build.d)
- Автоматичне визначення кількості CPU (NUMPROCS)
- Декларативне керування залежностями (b19-deps)
- Підключована система запуску (entrypoint.d)
- Перемикачі функцій для всіх підсистем
- Вбудований моніторинг стану (healthcheck.d)
- Багатомовний вивід shell (b19-i18n)
- Відстеження лініжу образу
- Структуроване журналування з фільтром за рівнем (b19-log)
- Контейнер без прав root за замовчуванням
- Підтримка ізольованих від інтернету (air-gapped/offline) збирання й виконання
- Ін’єкція оверлеїв під час виконання
- Відтворюваний базовий образ (зафіксований за digest)
- Перевірка портів
- Уніфіковане сімейство ранерів життєвого циклу
- Автозавантаження Docker-секретів (secrets)
- Хуки інтерактивної shell (shell.d)
- Плавна обробка сигналів
- Шаблони конфігурації Jinja2 (minijinja-cli)
- Вбудований тестовий фреймворк (test.d)
- Попередньо встановлені службові інструменти
- Шляхи XDG Base Directory

Див. [FEATURES.md](FEATURES.md), щоб переглянути повний перелік.

## Встановлення

Якщо наведені вище реєстри недоступні, завантажте з джерела:

```sh
docker pull kiota.ch/b19/gcc-16:latest
docker pull kiota.ch/b19/gcc-15:latest
```

## Збирання

Виконайте `make` без аргументів для типової цілі; виконайте `make help`, щоб переглянути всі цілі.

Для локального циклу розробки `make dev-container` піднімає dev-container.

Точки входу конвеєра:

- `make analyze` — Run the heavy analysis sweep (mutation testing, benchmarks)
- `make audited` — Re-scan the pinned dependencies and published artifacts for new vulnerabilities
- `make check-outdated` — Report every pinned dependency that lags upstream
- `make ready-to-publish` — Run the pseudo-CI pipeline locally — build, test and scan, without publishing

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
