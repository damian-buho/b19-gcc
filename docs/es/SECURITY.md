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

B19 / GCC no ofrece actualmente un programa de recompensas. Aun así
agradecemos los informes divulgados de forma responsable — consulta el canal de
contacto anterior.

## Vulnerabilidades reconocidas

Los siguientes hallazgos fueron revisados y se suprimen de forma intencionada
(la corrección depende de una versión posterior del proyecto base o el aviso no
aplica a este proyecto):

| ID | Motivo |
| --- | --- |
| CVE-2026-100074 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98863 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98862 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98861 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98858 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98846 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98837 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98836 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98829 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98827 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98824 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98823 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98813 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98805 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98804 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98803 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98800 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98799 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98797 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98794 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98792 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98788 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98776 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98763 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98754 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98752 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98742 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98741 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98739 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98738 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98737 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98735 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98734 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98733 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98730 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98725 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98719 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98712 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98709 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98708 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98707 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98706 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98704 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98702 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98701 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98699 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98689 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98652 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98651 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98649 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98642 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98641 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98635 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98634 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98632 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98626 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98625 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98624 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98621 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98606 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98601 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98599 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98591 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98590 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98589 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98588 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98586 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98580 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98573 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98572 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98571 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98570 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98568 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98567 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98561 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98548 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98532 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98526 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98524 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98515 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98503 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98491 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98490 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98487 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98479 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98464 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98462 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98459 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98457 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98456 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98454 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98446 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98442 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98441 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98440 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98439 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98432 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98420 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98376 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98365 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98364 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98359 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98341 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98333 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98332 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98283 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98260 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98229 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98222 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98171 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98167 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98164 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98134 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98115 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98107 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98104 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98085 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98084 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98056 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98041 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98034 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98033 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98019 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-98017 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97988 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97960 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97906 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97615 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97603 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97581 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97565 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97564 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97562 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97557 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97555 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97530 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97513 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97497 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97493 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97442 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97429 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-97415 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93828 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93824 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93817 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93806 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93796 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93792 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93790 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93787 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93282 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93221 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93210 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93199 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93196 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93192 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93176 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93175 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93154 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93148 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93144 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93125 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-93105 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-92512 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-92511 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-92510 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-92509 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-92507 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-92499 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90417 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90398 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90392 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90380 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90375 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90343 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90324 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90321 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90320 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90317 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90313 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90256 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90237 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90227 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90217 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90205 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90204 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90200 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90199 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90169 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90167 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90162 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90161 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90155 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90152 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90150 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90149 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90148 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90111 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90108 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90104 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90093 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90092 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90057 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90048 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90037 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-90003 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89922 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89913 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89907 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89837 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89810 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89805 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89803 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89788 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89708 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89707 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89685 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89680 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89676 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89675 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89659 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89652 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89638 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89637 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89633 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89631 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89622 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89580 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89565 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89564 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89550 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89544 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89537 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89531 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89530 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89528 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89526 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89520 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89492 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89481 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-89448 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80991 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80982 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80980 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80937 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80905 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80891 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80864 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80852 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80841 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80837 | unfixable kernel headers in linux-libc-dev (no fix published) |
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
| CVE-2026-80554 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-80551 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74752 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74744 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74724 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74723 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74715 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74714 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74700 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74684 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74677 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74578 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74565 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74537 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74535 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74534 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74533 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74530 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74529 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74522 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74510 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74506 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74470 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74465 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74454 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-74446 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72497 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-72198 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68451 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2026-68103 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2025-40190 | unfixable kernel headers in linux-libc-dev (no fix published) |
| CVE-2022-50240 | unfixable kernel headers in linux-libc-dev (no fix published) |

<!-- textlint-enable -->
