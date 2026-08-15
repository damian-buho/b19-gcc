<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

# Caché de compilador transparente (sccache / ccache)

- Scripts envolventes del compilador en `/usr/local/lib/compile-cache/` interceptan de forma transparente las llamadas a `gcc`, `g++`, `cc` y `c++` por precedencia de PATH; no hay que cambiar ninguna herramienta de compilación.
- Dos backends de caché seleccionables en tiempo de compilación: `sccache` (por defecto) para caché distribuida y `ccache` para caché local.
- Los backends de caché remota se configuran mediante las variables de entorno nativas de las propias herramientas (`SCCACHE_REDIS_ENDPOINT`, `CCACHE_REMOTE_STORAGE`, `SCCACHE_BUCKET`, etc.), pasadas textualmente, sin transformación de esquema a nivel b19.
- Degradación elegante y automática de sccache a ccache cuando no hay ningún backend remoto configurado, lo que evita carreras entre demonios concurrentes.
- La caché puede desactivarse por completo con `B19_COMPILE_CACHE=off`.
- Las estadísticas de aciertos y fallos de caché se registran en el log al final de cada compilación.
