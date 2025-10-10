{ pkgs, inputs, ... }:
{

  environment.variables = {
    EDITOR = "vim";
    LANG = "en_US.UTF-8";
  };

  # allow packages which are not open source
  nixpkgs.config.allowUnfree = true;

  # use Determinate Systems nix
  nix.enable = false;

  networking.computerName = "drackbook.local";
  networking.hostName = "drackbook";
  # networking.localHostName = "drackbook.local";
  networking.knownNetworkServices = [
    "USB 10/100/1000 LAN"
    "USB 10/100/1000 LAN 2"
    "USB 10/100/1000 LAN 3"
    "USB 10/100/1000 LAN 4"
    "Wi-Fi"
    "Thunderbolt Bridge"
    "iPhone USB USB"
    "FullStackS Labor RRZ Graz"
  ];
  networking.dns = [
    "8.8.8.8"
    "1.1.1.1"
  ];
  users.users.drackthor.home = "/Users/drackthor";
  system.primaryUser = "drackthor";

  # Auto upgrade nix package and the daemon service.
  # services.nix-daemon.enable = true; # outdated
  # nix.package = pkgs.nix;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  programs.zsh = {
    enable = true;
  };

  # Set Git commit hash for darwin-version.
  system.configurationRevision = null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  # nix.configureBuildUsers = true; # outdated

  # enables touch id authentication in shell
  security.pam.services.sudo_local.touchIdAuth = true;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";

  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    # Cisco Anyconnect
    brews = [
      "azure-cli"
      "bat"
      "direnv"
      "dive"
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
      # "ansible"
      # "pandoc"
    ];

    casks = [
      "airbuddy"
      "arc"
      "bartender"
      "bruno"
      "calibre"
      "citrix-workspace"
      "cleanshot"
      "daisydisk"
      "discord"
      "docker-desktop"
      "drawio"
      "elgato-stream-deck"
      "istat-menus"
      "iterm2"
      "microsoft-auto-update"
      "microsoft-office"
      "microsoft-teams"
      "obs"
      "obsidian"
      "raycast"
      "screen-studio"
      "spotify"
      "textsniper"
      "vlc"
      "webex"
      "wifiman"
      "zoom"
      "zotero"
      # "1password"
      # "basictex"
      # "fixkey"
      # "google-chrome"
      # "jetbrains-toolbox"
      # "rambox"
      # "steam"
      # "vagrant"
    ];
    masApps = {
      # "Parallels Desktop" = 1085114709;
      "PDF Gear" = 6469021132;
      "TeleprompterPAD" = 1507218595;
      "Bitwarden" = 1352778147;
    };
  };

  system.defaults = {
    dock.autohide = true;
    dock.mru-spaces = false; # i love this, macos will not rearrange the desktops
    dock.magnification = true;
    dock.persistent-apps = [
      "${pkgs.iterm2}/Applications/iTerm2.app"
      "/Applications/Microsoft Outlook.app"
      "/Applications/Microsoft Teams.app"
      "/Applications/1Password.app"
      "/Applications/Bitwarden.app"
      "/Applications/Spotify.app"
      "/Applications/Rambox.app"
      "/Applications/Arc.app"
      "/Applications/Obsidian.app"
      "/Applications/Zotero.app"
      "/Users/drackthor/Applications/PyCharm.app"
      "/Applications/Google Chrome.app"
      "/Applications/ChatGPT.app"
    ];
    dock.persistent-others = [
      # sadly need to use CustomUserPreferences at the moment because you can not configure fan etc. here
      #"/Users/drackthor/Downloads"
      #"/Applications"
    ];
    CustomUserPreferences = {

    };

    loginwindow.LoginwindowText = "FullStackS Oida!";
    finder.AppleShowAllExtensions = true;
    # finder.FXPreferredViewStyle = "clmv"; # does not work
  };
}
