FROM quay.io/fedora/fedora-coreos:41.20241116.20.0
RUN ostree remote add tailscale https://pkgs.tailscale.com/stable/fedora/tailscale.repo
RUN rpm-ostree install distrobox tailscale fastfetch podman-machine
RUN ostree container commit