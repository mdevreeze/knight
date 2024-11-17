FROM quay.io/fedora/fedora-coreos:41
RUN ostree remote add tailscale https://pkgs.tailscale.com/stable/fedora/tailscale.repo
RUN rpm-ostree install distrobox tailscale fastfetch
RUN ostree container commit