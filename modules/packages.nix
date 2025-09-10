{ pkgs, ... }: {
  home.packages = with pkgs; [
    # arc-browser
    bartender
    bat
    # boundary
    bruno
    cnquery
    cnspec
    direnv
    discord
    dive
    docker-client
    drawio
    eza
    fd
    fzf
    fzf-zsh
    git
    go
    graphviz
    inetutils
    iterm2
    jq
    k9s
    kubectl
    kubernetes-helm
    mani
    mas
    nerd-fonts.meslo-lg
    nixd
    nix-direnv
    nix-index
    nixfmt-rfc-style
    nmap
    obsidian
    oh-my-zsh
    openvpn
    pre-commit
    pyenv
    spotify
    terraform
    tilt
    tree
    # unifi
    unixtools.watch
    wget
    yq-go
    zoom-us
    zotero
    zsh-autosuggestions
    zsh-fzf-tab
    zsh-powerlevel10k
    zsh-syntax-highlighting
  ];
}
