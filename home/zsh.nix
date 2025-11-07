{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    history = {
      append = true;
      share = true;
      expireDuplicatesFirst = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      save = 10000;
      size = 10000;
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./p10k;
        file = "zsh-p10k.zsh";
      }
      {
        name = "fzf-tab";
        src = pkgs.zsh-fzf-tab;
        file = "share/fzf-tab/fzf-tab.plugin.zsh";
      }
    ];

    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
        "kubectl"
        "helm"
        "docker"
        "terraform"
      ];
    };

    sessionVariables = {
      LANG = "en_US.UTF-8";
      EDITOR = "nvim";
      # KUBECONFIG see home/files.nix
      KUBECONFIG = "/Users/drackthor/.kube/config-local";
      # SSH Bitwarden Agent
      SSH_AUTH_SOCK = "/Users/drackthor/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock";
    };
    autocd = true;
    # if zsh startup time is slow, try this to debug
    # zprof.enable = true;
    initContent = ''
      # kubeconfig
      /Users/drackthor/.kube/configs/refresh.sh

      export PYENV_ROOT="$HOME/.pyenv"
      [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
      eval "$(pyenv init - zsh)"

      # preview cmd library with "option" + "l"
      function cmdlib() {
        local selected_command
        selected_command=$(cat ~/.library | perl -0 -pe 's/\n+(?!#)/\n\0/g' | bat --plain --language bash --color always |  fzf --read0 --ansi --highlight-line --multi --height=20 --border --prompt="Command: ")
        if [[ -n $selected_command ]]; then
            zle reset-prompt
            BUFFER="$selected_command"
            # zle accept-line # execute instantly
        fi
      }

      # bind library search to ctrl-t
      zle -N cmdlib
      bindkey '^t' cmdlib

      # update fzf keybindings
      # bindkey '^H' fzf-history-widget
      bindkey '^f' fzf-file-widget
      bindkey '^e' fzf-cd-widget
    '';
    shellAliases = {
      ls = "eza --icons --classify --group-directories-first";
      ll = "ls -lh";
      l = "ls -lah";
      la = "ls -lah -a";
      dir = "ls -lah -a";
      code = "pycharm";
    };
  };
}
