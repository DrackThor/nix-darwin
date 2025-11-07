{ ... }:
{
  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    brews = [
      "ansible"
      "azure-cli"
      "azure/kubelogin/kubelogin"
      "bat"
      "direnv"
      "dive"
      "docker-credential-helper"
      "eza"
      "fd"
      "ffmpeg"
      "fzf"
      "git"
      "go"
      "gomplate"
      "graphviz"
      "helm"
      "inetutils"
      "jq"
      "k9s"
      "kubernetes-cli"
      "mani"
      "mas"
      "nmap"
      "openvpn"
      "pandoc"
      "podman"
      "pre-commit"
      "pyenv"
      "python@3.12"
      "ruff"
      "snyk-cli"
      "terraform"
      "tilt"
      "tree"
      "uv"
      "watch"
      "wget"
      "yq"
    ];

    casks = [
      "1password"
      "airbuddy"
      "balenaetcher"
      "bartender"
      "brave-browser"
      "bruno"
      "calibre"
      "chatgpt"
      "citrix-workspace"
      "cleanshot"
      "daisydisk"
      "discord"
      "drawio"
      "elgato-stream-deck"
      "ghostty"
      "google-chrome"
      "istat-menus"
      "jetbrains-toolbox"
      "mactex"
      "microsoft-auto-update"
      "microsoft-office"
      "microsoft-teams"
      "obs"
      "obsidian"
      "podman-desktop"
      "raycast"
      "screen-studio"
      "slack"
      "spotify"
      "steam"
      "textsniper"
      "vlc"
      "webex"
      "whatsapp"
      "wifiman"
      "zoom"
      "zotero"
    ];
    masApps = {
      # "Parallels Desktop" = 1085114709;
      "PDF Gear" = 6469021132;
      "TeleprompterPAD" = 1507218595;
      "Bitwarden" = 1352778147;
    };
  };
}
