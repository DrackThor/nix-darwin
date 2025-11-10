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

    # scroll in the direction you swipe/scroll
    NSGlobalDomain."com.apple.swipescrolldirection" = false;

    # When to show the scrollbars.
    # Options are 'WhenScrolling', 'Automatic' and 'Always'.
    NSGlobalDomain.AppleShowScrollBars = "WhenScrolling";

    # right click on track-pad with two fingers
    NSGlobalDomain."com.apple.trackpad.enableSecondaryClick" = true;

    # tap to click
    NSGlobalDomain."com.apple.mouse.tapBehavior" = 1;

    # use F1, F2,.. as function keys
    NSGlobalDomain."com.apple.keyboard.fnState" = true;

    # show hidden files in finder
    NSGlobalDomain.AppleShowAllFiles = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
    finder.AppleShowAllFiles = true;
    finder.AppleShowAllExtensions = true;

    # Change the default search scope. Use "SCcf" to default to current folder.
    # The default is unset ("This Mac").
    finder.FXDefaultSearchScope = "SCcf";

    # Change the default finder view.
    # "icnv" = Icon view, "Nlsv" = List view, "clmv" = Column View, "Flwv" = Gallery View
    # The default is icnv.
    finder.FXPreferredViewStyle = "Nlsv";

    # Change the default folder shown in Finder windows.
    # "Other" corresponds to the value of NewWindowTargetPath.
    # The default is unset ("Recents").
    finder.NewWindowTarget = "Other";

    # Sets the URI to open when NewWindowTarget is "Other".
    # Spaces and similar characters must be escaped.
    # If the value is invalid, Finder will open your home directory.
    finder.NewWindowTargetPath = "file:///Users/drackthor/Downloads";

    # Show path breadcrumbs in finder windows.
    # The default is false.
    finder.ShowPathbar = true;

    # Resize columns to fit filenames.
    # The default is false.
    # TODO: currently in dev
    # finder._FXEnableColumnAutoSizing = true;

    # Whether to show the full POSIX filepath in the window title.
    # The default is false.
    finder._FXShowPosixPathInTitle = true;

    # Keep folders on top when sorting by name.
    # The default is false.
    finder._FXSortFoldersFirst = true;

    # Allow users to login to the machine as guests using the Guest account.
    # Default is true.
    loginwindow.GuestEnabled = false;

    loginwindow.LoginwindowText = "Gemma FULLSTACKS!";
  };
}
