FROM alpine:3.21

LABEL org.opencontainers.image.source="https://github.com/eli-prater-usps/ContainerRegistryExample"
LABEL org.opencontainers.image.description="Barebones GHCR push example"
LABEL org.opencontainers.image.licenses="MIT"

CMD ["echo", "Hello from GHCR!"]
