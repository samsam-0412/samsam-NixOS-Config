{ pkgs, ... }:
{
  home.packages = with pkgs; [
    subfinder
    tree
    btop
    fzf
    tldr
  ];
}