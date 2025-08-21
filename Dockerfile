FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get -y install \
    --no-install-recommends \
    curl \
    gnupg2 \
    ca-certificates \
    && update-ca-certificates \
    && curl  \
    https://mega.nz/linux/repo/Debian_12/amd64/megacmd_2.2.0-2.1_amd64.deb \
    --output /tmp/megacmd.deb \
    && apt install /tmp/megacmd.deb -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/megacmd.*

COPY "upload.sh" "/upload.sh"
RUN chmod +x upload.sh
ENTRYPOINT ["/upload.sh"]
