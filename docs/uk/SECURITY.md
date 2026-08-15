<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

<!-- textlint-disable terminology -->
[English](../../SECURITY.md) · [Español](../es/SECURITY.md)

# Політика безпеки

## Як повідомити про вразливість

**Не повідомляйте про вразливості безпеки через публічні задачі, обговорення або запити на зміну.**

Зробіть це, написавши на **<damian.buho@proton.me>**.

Додайте стільки з наведеного, скільки зможете — це допоможе нам швидше розсортувати та вирішити повідомлення:

- Тип проблеми (наприклад переповнення буфера, ін'єкція SQL, cross-site scripting)
- Версію або версії, яких це стосується
- Вплив проблеми, зокрема як зловмисник може її використати
- Покрокові інструкції для відтворення проблеми
- Розташування відповідного вихідного коду (тег, гілка, коміт або пряме URL)
- Повні шляхи файлів вихідного коду, пов'язаних із проблемою
- Будь-яку конфігурацію, необхідну для відтворення проблеми
- Відповідні файли журналів, якщо можливо
- Доказ концепції або код експлойту, якщо можливо

Ми прагнемо підтвердити отримання повідомлення протягом 30 днів і
скоординувати розкриття, щойно буде готове виправлення.

## Шифрування повідомлення

Якщо ви хочете надіслати нам зашифроване повідомлення, виконайте ці кроки.

Імпортуйте наш відкритий ключ:

```sh
gpg --keyserver keys.openpgp.org --recv-keys B64C122EE16C3746
```

Перевірте, що відбиток збігається, перш ніж довіритися йому:

```sh
gpg --fingerprint B64C122EE16C3746
```

Вивід має показати:

```text
6F19 7084 3C9E 8406 AD70  0467 B64C 122E E16C 3746
```

Зашифруйте своє повідомлення для нас:

```sh
gpg --encrypt --armor --recipient B64C122EE16C3746 message.txt
```

## Винагорода за вразливості

B19/GCC наразі не має програми винагород за вразливості. Проте ми цінуємо
відповідальні повідомлення — див. канал контакту вище.

## Визнані вразливості

Наведені знахідки переглянуто та навмисно придушено (виправлення залежить від
наступного випуску upstream-проєкту, або повідомлення не стосується цього проєкту):

| ID | Причина |
| --- | --- |
| CVE-2026-64531 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2025-40190 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2025-54518 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31589 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31607 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31608 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31705 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31718 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43490 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43493 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43501 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43502 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-45988 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46039 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46043 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46119 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46135 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46185 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46195 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46242 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46273 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46274 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46275 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46277 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46304 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46311 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46319 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46320 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46331 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52908 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52909 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52910 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52911 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52914 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52924 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52955 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52958 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52989 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52993 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53002 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53006 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53010 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53031 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53033 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53036 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53040 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53043 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53046 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53050 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53054 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53055 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53068 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53071 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53072 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53081 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53085 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53086 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53090 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53095 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53130 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53145 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53148 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53151 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53153 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53159 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53170 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53171 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53172 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53173 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53175 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53176 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53178 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53182 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53183 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53185 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53186 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53192 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53193 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53196 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53198 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53212 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53215 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53224 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53235 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53239 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53240 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53250 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53254 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53256 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53259 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53260 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53262 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53264 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53266 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53269 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53270 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53275 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53276 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53277 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53359 | unfixable kernel headers in linux-libc-dev (no fix published) |

*Згенеровано з projectfile ([дізнатися як](https://projectfile.org/how-to/security))*
<!-- textlint-enable -->
