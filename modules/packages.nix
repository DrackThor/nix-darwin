{ pkgs,... }:
{
    home.packages = with pkgs; [
        git
        yq-go
        jq
        direnv
        nix-direnv
        k9s
        eza
        fzf
        fzf-zsh
        zsh-fzf-tab
        oh-my-zsh
        zsh-powerlevel10k
        go
        kubectl
        kubernetes-helm
        wget
        unixtools.watch
        tilt
        terraform
        pre-commit
        inetutils
        zsh-autosuggestions
        zsh-syntax-highlighting
        snyk
        docker-client
        tree
        raycast
        discord
        mas
        iterm2
        nmap
        nix-index
        spotify
        bartender
        drawio
        zoom-us
        obsidian
        arc-browser
        openvpn
        unifi
        boundary
        python313
        pyenv
        mani
        bat
        fd
        nerd-fonts.meslo-lg
    ];
}
