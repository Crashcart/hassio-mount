ARG BUILD_FROM=hassioaddons/base:8.0.6
# hadolint ignore=DL3006
FROM ${BUILD_FROM}


# Setup base
RUN apk add --no-cache \
    coreutils=8.32-r0 \
    cifs-tools

# Build arguments
ARG BUILD_ARC
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Copy root filesystem
COPY rootfs /


# Labels
LABEL \
    io.hass.name="Example" \
    io.hass.description="Example add-on by Home Assistant Community Add-ons" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Franck Nijhof <frenck@addons.community>" \
    org.opencontainers.image.title="Example" \
    org.opencontainers.image.description="Example add-on by Home Assistant Community Add-ons" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Franck Nijhof <frenck@addons.community>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/hassio-addons/addon-example" \
    org.opencontainers.image.documentation="https://github.com/hassio-addons/addon-example/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
