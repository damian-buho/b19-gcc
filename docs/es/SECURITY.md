<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
SPDX-License-Identifier: MIT
pf-cli-managed: yes
-->

<!-- textlint-disable terminology,common-misspellings -->
[English](../../SECURITY.md) · [Українська](../uk/SECURITY.md)

# Política de seguridad

## Cómo informar de una vulnerabilidad

**No informes de vulnerabilidades de seguridad a través de incidencias, debates o solicitudes de cambio públicos.**

Hazlo escribiendo a **<damian.buho@proton.me>**.

Incluye toda la información que puedas de la siguiente lista; nos ayuda a clasificar y resolver el informe más rápido:

- El tipo de problema (p. ej. desbordamiento de búfer, inyección SQL, cross-site scripting)
- La versión o versiones afectadas
- El impacto del problema, incluido cómo podría explotarlo un atacante
- Instrucciones paso a paso para reproducir el problema
- La ubicación del código fuente afectado (etiqueta, rama, commit o URL directa)
- Las rutas completas de los archivos fuente relacionados con el problema
- Cualquier configuración necesaria para reproducir el problema
- Archivos de registro relevantes, si es posible
- Código de prueba de concepto o de explotación, si es posible

Procuramos acusar recibo de los informes en un plazo de 30 días y coordinar
la divulgación en cuanto exista una corrección.

## Cifrar un informe

Si quieres enviarnos un informe cifrado, sigue estos pasos.

Importa nuestra clave pública:

```sh
gpg --keyserver keys.openpgp.org --recv-keys B64C122EE16C3746
```

Verifica que la huella coincide antes de confiar en ella:

```sh
gpg --fingerprint B64C122EE16C3746
```

La salida debe mostrar:

```text
6F19 7084 3C9E 8406 AD70  0467 B64C 122E E16C 3746
```

Cifra tu mensaje para nosotros:

```sh
gpg --encrypt --armor --recipient B64C122EE16C3746 message.txt
```

## Programa de recompensas

B19/GCC no ofrece actualmente un programa de recompensas. Aun así
agradecemos los informes divulgados de forma responsable — consulta el canal de
contacto anterior.

## Vulnerabilidades reconocidas

Los siguientes hallazgos fueron revisados y se suprimen de forma intencionada
(la corrección depende de una versión posterior del proyecto base o el aviso no
aplica a este proyecto):

| ID | Motivo |
| --- | --- |
| CVE-2026-80725 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80721 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80718 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80716 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80714 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80710 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80702 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80700 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80693 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80692 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80691 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80683 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80681 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80671 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80668 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80665 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80644 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80637 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80634 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80631 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74535 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74534 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74529 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74510 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74506 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74470 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74465 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74446 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74438 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74427 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74411 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74394 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74390 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74378 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74363 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74341 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74334 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74317 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74268 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72478 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72472 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72462 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72461 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72390 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72372 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72338 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72331 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72288 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72287 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72195 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72151 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72135 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72124 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72123 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72111 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72110 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72024 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72003 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68470 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68451 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68446 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68442 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68399 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68393 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68380 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68329 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68323 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68284 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68257 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68236 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68204 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68201 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68199 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68198 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68196 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68189 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68162 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68147 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68121 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68117 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68098 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68085 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64601 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64597 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64567 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64564 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64562 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64558 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64557 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64554 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64548 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64543 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64535 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64531 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64490 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64467 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64442 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64441 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64440 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64432 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64423 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64396 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64393 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64390 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64387 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64386 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64385 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64383 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64380 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64367 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64361 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64300 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64276 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64269 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64266 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64260 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64191 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-64188 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-63823 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-63815 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-63809 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-63801 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53399 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53398 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53388 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53362 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53359 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53356 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53277 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53276 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53275 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53270 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53269 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53266 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53264 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53262 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53260 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53259 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53256 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53254 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53250 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53240 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53239 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53235 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53224 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53215 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53212 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53198 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53196 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53193 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53192 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53186 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53185 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53183 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53182 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53178 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53176 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53175 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53173 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53172 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53171 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53170 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53159 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53153 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53151 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53148 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53145 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53130 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53095 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53090 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53086 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53085 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53081 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53072 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53071 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53068 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53055 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53054 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53050 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53046 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53043 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53040 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53036 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53033 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53031 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53010 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53006 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-53002 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52993 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52989 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52958 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52955 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52924 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52914 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52911 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52910 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52909 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-52908 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46331 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46320 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46319 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46311 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46304 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46277 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46275 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46274 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46273 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46242 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46195 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46185 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46135 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46119 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46043 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-46039 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-45988 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43502 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43501 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43493 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-43490 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31718 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31705 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31608 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31607 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-31589 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2025-54518 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2025-40190 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2025-10263 | unfixable kernel headers in linux-libc-dev (no fix published) |

<!-- textlint-enable -->
