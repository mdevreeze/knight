FROM quay.io/fedora/fedora-coreos:41.20241116.20.0
RUN ostree remote add tailscale https://pkgs.tailscale.com/stable/fedora/tailscale.repo
RUN rpm-ostree install tailscale fastfetch distrobox \
    podman-compose docker-compose \
    cockpit-system cockpit-ostree cockpit-podman 

# enable lingering processor of the core user
RUN mkdir -p /var/lib/systemd/linger/
RUN touch /var/lib/systemd/linger/core

# commit
RUN ostree container commit