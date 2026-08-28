# SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>
#
# SPDX-License-Identifier: MIT

ARG B19_UBUNTU_BASE_IMAGE=registry.invalid/b19/ubuntu/resolute:latest

FROM ${B19_UBUNTU_BASE_IMAGE} AS final

ARG B19_COMPILE_CACHE=sccache
ARG B19_GCC_SERIES=16
ARG B19_UBUNTU_SERIES
ARG B19_COLOR
ARG B19_FETCH_DOCKER_CACHE
ARG B19_FETCH_LOCAL_CACHE
ARG B19_OFFGRID_MODE
ARG B19_VERBOSITY
ARG CCACHE_MAXSIZE="32G"
ARG LANG=""
ARG M6E_AI=N
ARG M6E_APT_CACHE_HOST=""
ARG M6E_APT_CACHE_PORT=""
ARG M6E_NAMESPACE
ARG M6E_NEAR_CACHE_HOST=""
ARG M6E_PROJECT
ARG M6E_VERSION
ARG TARGETARCH

ENV B19_BUILD_PROC_RATIO=0.6                            \
    B19_COMPILE_CACHE=${B19_COMPILE_CACHE}              \
    B19_COMPILE_CACHE_PATH=/compile-cache               \
    CCACHE_MAXSIZE="${CCACHE_MAXSIZE}"                  \
    PATH="/usr/local/lib/compile-cache:${PATH}"

WORKDIR ${B19_HOME}

USER 0

COPY --chown=${B19_UID}:${B19_GID} .container/base/ /

RUN --mount=type=bind,from=fetch,source=.,target=/fetch                                             \
    --mount=type=cache,target=${B19_DOWNLOAD_PATH},sharing=shared,uid=${B19_UID},gid=${B19_GID}     \
    --mount=type=cache,target=${B19_COMPILE_CACHE_PATH},sharing=shared                              \
    --mount=type=cache,id=apt-cache-${B19_UBUNTU_SERIES}-${TARGETARCH},target=/var/cache/apt,sharing=shared       \
    --mount=type=cache,id=apt-lists-${B19_UBUNTU_SERIES}-${TARGETARCH},target=/var/lib/apt,sharing=shared         \
    --mount=type=tmpfs,target=${B19_TEMP_PATH}                                                      \
    build-stage base

# hadolint ignore=DL3066 # B19_UID comes from the root
USER ${B19_UID}

COPY --chown=${B19_UID}:${B19_GID} .container/user/ /

RUN --mount=type=bind,from=fetch,source=.,target=/fetch                                             \
    --mount=type=cache,target=${B19_DOWNLOAD_PATH},sharing=shared,uid=${B19_UID},gid=${B19_GID}     \
    --mount=type=tmpfs,target=${B19_TEMP_PATH}                                                      \
    build-stage user

# ENTRYPOINT ["entrypoint.d"] is inherited
# HEALTHCHECK CMD ["healthcheck.d"] is inherited
# Don't use CMD ["sleep", "infinity"] here
