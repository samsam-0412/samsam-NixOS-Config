{ pkgs,... }:
{
  home.packages = with pkgs; [
    gnumake
    curl
    sqlite
  ];
}
