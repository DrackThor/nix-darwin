{
  inputs,
  ...
}:
{
  home.stateVersion = "23.11";
  fonts.fontconfig.enable = true;

  imports = [
    ./modules/packages.nix

    inputs.nixvim.homeModules.nixvim
    ./home/nvim.nix

    ./home/kubeconfig.nix
    ./home/library.nix
    ./home/ghostty.nix
    ./home/git.nix
    ./home/fzf.nix
    ./home/direnv.nix
    ./home/zsh.nix
  ];

}
