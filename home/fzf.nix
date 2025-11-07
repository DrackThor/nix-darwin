{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    fileWidgetCommand = "fd --type f . /Users/drackthor/code";
    fileWidgetOptions = [ "--preview 'bat --style=numbers --color=always --line-range :500 {}'" ];
    changeDirWidgetCommand = "fd --type d . /Users/drackthor/code";
    changeDirWidgetOptions = [ "--preview 'tree -C {} | head -200'" ];
  };
}
