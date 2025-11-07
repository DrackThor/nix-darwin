{
  programs.git = {
    enable = true;
    userName = "Daniel Drack";
    userEmail = "daniel.drack@fullstacks.eu";
    aliases = {
      lol = "log --graph --decorate --pretty=oneline --abbrev-commit --all";

      # Get the current branch name (not so useful in itself, but used in
      # other aliases)
      branch-name = "!git rev-parse --abbrev-ref HEAD";

      # Push the current branch to the remote "origin", and set it to track
      # the upstream branch
      publish = "!git push -u origin $(git branch-name)";

      # Delete the remote version of the current branch
      unpublish = "!git push origin :$(git branch-name)";

      # Switch branches via fzf
      fzf = "!git checkout $(git branch --color=always --all --sort=-committerdate | grep -v HEAD | fzf --height 50% --ansi --no-multi --preview-window right:65%  --preview 'git log -n 50 --color=always --date=short --pretty=\"format:%C(auto)%cd %h%d %s\" $(sed \"s/.* //\" <<< {})' | sed \"s/.* //\")";
    };

    ignores = [
      "*~"
      ".DS_Store"
    ];

    extraConfig = {
      github.user = "DrackThor";

      init = {
        defaultBranch = "main";
      };

      core = {
        editor = "nvim";
        ignorecase = "false";
      };

      pull = {
        rebase = false;
      };

      push = {
        autoSetupRemote = true;
      };

      diff = {
        external = "difft";
        tool = "nvimdiff";
      };

      merge = {
        tool = "nvimdiff";
      };

      difftool = {
        prompt = true;
      };

      "difftool \"nvimdiff\"" = {
        cmd = "nvim -d \"$LOCAL\" \"$REMOTE\"";
      };
    };
  };
}
