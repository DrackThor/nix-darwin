{ ... }:
{

  environment.variables = {
    EDITOR = "vim";
    LANG = "en_US.UTF-8";
    # SSH Bitwarden Agent
    SSH_AUTH_SOCK = "/Users/drackthor/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock";
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

 system.defaults = {
    dock.autohide = true;
    dock.mru-spaces = false; # i love this, macos will not rearrange the desktops
    dock.magnification = true;
    dock.persistent-apps = [
      "/Applications/Ghostty.app"
      "/Applications/Microsoft Outlook.app"
      "/Applications/Microsoft Teams.app"
      "/Applications/1Password.app"
      "/Applications/Bitwarden.app"
      "/Applications/Spotify.app"
      "/Applications/Slack.app"
      "/Applications/WhatsApp.app"
      "/Applications/Brave Browser.app"
      "/Applications/Obsidian.app"
      "/Applications/Zotero.app"
      "/Users/drackthor/Applications/PyCharm.app"
      "/Applications/Google Chrome.app"
      # "/Applications/ChatGPT.app"
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
